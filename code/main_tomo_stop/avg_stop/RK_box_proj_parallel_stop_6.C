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

int main (int argc, char *argv[]) {

	if(argc != 6 && argc != 7) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/RK_box_proj_parallel_stop_6.exe <data_set> <n_runs> <M> <N> <bucket_size>'" << endl;
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
	int bucket_size = atoi(argv[5]);

	string matrix_type = argv[1];
	string filename_row_idx;
	string filename_cols;
	string filename_values;
	string filename_b;
	string filename_x;
	if (argc == 6 && matrix_type.compare("ct") == 0) {
		filename_row_idx = "../data/ct/row_idx_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_cols = "../data/ct/cols_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_values = "../data/ct/values_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_b = "../data/ct/b_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x = "../data/ct/x_" + to_string(M) + "_" + to_string(N) + ".bin";
	}
	else if (argc == 7 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[6]);
		filename_row_idx = "../data/ct_gaussian/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_gaussian/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_gaussian/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_gaussian/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_gaussian/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else if (argc == 7 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[6]);
		filename_row_idx = "../data/ct_poisson/row_idx_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_cols = "../data/ct_poisson/cols_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_values = "../data/ct_poisson/values_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_poisson/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_poisson/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/RK_box_proj_parallel_stop_6.exe <data_set> <n_runs> <M> <N> <bucket_size>'" << endl;
		exit(1);
	}

	double start_total = omp_get_wtime();

	importSparseMatrixBIN(M, N, NNZ, filename_row_idx, filename_cols, filename_values, row_idx, cols, values);
	importbVectorBIN(M, filename_b, b);
	importxVectorBIN(N, filename_x, x);

	int num_threads;
	#pragma omp parallel
	{
		#pragma omp single
		{
			num_threads = omp_get_num_threads();
		}
	}

	vector<double> sqrNorm_line(M);
	for (int i = 0; i < M; i++) {
		sqrNorm_line[i] = sqrNormRow(i, row_idx, cols, values);
		// sqrNorm_line[i] = num_threads*sqrNormRow(i, row_idx, cols, values);
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

	discrete_distribution<> dist(sqrNorm_line.begin(), sqrNorm_line.end());

	double* x_k = new double[N];
	double* x_down = new double[N];
	double* x_up = new double[N];
	double* x_prev_down = new double[N];
	double* x_prev_up = new double[N];
	x_sol = new double[N];
	for (int i = 0; i < N; i++) {
		x_sol[i] = 0;
	}
	double scale;
	int line_down;
	int line_up;
	long long it;
	long long avg_it = 0;
	int it_final;

	double start; 
	double stop;
	double duration = 0;
	bool solution_found;

	int col, index, t_id;

	vector<double> store_diff;
	double curr_diff;

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
			x_down[i] = 0;
			x_up[i] = 0;
		}
		store_diff.clear();
		solution_found = false;
		it = 0;
		start = omp_get_wtime();
		#pragma omp parallel private(line_down, line_up, scale, t_id) firstprivate(it)
		{
			t_id = omp_get_thread_num();
			mt19937 gen_down(run*num_threads+t_id+1);
			mt19937 gen_up(n_runs*num_threads+run*num_threads+t_id+1);
			while(!solution_found) {
				it++;
				for (int iner_it = 0; iner_it < M/num_threads; iner_it++) {
					line_down = dist(gen_down);
					scale = (b[line_down]-dotProductCSR(line_down, row_idx, cols, values, x_down))/sqrNorm_line[line_down];
					index = row_idx[line_down];
					while (index < row_idx[line_down+1]) {
						col = cols[index];
						x_down[col] += scale*values[index];
						index++;
					}
					line_up = dist(gen_up);
					scale = (b[line_up]-dotProductCSR(line_up, row_idx, cols, values, x_up))/sqrNorm_line[line_up];
					index = row_idx[line_up];
					while (index < row_idx[line_up+1]) {
						col = cols[index];
						x_up[col] += scale*values[index];
						index++;
					}
				}
				for (int i = 0; i < N; i++) {
					if (x_down[i] < 0)
						x_down[i] = 0;
					else if (x_down[i] > 1)
						x_down[i] = 1;
					if (x_up[i] < 0)
						x_up[i] = 0;
					else if (x_up[i] > 1)
						x_up[i] = 1;
				}
				#pragma omp barrier
				#pragma omp single
				{
					curr_diff = sqrNormDiff(x_up, x_down, N);
					if (store_diff.size() == 0) {
						store_diff.push_back(curr_diff);
					}
					else {
						if (curr_diff < store_diff[0]) {
							store_diff.clear();
							store_diff.push_back(curr_diff);
							for (int i = 0; i < N; i++)
								x_k[i] = 0.5*(x_down[i]+x_up[i]);
						}
						else {
							store_diff.push_back(curr_diff);
							if (store_diff.size() == bucket_size+1) {
								it_final = it;
								solution_found = true;
							}
						}
					}
				}
			}
			// cout << t_id << " " << it << endl;
		}
		stop = omp_get_wtime();
		avg_it += it_final-bucket_size;
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

	string filename_sol = "outputs/tomo_stop/" + matrix_type + "/RK_box_proj_sol_" + to_string(M) + "_" + to_string(N) + "_" + to_string(num_threads);

	if (argc == 7) {
		int seed = atoi(argv[6]);
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

	delete[] row_idx;
	delete[] cols;
	delete[] values;
	delete[] b;
	delete[] x;
	delete[] x_sol;

	return 0;
}