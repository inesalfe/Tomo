#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel_blocks_4.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_4.txt

T=(14 15)
B=(1 2 3 4 5)

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKAB_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 $b 10 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_4.txt
		./bin/CKAB_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 $b 10 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_4.txt
		./bin/CKAB_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 $b 10 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_4.txt
		./bin/CKAB_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 $b 10 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_4.txt
	done
done

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKAB_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 $b 10 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_4.txt
		./bin/CKAB_box_proj_parallel_stop_6.exe ct_gaussian 10 19558 16384 $b 10 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_4.txt
		./bin/CKAB_box_proj_parallel_stop_7.exe ct_gaussian 10 19558 16384 $b 10 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_4.txt
	done
done