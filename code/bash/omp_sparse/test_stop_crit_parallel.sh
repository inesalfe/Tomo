#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

# CK

export OMP_NUM_THREADS=1
./bin/CK_box_proj_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

export OMP_NUM_THREADS=1
./bin/CK_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/CK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

# RK

# RK

export OMP_NUM_THREADS=1
./bin/RK_box_proj_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

export OMP_NUM_THREADS=1
./bin/RK_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/RK_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

# SRKWOR

export OMP_NUM_THREADS=1
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

export OMP_NUM_THREADS=1
./bin/SRKWOR_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/SRKWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 1 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

# CK

export OMP_NUM_THREADS=1
./bin/CK_box_proj_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

export OMP_NUM_THREADS=1
./bin/CK_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/CK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/CKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

# RK

# RK

export OMP_NUM_THREADS=1
./bin/RK_box_proj_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

export OMP_NUM_THREADS=1
./bin/RK_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/RK_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RK_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/RKA_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

# SRKWOR

export OMP_NUM_THREADS=1
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt

export OMP_NUM_THREADS=1
./bin/SRKWOR_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=2
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=3
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=4
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=5
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=6
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=7
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=8
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=9
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=10
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=11
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=12
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=13
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=14
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
export OMP_NUM_THREADS=15
./bin/SRKWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt
./bin/SRKAWOR_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel.txt