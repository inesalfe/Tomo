#include "aux_func.h"
#include "csr.h"
#include <iostream>
#include <iomanip>
#include <math.h>
#include <omp.h>
#include <algorithm>
#include <random>
#include <fstream>
#include <sstream>
using namespace std;

// ./bin/SRKABWOR_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 1 15000 5000 1 2

int main (int argc, char *argv[]) {

	if(argc != 8 && argc != 9) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/SRKABWOR_box_proj_csr_stop.exe <data_set> <n_runs> <M> <N> <threads> <block_size> <bucket_size>'" << endl;
		exit(1);
	}

	double* b;
	double* x;
	double* x_sol;
	int NNZ;
	int* row_idx;
	int* cols;
	double* values;

	int n_runs = atoi(argv[2]);

	int M = atoi(argv[3]);
	int N = atoi(argv[4]);
	int threads = atoi(argv[5]);
	int block_size = atoi(argv[6]);
	int bucket_size = atoi(argv[7]);

	if (block_size < 2) {
		cout << "Invalid parameter: Block size must be larger than 1." << endl;
		exit(1);
	}
	
	string matrix_type = argv[1];
	string filename_row_idx;
	string filename_cols;
	string filename_values;
	string filename_b;
	string filename_x;
	if (argc == 8 && matrix_type.compare("ct") == 0) {
		filename_row_idx = "../data/ct/row_idx_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_cols = "../data/ct/cols_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_values = "../data/ct/values_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_b = "../data/ct/b_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x = "../data/ct/x_" + to_string(M) + "_" + to_string(N) + ".bin";
	}
	else if (argc == 9 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[8]);
		filename_row_idx = "../data/ct_gaussian/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_gaussian/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_gaussian/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_gaussian/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_gaussian/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else if (argc == 9 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[8]);
		filename_row_idx = "../data/ct_poisson/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_poisson/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_poisson/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_poisson/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_poisson/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/SRKABWOR_box_proj_csr_stop.exe <data_set> <n_runs> <M> <N> <threads> <block_size> <bucket_size>'" << endl;
		exit(1);
	}

	double start_total = omp_get_wtime();

	importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values, row_idx, cols, values);
	importbVectorBIN(M, filename_b, b);
	importxVectorBIN(N, filename_x, x);

	vector<double> sqrNorm_line(M);
	for (int i = 0; i < M; i++) {
		sqrNorm_line[i] = sqrNormRow(i, row_idx, cols, values);
		if (sqrNorm_line[i] == 0) {
			cout << "Invalid input: matrix with zero norm line" << endl;
			delete[] row_idx;
			delete[] cols;
			delete[] values;
			delete[] b;
			delete[] x;
			exit(1);
		}
	}

	vector<int> samp_line(M);
	for (int i = 0; i < M; i++)
		samp_line[i] = i;
	mt19937 rng(1);
	
	double* x_k = new double[N];
	double* x_down = new double[N];
	double* x_up = new double[N];
	double* x_prev_down = new double[N];
	double* x_prev_up = new double[N];
	double* x_k_thread_up = new double[N];
	double* x_k_thread_down = new double[N];
	x_sol = new double[N];
	for (int i = 0; i < N; i++) {
		x_sol[i] = 0;
	}
	double scale;
	int line;
	long long it;

	double start; 
	double stop;
	double duration = 0;

	vector<double> store_diff;
	double curr_diff;

	int thread;
	int line_down;
	int line_up;
	int it_per_thread_temp = M%it_per_thread;

	long long block_begin;

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
			x_down[i] = 0;
			x_up[i] = 0;
		}
		store_diff.clear();
		solution_found = false;
		it = 0;
		block_begin = 0;
		shuffle(begin(samp_line), end(samp_line), rng);
		start = omp_get_wtime();
		while(it < max_it_stop) {
			it++;
			for (int i = 0; i < N; i++) {
				x_prev_up[i] = x_up[i];
				x_prev_down[i] = x_down[i];
			}
			for (int i = 0; i < threads; i++) {
				// DOWN
				line = samp_line[block_begin%M];
				scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_prev_down))/sqrNorm_line[line];
				for (int j = 0; j < N; j++) {
					x_k_thread_down[j] = x_prev_down[j];
				}
				scaleNewVecLine(line, row_idx, cols, values, scale, x_prev_down, x_k_thread_down);
				for (int k = 1; k < block_size-1; k++) {
					line = samp_line[(block_begin+k)%M];
					scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_k_thread_down))/sqrNorm_line[line];
					scaleVecLine(line, row_idx, cols, values, scale, x_k_thread_down);
				}
				line = samp_line[(block_begin+block_size-1)%M];
				scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_k_thread_down))/sqrNorm_line[line];
				scaleVecLine(line, row_idx, cols, values, scale, x_k_thread_down);
				for (int j = 0; j < N; j++) {
					x_down[j] += (x_k_thread_down[j]-x_prev_down[j])/threads;
				}
				// UP
				line = samp_line[M-block_begin%M-1];
				scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_prev_up))/sqrNorm_line[line];
				for (int j = 0; j < N; j++) {
					x_k_thread_up[j] = x_prev_up[j];
				}
				scaleNewVecLine(line, row_idx, cols, values, scale, x_prev_up, x_k_thread_up);
				for (int k = 1; k < block_size-1; k++) {
					line = samp_line[M-(block_begin+k)%M-1];
					scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_k_thread_up))/sqrNorm_line[line];
					scaleVecLine(line, row_idx, cols, values, scale, x_k_thread_up);
				}
				line = samp_line[M-(block_begin+block_size-1)%M-1];
				scale = (b[line]-dotProductCSR(line, row_idx, cols, values, x_k_thread_up))/sqrNorm_line[line];
				scaleVecLine(line, row_idx, cols, values, scale, x_k_thread_up);
				for (int j = 0; j < N; j++) {
					x_up[j] += (x_k_thread_up[j]-x_prev_up[j])/threads;
				}
				// EXTRA
				block_begin += block_size;
			}
			for (int i = 0; i < N; i++) {
				if (x_up[i] < 0)
					x_up[i] = 0;
				else if (x_up[i] > 1)
					x_up[i] = 1;
				if (x_down[i] < 0)
					x_down[i] = 0;
				else if (x_down[i] > 1)
					x_down[i] = 1;
			}
		}
		stop = omp_get_wtime();
		avg_it += it-bucket_size;
		duration += stop - start;
		for (int i = 0; i < N; i++) {
			x_sol[i] += x_k[i];
		}
	}
	cout << M << " " << N << " " << duration << " " << avg_it/n_runs << " ";

	for (int i = 0; i < N; i++) {
		x_sol[i] /= n_runs;
	}

	double* res = new double[M];
	for (int i = 0; i < M; i++)
		res[i] = b[i] - dotProductCSR(i, row_idx, cols, values, x_sol);
	cout << sqrNorm(res, M) << " ";
	delete[] res;

	double stop_total = omp_get_wtime();
	double duration_total = stop_total - start_total;

	cout << sqrNormDiff(x_sol, x, N) << " " << duration_total << endl;

	string filename_sol = "outputs/tomo_stop/" + matrix_type + "/RKA_sol_" + to_string(M) + "_" + to_string(N) + "_" + to_string(it_per_thread) + "_" + to_string(block_size);

	if (argc == 8) {
		int seed = atoi(argv[7]);
		filename_sol += "_" + to_string(seed) + ".txt";
	}
	else {
		filename_sol += ".txt";
	}

	ofstream file_sol(filename_sol);
	if (file_sol.is_open()) {
		for (int i = 0; i < N; i++) {
			file_sol << x_sol[i] << endl;
		}
		file_sol.close();
	}
	else {
		cout << "ERROR: Invalid input file for solution output file." << endl;
		exit(1);
	}

	delete[] x_k;
	delete[] x_down;
	delete[] x_up;
	delete[] x_prev_down;
	delete[] x_prev_up;
	delete[] x_k_thread_up;
	delete[] x_k_thread_down;

	delete[] row_idx;
	delete[] cols;
	delete[] values;
	delete[] b;
	delete[] x;
	delete[] x_sol;

	return 0;
}