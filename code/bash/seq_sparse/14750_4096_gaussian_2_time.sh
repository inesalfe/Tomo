#!/bin/bash

# bash bash/seq_sparse/14750_4096_gaussian_2_time.sh > outputs/progress/14750_4096_gaussian_2_time.txt &

rm outputs/seq_sparse/14750_4096_gaussian_2_time.txt

./bin/RK_csr_max_it.exe ct_gaussian 10 14750 4096 2590001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_csr_max_it.exe ct_gaussian 10 14750 4096 1700001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_csr_max_it.exe ct_gaussian 10 14750 4096 920001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 2890001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 23090001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 25030001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 3160001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 29530001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 4690001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_gaussian 10 14750 4096 22840001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_gaussian 10 14750 4096 6580001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_gaussian 10 14750 4096 10900001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_gaussian 10 14750 4096 22840001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_gaussian 10 14750 4096 6580001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_gaussian 10 14750 4096 10310001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt