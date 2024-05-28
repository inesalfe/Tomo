#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel_avg_large_64.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt

T=(64)

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/CK_box_proj_parallel_stop_par.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/RK_box_proj_parallel_stop.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/RK_box_proj_parallel_stop_par.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/SRKWOR_box_proj_parallel_stop_par.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/CK_box_proj_parallel_stop_par.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/RK_box_proj_parallel_stop.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/RK_box_proj_parallel_stop_par.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/SRKWOR_box_proj_parallel_stop_par.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/CK_box_proj_parallel_stop_par.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/RK_box_proj_parallel_stop.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/RK_box_proj_parallel_stop_par.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/SRKWOR_box_proj_parallel_stop_par.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/CK_box_proj_parallel_stop_par.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/RK_box_proj_parallel_stop.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/RK_box_proj_parallel_stop_par.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/SRKWOR_box_proj_parallel_stop.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
	./bin/SRKWOR_box_proj_parallel_stop_par.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_large_64.txt
done