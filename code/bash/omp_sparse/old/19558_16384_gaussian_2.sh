#!/bin/bash

# bash bash/omp_sparse/19558_16384_gaussian_2.sh &

rm outputs/omp_sparse/19558_16384_gaussian_2.txt

./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
./bin/CKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt

# export OMP_NUM_THREADS=1
# ./bin/CKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=2
# ./bin/CKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=4
# ./bin/CKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=8
# ./bin/CKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=16
# ./bin/CKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=32
# ./bin/CKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=64
# ./bin/CKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt

./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &
./bin/RKA_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &

# export OMP_NUM_THREADS=1
# ./bin/RKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=2
# ./bin/RKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=4
# ./bin/RKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=8
# ./bin/RKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=16
# ./bin/RKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=32
# ./bin/RKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=64
# ./bin/RKA_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt

./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &
./bin/SRKAWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt &

# export OMP_NUM_THREADS=1
# ./bin/SRKAWOR_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=2
# ./bin/SRKAWOR_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=4
# ./bin/SRKAWOR_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=8
# ./bin/SRKAWOR_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=16
# ./bin/SRKAWOR_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=32
# ./bin/SRKAWOR_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt
# export OMP_NUM_THREADS=64
# ./bin/SRKAWOR_csr_parallel_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2.txt