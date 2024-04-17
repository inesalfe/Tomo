#!/bin/bash

# bash bash/omp_sparse/19558_16384_gaussian_2_time.sh > outputs/progress/19558_16384_gaussian_2_time.txt &

rm outputs/omp_sparse/19558_16384_gaussian_2_time.txt

./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 1 2440001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=1
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2440001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 2 3820001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=2
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 3820001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 4 5040001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=4
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5040001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 8 5660001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=8
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5660001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 16 5650001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=16
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5650001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 32 5950001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=32
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5950001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/CKA_csr_max_it.exe ct_gaussian 10 19558 16384 64 5630001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=64
./bin/CKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5630001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt

./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 1 7750001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=1
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7750001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 2 7930001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=2
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7930001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 4 7860001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=4
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7860001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 8 7740001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=8
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7740001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 16 7740001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=16
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7740001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 32 7830001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=32
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7830001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/RKA_csr_max_it.exe ct_gaussian 10 19558 16384 64 7740001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=64
./bin/RKA_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 7740001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt

./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 1 1050001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=1
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 1050001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 2 2920001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=2
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 2920001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 4 4130001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=4
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 4130001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 8 4830001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=8
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 4830001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 16 5680001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=16
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5680001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 32 5550001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=32
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5550001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
./bin/SRKAWOR_csr_max_it.exe ct_gaussian 10 19558 16384 64 5900001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt
export OMP_NUM_THREADS=64
./bin/SRKAWOR_csr_parallel_max_it.exe ct_gaussian 10 19558 16384 5900001 2 >> outputs/omp_sparse/19558_16384_gaussian_2_time.txt