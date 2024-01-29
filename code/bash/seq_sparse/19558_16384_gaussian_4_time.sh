#!/bin/bash

# bash bash/seq_sparse/19558_16384_gaussian_4_time.sh > outputs/progress/19558_16384_gaussian_4_time.txt &

rm outputs/seq_sparse/19558_16384_gaussian_4_time.txt

./bin/RK_csr_max_it.exe ct_gaussian 10 19558 16384 650001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/CK_csr_max_it.exe ct_gaussian 10 19558 16384 510001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/SRKWOR_csr_max_it.exe ct_gaussian 10 19558 16384 160001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 940001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 720001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 290001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 970001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 890001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_gaussian 10 19558 16384 740001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 470001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 450001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_gaussian 10 19558 16384 160001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 380001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 360001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_gaussian 10 19558 16384 450001 4 >> outputs/seq_sparse/19558_16384_gaussian_4_time.txt