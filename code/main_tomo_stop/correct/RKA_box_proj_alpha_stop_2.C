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

// ./bin/RKA_box_proj_alpha_stop.exe ct_gaussian 1 19558 16384 3 7 1.1 2

int main (int argc, char *argv[]) {

	if(argc != 8 && argc != 9) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/RKA_box_proj_alpha_stop_2.exe <data_set> <n_runs> <M> <N> <it_per_thread> <bucket_size> <alpha>'" << endl;
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
	int it_per_thread = atoi(argv[5]);
	int bucket_size = atoi(argv[6]);
	double alpha = atof(argv[7]);

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
		cout << "'./bin/RKA_box_proj_alpha_stop_2.exe <data_set> <n_runs> <M> <N> <it_per_thread> <bucket_size> <alpha>'" << endl;
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

	discrete_distribution<> dist(sqrNorm_line.begin(), sqrNorm_line.end());
	vector<mt19937> gen_down(it_per_thread);
	vector<mt19937> gen_up(it_per_thread);

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
	int line;
	long long it;
	long long avg_it = 0;

	double start; 
	double stop;
	double duration = 0;
	bool solution_found;

	vector<double> store_diff;
	double curr_diff;

	int extra_lines = M%it_per_thread;

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
			x_down[i] = 0;
			x_up[i] = 0;
		}
		store_diff.clear();
		solution_found = false;
		it = 0;
		gen_down.clear();
		gen_up.clear();
        for (int i = 0; i < it_per_thread; i++) {
            gen_down[i] = mt19937(run*it_per_thread+i+1);
            gen_up[i] = mt19937(n_runs*it_per_thread+run*it_per_thread+i+1);
        }
		start = omp_get_wtime();
		while(!solution_found) {
			it++;
			for (int iner_it = 0; iner_it < M/it_per_thread; iner_it++) {
				for (int i = 0; i < N; i++) {
					x_prev_down[i] = x_down[i];
					x_prev_up[i] = x_up[i];
				}
				for (int i = 0; i < it_per_thread; i++) {
					line = dist(gen_down[i]);
					// cout << line << " " << i << endl;
					scale = alpha * (b[line]-dotProductCSR(line, row_idx, cols, values, x_prev_down))/sqrNorm_line[line];
					scaleDivideVecLine(line, it_per_thread, row_idx, cols, values, scale, x_down);
				}
				for (int i = 0; i < it_per_thread; i++) {
					line = dist(gen_up[i]);
					// cout << line << " " << i << endl;
					scale = alpha * (b[line]-dotProductCSR(line, row_idx, cols, values, x_prev_up))/sqrNorm_line[line];
					scaleDivideVecLine(line, it_per_thread, row_idx, cols, values, scale, x_up);
				}
			}
			if (extra_lines != 0) {
				for (int i = 0; i < N; i++) {
					x_prev_down[i] = x_down[i];
					x_prev_up[i] = x_up[i];
				}
				for (int i = 0; i < extra_lines; i++) {
					line = dist(gen_down[i]);
					// cout << line << " " << i << endl;
					scale = alpha * (b[line]-dotProductCSR(line, row_idx, cols, values, x_prev_down))/sqrNorm_line[line];
					scaleDivideVecLine(line, extra_lines, row_idx, cols, values, scale, x_down);
				}
				for (int i = 0; i < extra_lines; i++) {
					line = dist(gen_up[i]);
					// cout << line << " " << i << endl;
					scale = alpha * (b[line]-dotProductCSR(line, row_idx, cols, values, x_prev_up))/sqrNorm_line[line];
					scaleDivideVecLine(line, extra_lines, row_idx, cols, values, scale, x_up);
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
						solution_found = true;
					}
				}
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

	string str_alpha = to_string(alpha);
	int offset = 1;
	if (str_alpha.find_last_not_of('0') == str_alpha.find('.'))
		offset = 0;
	str_alpha.erase(str_alpha.find_last_not_of('0') + offset, string::npos);
	
	string filename_sol = "outputs/tomo_stop/" + matrix_type + "/RKA_box_proj_alpha_sol_2_" + to_string(M) + "_" + to_string(N) + "_" + to_string(it_per_thread) + "_" + str_alpha;

	if (argc == 9) {
		int seed = atoi(argv[8]);
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