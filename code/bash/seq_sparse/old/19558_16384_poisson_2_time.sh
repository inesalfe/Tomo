#!/bin/bash

# bash bash/seq_sparse/19558_16384_poisson_2_time.sh > outputs/progress/19558_16384_poisson_2_time.txt &

rm outputs/seq_sparse/19558_16384_poisson_2_time.txt

./bin/RK_csr_max_it.exe ct_poisson 1 19558 16384 3000001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/CK_csr_max_it.exe ct_poisson 1 19558 16384 2010001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/SRKWOR_csr_max_it.exe ct_poisson 1 19558 16384 1750001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 5660001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 3810001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 2830001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 5090001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 5390001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 3650001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 1620001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 1700001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 1460001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 1460001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 1540001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 1380001 2 >> outputs/seq_sparse/19558_16384_poisson_2_time.txt