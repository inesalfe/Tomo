#!/bin/bash

# bash bash/seq_sparse/19558_16384_poisson_3_time.sh > outputs/progress/19558_16384_poisson_3_time.txt &

rm outputs/seq_sparse/19558_16384_poisson_3_time.txt

./bin/RK_csr_max_it.exe ct_poisson 1 19558 16384 8410001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/CK_csr_max_it.exe ct_poisson 1 19558 16384 6550001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/SRKWOR_csr_max_it.exe ct_poisson 1 19558 16384 5700001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 13130001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 6290001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 5780001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 17680001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 9890001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 7470001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 2830001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 3240001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 2720001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 2750001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 3290001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 2270001 3 >> outputs/seq_sparse/19558_16384_poisson_3_time.txt