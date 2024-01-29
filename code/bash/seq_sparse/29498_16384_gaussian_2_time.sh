#!/bin/bash

# bash bash/seq_sparse/29498_16384_gaussian_2_time.sh > outputs/progress/29498_16384_gaussian_2_time.txt &

rm outputs/seq_sparse/29498_16384_gaussian_2_time.txt

./bin/RK_csr_max_it.exe ct_gaussian 10 29498 16384 5050001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_csr_max_it.exe ct_gaussian 10 29498 16384 2290001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_csr_max_it.exe ct_gaussian 10 29498 16384 810001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 5560001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 2160001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 610001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 5170001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 2930001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 1280001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_gaussian 10 29498 16384 2030001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1980001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1360001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1340001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1980001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1400001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt