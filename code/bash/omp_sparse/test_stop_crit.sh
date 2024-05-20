#!/bin/bash

# bash bash/omp_sparse/test_stop_crit.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit.txt

# CK

./bin/CK_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 1 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 1 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 1 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/CK_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop_2.exe ct_gaussian 1 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop_2.exe ct_gaussian 1 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop_2.exe ct_gaussian 1 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/CK_csr_alpha_stop.exe ct_gaussian 1 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_alpha_stop.exe ct_gaussian 1 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_alpha_stop.exe ct_gaussian 1 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_alpha_stop.exe ct_gaussian 1 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/CK_csr_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_stop.exe ct_gaussian 1 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_stop.exe ct_gaussian 1 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_stop.exe ct_gaussian 1 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



# RK

./bin/RK_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 1 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 1 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 1 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/RK_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop_2.exe ct_gaussian 1 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop_2.exe ct_gaussian 1 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop_2.exe ct_gaussian 1 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/RK_csr_alpha_stop.exe ct_gaussian 1 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_alpha_stop.exe ct_gaussian 1 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_alpha_stop.exe ct_gaussian 1 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_alpha_stop.exe ct_gaussian 1 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/RK_csr_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_stop.exe ct_gaussian 1 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_stop.exe ct_gaussian 1 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_stop.exe ct_gaussian 1 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



# SRKWOR

./bin/SRKWOR_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop_2.exe ct_gaussian 1 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop_2.exe ct_gaussian 1 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop.exe ct_gaussian 1 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop_2.exe ct_gaussian 1 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/SRKWOR_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop_2.exe ct_gaussian 1 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop_2.exe ct_gaussian 1 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop.exe ct_gaussian 1 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop_2.exe ct_gaussian 1 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/SRKWOR_csr_alpha_stop.exe ct_gaussian 1 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_alpha_stop.exe ct_gaussian 1 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_alpha_stop.exe ct_gaussian 1 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_alpha_stop.exe ct_gaussian 1 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/SRKWOR_csr_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_stop.exe ct_gaussian 1 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_stop.exe ct_gaussian 1 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_stop.exe ct_gaussian 1 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



# CK

./bin/CK_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 10 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 10 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 10 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/CK_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop_2.exe ct_gaussian 10 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop_2.exe ct_gaussian 10 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_box_proj_csr_stop_2.exe ct_gaussian 10 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/CK_csr_alpha_stop.exe ct_gaussian 10 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_alpha_stop.exe ct_gaussian 10 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_alpha_stop.exe ct_gaussian 10 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_alpha_stop.exe ct_gaussian 10 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/CK_csr_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_stop.exe ct_gaussian 10 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_stop.exe ct_gaussian 10 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/CKA_csr_stop.exe ct_gaussian 10 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



# RK

./bin/RK_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 10 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 10 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_alpha_stop_2.exe ct_gaussian 10 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/RK_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop_2.exe ct_gaussian 10 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop_2.exe ct_gaussian 10 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_box_proj_csr_stop_2.exe ct_gaussian 10 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/RK_csr_alpha_stop.exe ct_gaussian 10 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_alpha_stop.exe ct_gaussian 10 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_alpha_stop.exe ct_gaussian 10 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_alpha_stop.exe ct_gaussian 10 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/RK_csr_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_stop.exe ct_gaussian 10 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_stop.exe ct_gaussian 10 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/RKA_csr_stop.exe ct_gaussian 10 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



# SRKWOR

./bin/SRKWOR_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop_2.exe ct_gaussian 10 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop_2.exe ct_gaussian 10 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop.exe ct_gaussian 10 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_alpha_stop_2.exe ct_gaussian 10 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/SRKWOR_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop_2.exe ct_gaussian 10 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop_2.exe ct_gaussian 10 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop.exe ct_gaussian 10 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_box_proj_csr_stop_2.exe ct_gaussian 10 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/SRKWOR_csr_alpha_stop.exe ct_gaussian 10 19558 16384 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_alpha_stop.exe ct_gaussian 10 19558 16384 2 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_alpha_stop.exe ct_gaussian 10 19558 16384 4 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_alpha_stop.exe ct_gaussian 10 19558 16384 8 7 1.2 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt



./bin/SRKWOR_csr_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_stop.exe ct_gaussian 10 19558 16384 2 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_stop.exe ct_gaussian 10 19558 16384 4 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt
./bin/SRKAWOR_csr_stop.exe ct_gaussian 10 19558 16384 8 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit.txt

