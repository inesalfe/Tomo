#!/bin/bash

# bash bash/seq_sparse/19558_16384_gaussian_1_time.sh > outputs/progress/19558_16384_gaussian_1_time.txt &

rm outputs/seq_sparse/19558_16384_gaussian_1_time.txt

./bin/RK_csr_max_it.exe ct_gaussian 10 19558 16384 30400001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/CK_csr_max_it.exe ct_gaussian 10 19558 16384 10710001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/SRKWOR_csr_max_it.exe ct_gaussian 10 19558 16384 5510001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 30570001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 12760001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 5380001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 28030001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 12140001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 7640001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 8930001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 7610001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 4800001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 4010001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 4070001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 2380001 1 >> outputs/seq_sparse/19558_16384_gaussian_1_time.txt