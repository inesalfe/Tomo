#include "aux_func.h"
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

	if(argc != 7 && argc != 8) {
		cout << "Incorrect number of arguments: Corret usage is ";
		cout << "'./bin/RKA_max_it_dist.exe <data_set> <n_runs> <M> <N> <it_per_thread> <max_it_stop>'" << endl;
		exit(1);
	}

	double* b;
	double* x;
	double* x_sol;
	double** A;

	int n_runs = atoi(argv[2]);

	int M = atoi(argv[3]);
	int N = atoi(argv[4]);
	int it_per_thread = atoi(argv[5]);
	long long max_it_stop = atoll(argv[6]);

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
		cout << "'./bin/RKA_max_it_dist.exe <data_set> <n_runs> <M> <N> <it_per_thread> <max_it_stop>'" << endl;
		exit(1);
	}

	double start_total = omp_get_wtime();

	importDenseSystemBIN(M, N, filename_A, filename_b, filename_x, A, b, x);

	vector<double> sqrNorm_line(M);
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
	}

	vector<mt19937> gen(it_per_thread);
	vector<discrete_distribution<>> dist(it_per_thread);

	double* x_k = new double[N];
	double* x_prev = new double[N];
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

	for(int run = 0; run < n_runs; run++) {
		for (int i = 0; i < N; i++) {
			x_k[i] = 0;
		}
		it = 0;
        gen.clear();
        for (int i = 0; i < it_per_thread; i++) {
            gen[i] = mt19937(run*it_per_thread+i+1);
        }
        dist.clear();
        for (int i = 0; i < it_per_thread; i++) {
            dist[i] = discrete_distribution<>(sqrNorm_line.begin()+BLOCK_LOW(i, it_per_thread, M), sqrNorm_line.begin()+BLOCK_LOW(i, it_per_thread, M)+BLOCK_SIZE(i, it_per_thread, M));
        }
		start = omp_get_wtime();
		while(it < max_it_stop) {
			it++;
			for (int i = 0; i < N; i++) {
				x_prev[i] = x_k[i];
			}
			for (int i = 0; i < it_per_thread; i++) {
				line = BLOCK_LOW(i, it_per_thread, M)+dist[i](gen[i]);
				scale = (b[line]-dotProduct(A[line], x_prev, N))/sqrNorm_line[line];
				for (int j = 0; j < N; j++) {
					x_k[j] += (scale * A[line][j])/it_per_thread;
				}
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

	delete[] x_k;
	delete[] x_prev;

	delete[] A[0];
	delete[] A;
	delete[] b;
	delete[] x;
	delete[] x_sol;

	return 0;
}
