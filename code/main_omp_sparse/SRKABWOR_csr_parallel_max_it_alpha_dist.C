#include "aux_func.h"
#include "csr.h"
#include <iostream>
#include <math.h>
#include <omp.h>
#include <algorithm>
#include <random>
using namespace std;

#define BLOCK_LOW(id, p, np) ((id) * (np) / (p))
#define BLOCK_HIGH(id, p, np) (BLOCK_LOW((id) + 1, p, np) - 1)
#define BLOCK_SIZE(id, p, np) (BLOCK_HIGH(id, p, np) - BLOCK_LOW(id, p, np) + 1)

int main (int argc, char *argv[]) {

	if(argc != 8 && argc != 9) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/SRKABWOR_csr_parallel_max_it_alpha_dist.exe <data_set> <n_runs> <M> <N> <block_size> <alpha> <max_it_stop>'" << endl;
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
	int block_size = atoi(argv[5]);
	double alpha = atof(argv[6]);
	long long max_it_stop = atoll(argv[7]);

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
		cout << "'./bin/SRKABWOR_csr_parallel_max_it_alpha_dist.exe <data_set> <n_runs> <M> <N> <block_size> <alpha> <max_it_stop>'" << endl;
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
	double* x_k_thread;
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

	int t_id;
	int num_threads;

	#pragma omp parallel
	{
		#pragma omp single
			num_threads = omp_get_num_threads();
	}

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
		}
		it = 0;
		start = omp_get_wtime();
		#pragma omp parallel private(line, scale, t_id, x_k_thread) firstprivate(it)
		{
			x_k_thread = new double[N];
			t_id = omp_get_thread_num();
			while(it < max_it_stop) {
				it++;
				#pragma omp barrier
				line = samp_line[BLOCK_LOW(t_id, num_threads, M) + (it*block_size)%BLOCK_SIZE(t_id, num_threads, M)];
				scale = alpha * (b[line]-dotProductCSR(line, row_idx, cols, values, x_k))/sqrNorm_line[line];
				scaleNewVecLine(line, row_idx, cols, values, scale, x_k, x_k_thread);
				for (int i = 1; i < block_size; i++) {
					line = samp_line[BLOCK_LOW(t_id, num_threads, M) + (it*block_size + i)%BLOCK_SIZE(t_id, num_threads, M)];
					scale = alpha * (b[line]-dotProductCSR(line, row_idx, cols, values, x_k_thread))/sqrNorm_line[line];
					scaleVecLine(line, row_idx, cols, values, scale, x_k_thread);
				}
				for (int i = 0; i < N; i++) {
					x_k_thread[i] -= x_k[i];
				}
				#pragma omp barrier
				#pragma omp critical
					for (int i = 0; i < N; i++)
						x_k[i] += x_k_thread[i]/num_threads;
			}
			delete[] x_k_thread;
		}	
		stop = omp_get_wtime();
		duration += stop - start;
		for (int i = 0; i < N; i++) {
			x_sol[i] += x_k[i];
		}
	}
	cout << M << " " << N << " " << duration << " " << max_it_stop << " ";

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

	delete[] x_k;

	delete[] row_idx;
	delete[] cols;
	delete[] values;
	delete[] b;
	delete[] x;
	delete[] x_sol;

	return 0;
}
