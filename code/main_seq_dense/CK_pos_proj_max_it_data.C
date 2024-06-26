#include "aux_func.h"
#include <iostream>
#include <math.h>
#include <omp.h>
#include <random>
#include <algorithm>
#include <fstream>
#include <sstream>
using namespace std;

int main (int argc, char *argv[]) {

	if(argc != 7 && argc != 8) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/CK_pos_proj_max_it_data.exe <data_set> <n_runs> <M> <N> <max_it_stop> <step_save>'" << endl;
		exit(1);
	}

	double* b;
	double* x;
	double* x_sol;
	double** A;

	int n_runs = atoi(argv[2]);

	int M = atoi(argv[3]);
	int N = atoi(argv[4]);
	long long max_it_stop = atoll(argv[5]);
	int step_save = atoi(argv[6]);

	string matrix_type = argv[1];
	string filename_A;
	string filename_b;
	string filename_x;
	if (argc == 7 && matrix_type.compare("ct") == 0) {
		filename_A = "../data/ct/A_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_b = "../data/ct/b_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x = "../data/ct/x_" + to_string(M) + "_" + to_string(N) + ".bin";
	}
	else if (argc == 8 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[7]);
		filename_A = "../data/ct_gaussian/A_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_gaussian/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_gaussian/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else if (argc == 8 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[7]);
		filename_A = "../data/ct_poisson/A_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_poisson/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_poisson/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/CK_pos_proj_max_it_data.exe <data_set> <n_runs> <M> <N> <max_it_stop> <step_save>'" << endl;
		exit(1);
	}

	double start_total = omp_get_wtime();

	importDenseSystemBIN(M, N, filename_A, filename_b, filename_x, A, b, x);

	vector<double> sqrNorm_line(M);
	double sqr_matrixNorm = 0;
	for (int i = 0; i < M; i++) {
		sqrNorm_line[i] = sqrNorm(A[i], N);
		if (sqrNorm_line[i] == 0) {
			cout << "Invalid input: matrix with zero norm line" << endl;
			delete[] A[0];
			delete[] A;
			delete[] b;
			delete[] x;
			exit(1);
		}
		sqr_matrixNorm += sqrNorm_line[i];
	}

	double* x_k = new double[N];
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

	int storage_size = ceil(max_it_stop/step_save);
	int storage_counter;
	vector<double> error_vals(storage_size, 0);
	vector<double> res_vals(storage_size, 0);
	vector<int> error_it(storage_size);
	vector<int> res_it(storage_size);
	double* res_vec = new double[M];
	double sqr_norm_res;

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
		}
		it = 0;
		storage_counter = 0;
		start = omp_get_wtime();
		while(it < max_it_stop) {
			it++;
			line = it%M;
			scale = (b[line]-dotProduct(A[line], x_k, N))/sqrNorm_line[line];
			for (int i = 0; i < N; i++) {
				x_k[i] += scale * A[line][i];
				if (x_k[i] < 0)
					x_k[i] = 0;
			}
			if (it%step_save == 1) {
				error_it[storage_counter] = it;
				error_vals[storage_counter] += sqrt(sqrNormDiff(x_k, x, N));
				for (int i = 0; i < M; i++) {
					res_vec[i] = b[i] - dotProduct(A[i], x_k, N);
				}
				sqr_norm_res = 0;
				for (int i = 0; i < M; i++)
					sqr_norm_res += res_vec[i]*res_vec[i];
				res_it[storage_counter] = it;
				res_vals[storage_counter] += sqrt(sqr_norm_res);
				storage_counter++;
			}
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
		res[i] = b[i] - dotProduct(A[i], x_sol, N);
	cout << sqrNorm(res, M) << " ";
	delete[] res;

	double stop_total = omp_get_wtime();
	double duration_total = stop_total - start_total;

	cout << sqrNormDiff(x_sol, x, N) << " " << duration_total << endl;

	string filename_error = "errors/seq_dense/" + matrix_type + "/CK_pos_proj_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(max_it_stop);
	string filename_res = "errors/seq_dense/" + matrix_type + "/CK_pos_proj_res_" + to_string(M) + "_" + to_string(N) + "_" + to_string(max_it_stop);

	if (argc == 8) {
		int seed = atoi(argv[7]);
		filename_error += "_" + to_string(seed) + ".txt";
		filename_res += "_" + to_string(seed) + ".txt";
	}
	else {
		filename_error += ".txt";
		filename_res += ".txt";		
	}

	ofstream file_error(filename_error);
	ofstream file_res(filename_res);
	if (file_error.is_open() && file_res.is_open()) {
		for (int i = 0; i < error_vals.size(); i++) {
			file_error << error_it[i] << " " << error_vals[i]/n_runs << endl;
			file_res << res_it[i] << " " << res_vals[i]/n_runs << endl;
		}
		file_error.close();
		file_res.close();
	}
	else {
		cout << "ERROR: Invalid input file for error or residual output file." << endl;
		exit(1);
	}

	delete[] x_k;
	delete[] res_vec;

	delete[] A[0];
	delete[] A;
	delete[] b;
	delete[] x;
	delete[] x_sol;

	return 0;
}