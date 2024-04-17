#!/bin/bash

# bash bash/seq_sparse/19558_16384_gaussian_3_time.sh > outputs/progress/19558_16384_gaussian_3_time.txt &

rm outputs/seq_sparse/19558_16384_gaussian_3_time.txt

./bin/RK_csr_max_it.exe ct_gaussian 10 19558 16384 2250001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/CK_csr_max_it.exe ct_gaussian 10 19558 16384 960001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/SRKWOR_csr_max_it.exe ct_gaussian 10 19558 16384 590001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 4750001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 2230001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 860001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 4610001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 1990001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 1220001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1070001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 1140001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 660001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 790001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 900001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 660001 3 >> outputs/seq_sparse/19558_16384_gaussian_3_time.txt