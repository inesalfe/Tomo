#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel_blocks.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt

T=(2 3 4 5 6 7 8 9 10 11 12 13 14 15)
B=(1 2 3 4 5)

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKB_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKB_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKB_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKB_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
	done
done

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKAB_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKAB_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKAB_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKAB_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
	done
done

T=(2 4 8 16)
B=(1 2 3 4 5)

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKB_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKB_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKB_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKB_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
	done
done

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKAB_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKAB_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKAB_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
		./bin/CKAB_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 $b 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks.txt
	done
done