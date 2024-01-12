#include "aux_func.h"
#include <iostream>
#include <math.h>
#include <omp.h>
#include <random>
using namespace std;

int main (int argc, char *argv[]) {

	if(argc != 4 && argc != 5) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/printDenseSystemParams.exe <data_set> <M> <N>'" << endl;
		exit(1);
	}

	double* b;
	double* b_error;
	double* x;
	double* x_ls;
	double* x_ls_pos;
	double* x_ls_box;
	double** A;

	int M = atoi(argv[2]);
	int N = atoi(argv[3]);

	string matrix_type = argv[1];
	string filename_A;
	string filename_b;
	string filename_b_error;
	string filename_x;
	string filename_x_ls;
	string filename_x_ls_pos;
	string filename_x_ls_box;
	if (argc == 4 && matrix_type.compare("ct") == 0) {
		filename_A = "../data/ct/A_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_b = "../data/ct/b_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x = "../data/ct/x_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x_ls = "../data/ct/x_ls_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x_ls_pos = "../data/ct/x_ls_pos_" + to_string(M) + "_" + to_string(N) + ".bin";
		filename_x_ls_box = "../data/ct/x_ls_box_" + to_string(M) + "_" + to_string(N) + ".bin";
		importDenseSystemBIN(M, N, filename_A, filename_b, filename_x, A, b, x);
		importxVectorBIN(N, filename_x_ls, x_ls);
		importxVectorBIN(N, filename_x_ls_pos, x_ls_pos);
		importxVectorBIN(N, filename_x_ls_box, x_ls_box);
	}
	else if (argc == 5 && matrix_type.compare("ct_gaussian") == 0) {
		int seed = atoi(argv[4]);
		filename_A = "../data/ct_gaussian/A_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_gaussian/b_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b_error = "../data/ct_gaussian/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_gaussian/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls = "../data/ct_gaussian/x_ls_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls_pos = "../data/ct_gaussian/x_ls_pos_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls_box = "../data/ct_gaussian/x_ls_box_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		importDenseSystemBIN(M, N, filename_A, filename_b, filename_x, A, b, x);
		importxVectorBIN(N, filename_x_ls, x_ls);
		importxVectorBIN(N, filename_x_ls_pos, x_ls_pos);
		importxVectorBIN(N, filename_x_ls_box, x_ls_box);
		importbVectorBIN(M, filename_b_error, b_error);
	}
	else if (argc == 5 && matrix_type.compare("ct_poisson") == 0) {
		int seed = atoi(argv[4]);
		filename_A = "../data/ct_poisson/A_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b = "../data/ct_poisson/b_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_b_error = "../data/ct_poisson/b_error_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x = "../data/ct_poisson/x_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls = "../data/ct_poisson/x_ls_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls_pos = "../data/ct_poisson/x_ls_pos_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		filename_x_ls_box = "../data/ct_poisson/x_ls_box_" + to_string(M) + "_" + to_string(N) + "_" + to_string(seed) + ".bin";
		importDenseSystemBIN(M, N, filename_A, filename_b, filename_x, A, b, x);
		importxVectorBIN(N, filename_x_ls, x_ls);
		importxVectorBIN(N, filename_x_ls_pos, x_ls_pos);
		importxVectorBIN(N, filename_x_ls_box, x_ls_box);
		importbVectorBIN(M, filename_b_error, b_error);
	}
	else {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/printDenseSystemParams.exe <data_set> <M> <N>'" << endl;
		exit(1);
	}

	double* res = new double[M];

	if (argc == 5) {
		for (int i = 0; i < M; i++)
			res[i] = b_error[i] - dotProduct(A[i], x, N);
		cout << "norm(A*x-b_error): " << sqrt(sqrNorm(res, M)) << endl;

		for (int i = 0; i < M; i++)
			res[i] = b_error[i] - dotProduct(A[i], x_ls, N);
		cout << "norm(A*x_ls-b_error): " << sqrt(sqrNorm(res, M)) << endl;

		for (int i = 0; i < M; i++)
			res[i] = b_error[i] - dotProduct(A[i], x_ls_pos, N);
		cout << "norm(A*x_ls_pos-b_error): " << sqrt(sqrNorm(res, M)) << endl;

		for (int i = 0; i < M; i++)
			res[i] = b_error[i] - dotProduct(A[i], x_ls_box, N);
		cout << "norm(A*x_ls_box-b_error): " << sqrt(sqrNorm(res, M)) << endl;
	
		delete[] b_error;
	}

	for (int i = 0; i < M; i++)
		res[i] = b[i] - dotProduct(A[i], x, N);
	cout << "norm(A*x-b): " << sqrt(sqrNorm(res, M)) << endl;

	for (int i = 0; i < M; i++)
		res[i] = b[i] - dotProduct(A[i], x_ls, N);
	cout << "norm(A*x_ls-b): " << sqrt(sqrNorm(res, M)) << endl;

	for (int i = 0; i < M; i++)
		res[i] = b[i] - dotProduct(A[i], x_ls_pos, N);
	cout << "norm(A*x_ls_pos-b): " << sqrt(sqrNorm(res, M)) << endl;

	for (int i = 0; i < M; i++)
		res[i] = b[i] - dotProduct(A[i], x_ls_box, N);
	cout << "norm(A*x_ls_box-b): " << sqrt(sqrNorm(res, M)) << endl;

	cout << "norm(x-x_ls): " << sqrt(sqrNormDiff(x, x_ls, N)) << endl;
	cout << "norm(x-x_ls_pos): " << sqrt(sqrNormDiff(x, x_ls_pos, N)) << endl;
	cout << "norm(x-x_ls_box): " << sqrt(sqrNormDiff(x, x_ls_box, N)) << endl;

	delete[] res;

	delete[] A[0];
	delete[] A;
	delete[] b;
	delete[] x;
	delete[] x_ls;
	delete[] x_ls_pos;
	delete[] x_ls_box;

	return 0;
}