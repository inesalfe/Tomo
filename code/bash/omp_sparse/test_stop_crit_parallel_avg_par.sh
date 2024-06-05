#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel_avg_par.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_par.txt

T=(2 4 8 16 32 64)

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_par.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_par.txt
	./bin/RK_box_proj_parallel_stop_par.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_par.txt
	./bin/SRKWOR_box_proj_parallel_stop_par.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_par.txt
done