#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel_avg.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt

T=(2 4 8 16 32)

export OMP_NUM_THREADS=1
./bin/CK_box_proj_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt
./bin/CK_box_proj_stop_2.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt
./bin/RK_box_proj_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt
./bin/RK_box_proj_stop_2.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt
./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt
for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt
	./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt
	./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg.txt
done