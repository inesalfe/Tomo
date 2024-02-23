#!/bin/bash

# bash bash/omp_sparse/19558_16384_gaussian_2_atomic.sh &

rm outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt

# --- CT ---

export OMP_NUM_THREADS=2
./bin/CKA_csr_parallel_max_it.exe ct 2 3112 484 4673450 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/CKA_csr_parallel_max_it_atomic.exe ct 2 3112 484 4673450 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/CKA_csr_parallel_max_it_alpha.exe ct 2 3112 484 1.5 4492954 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/CKA_csr_parallel_max_it_alpha_atomic.exe ct 2 3112 484 1.5 4492954 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/CKA_csr_parallel_max_it_alpha_dist.exe ct 2 3112 484 1.5 4251966 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/CKA_csr_parallel_max_it_alpha_dist_atomic.exe ct 2 3112 484 1.5 4251966 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/CKA_csr_parallel_max_it_dist.exe ct 2 3112 484 4383663 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/CKA_csr_parallel_max_it_dist_atomic.exe ct 2 3112 484 4383663 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt

./bin/RKA_csr_parallel_max_it.exe ct 2 3112 484 1478092 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/RKA_csr_parallel_max_it_atomic.exe ct 2 3112 484 1478092 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/RKA_csr_parallel_max_it_alpha.exe ct 2 3112 484 1.5 985391 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/RKA_csr_parallel_max_it_alpha_atomic.exe ct 2 3112 484 1.5 985391 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/RKA_csr_parallel_max_it_alpha_dist.exe ct 2 3112 484 1.5 981113 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/RKA_csr_parallel_max_it_alpha_dist_atomic.exe ct 2 3112 484 1.5 981113 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/RKA_csr_parallel_max_it_dist.exe ct 2 3112 484 1474043 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/RKA_csr_parallel_max_it_dist_atomic.exe ct 2 3112 484 1474043 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt

./bin/SRKAWOR_csr_parallel_max_it.exe ct 2 3112 484 1422700 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/SRKAWOR_csr_parallel_max_it_atomic.exe ct 2 3112 484 1422700 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/SRKAWOR_csr_parallel_max_it_alpha.exe ct 2 3112 484 1.5 930721 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/SRKAWOR_csr_parallel_max_it_alpha_atomic.exe ct 2 3112 484 1.5 930721 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/SRKAWOR_csr_parallel_max_it_alpha_dist.exe ct 2 3112 484 1.5 937192 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/SRKAWOR_csr_parallel_max_it_alpha_dist_atomic.exe ct 2 3112 484 1.5 937192 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/SRKAWOR_csr_parallel_max_it_dist.exe ct 2 3112 484 1435471 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt
./bin/SRKAWOR_csr_parallel_max_it_dist_atomic.exe ct 2 3112 484 1435471 >> outputs/omp_sparse/19558_16384_gaussian_2_atomic.txt