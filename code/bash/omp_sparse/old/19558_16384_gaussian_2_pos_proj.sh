#!/bin/bash

# bash bash/omp_sparse/19558_16384_gaussian_2_pos_proj.sh &

rm outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt

./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/CKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &

./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/RKA_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &

./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &
./bin/SRKAWOR_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 10000 2 >> outputs/omp_sparse/19558_16384_gaussian_2_pos_proj.txt &