#!/bin/bash

# bash bash/seq_sparse/19558_16384_poisson_1_time.sh > outputs/progress/19558_16384_poisson_1_time.txt &

rm outputs/seq_sparse/19558_16384_poisson_1_time.txt

./bin/RK_csr_max_it.exe ct_poisson 1 19558 16384 1240001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/CK_csr_max_it.exe ct_poisson 1 19558 16384 1110001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/SRKWOR_csr_max_it.exe ct_poisson 1 19558 16384 910001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 2340001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 1330001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 1250001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 2080001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 2670001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 1970001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 720001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 680001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 740001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 720001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 680001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 740001 1 >> outputs/seq_sparse/19558_16384_poisson_1_time.txt