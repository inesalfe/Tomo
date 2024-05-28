#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel_avg_2.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt

T=(2 4 8 16 32 64)

export OMP_NUM_THREADS=1
./bin/CK_box_proj_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
./bin/CK_box_proj_stop_2.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
./bin/RK_box_proj_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
./bin/RK_box_proj_stop_2.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
	./bin/CK_box_proj_parallel_stop_par.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
	./bin/RK_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
	./bin/RK_box_proj_parallel_stop_par.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
	./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
	./bin/SRKWOR_box_proj_parallel_stop_par.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_2.txt
done