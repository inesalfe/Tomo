#include "aux_func.h"
#include <iostream>
#include <math.h>
#include <omp.h>
#include <random>
#include <algorithm>
using namespace std;

int main (int argc, char *argv[]) {

	if(argc != 6 && argc != 7) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/SRKWOR_box_ineq_error.exe <data_set> <n_runs> <eps> <M> <N>'" << endl;
		exit(1);
	}

	double* b;
	double* x;
	double* x_sol;
	double** A;

	int n_runs = atoi(argv[2]);
	double eps = atof(argv[3]);

	int M = atoi(argv[4]);
	int N = atoi(argv[5]);

	string matrix_type = argv[1];
	string filename_A;
	string filename_b;
	string filename_x;
	if (argc == 6 && matrix_type.compare("ct") == 0) {
		filename_A = "../data/ct/A_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_b = "../data/ct/b_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x = "../data/ct/x_" + to_string(M) + "_" + to_string(N) + ".bin";
	}
	else if (argc == 7 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[6]);
		filename_A = "../data/ct_gaussian/A_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_gaussian/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_gaussian/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else if (argc == 7 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[6]);
		filename_A = "../data/ct_poisson/A_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_poisson/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_poisson/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/SRKWOR_box_ineq_error.exe <data_set> <n_runs> <eps> <M> <N>'" << endl;
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

	int M_reg = M + 2*N;
	int M_reg_2 = M + N;

	vector<int> samp_line(M_reg);
	for (int i = 0; i < M_reg; i++)
		samp_line[i] = i;
	mt19937 rng(1);

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
	
	long long avg_it = 0;

	bool solution_found;

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
		}
		it = 0;
		solution_found = false;
		shuffle(begin(samp_line), end(samp_line), rng);
		start = omp_get_wtime();
		while(!solution_found) {
			it++;
			line = samp_line[it%M_reg];
			if (line < M) {
				scale = (b[line]-dotProduct(A[line], x_k, N))/sqrNorm_line[line];
				for (int i = 0; i < N; i++) {
					x_k[i] += scale * A[line][i];
				}
			}
			else if (line < M+N) {
				if (x_k[line%M] < 0)
					x_k[line%M] = 0;
			}
			else {
				if (x_k[line%M_reg_2] > 1)
					x_k[line%M_reg_2] = 1;
			}
			if (sqrNormDiff(x_k, x, N) < eps)
				solution_found = true;
		}
		stop = omp_get_wtime();
		duration += stop - start;
		for (int i = 0; i < N; i++) {
			x_sol[i] += x_k[i];
		}
		avg_it += it;
	} 
	avg_it /= n_runs;
	cout << M << " " << N << " " << duration << " " << avg_it << " ";

	for (int i = 0; i < N; i++) {
		x_sol[i] /= n_runs;
	}

	double* res = new double[M_reg];
	for (int i = 0; i < M; i++)
		res[i] = b[i] - dotProduct(A[i], x_sol, N);
	for (int i = 0; i < N; i++) {
		if (x_sol[i] < 0)
			res[M+i] = x_sol[i];
		else
			res[M+i] = 0;
	}
	for (int i = 0; i < N; i++) {
		if (x_sol[i] > 1)
			res[M+N+i] = x_sol[i];
		else
			res[M+N+i] = 0;
	}
	cout << sqrNorm(res, M) << " " << sqrNorm(res, M_reg) << " ";
	delete[] res;

	double stop_total = omp_get_wtime();
	double duration_total = stop_total - start_total;

	cout << sqrNormDiff(x_sol, x, N) << " " << duration_total << endl;

	delete[] x_k;

	delete[] A[0];
	delete[] A;
	delete[] b;
	delete[] x;
	delete[] x_sol;

	return 0;
}