#!/bin/bash

# bash bash/omp_sparse/19558_16384_gaussian_2_dist.sh &

rm outputs/omp_sparse/19558_16384_gaussian_2_dist.txt

./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/CKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &

./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/RKA_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &

./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 1 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 2 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 4 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 8 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 16 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 32 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &
./bin/SRKAWOR_csr_max_it_dist_data.exe ct_gaussian 10 19558 16384 64 30000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_dist.txt &