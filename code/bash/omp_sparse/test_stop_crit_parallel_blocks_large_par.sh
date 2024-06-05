#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel_blocks_large_par.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt

T=(2 4 8 16 32 64)
B=(2 4 8 16)

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKB_box_proj_parallel_stop_par.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
		./bin/RKB_box_proj_parallel_stop_par.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
		./bin/SRKBWOR_box_proj_parallel_stop_par.exe ct_gaussian 3 117372 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
	done
done

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKB_box_proj_parallel_stop_par.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
		./bin/RKB_box_proj_parallel_stop_par.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
		./bin/SRKBWOR_box_proj_parallel_stop_par.exe ct_gaussian 3 234664 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
	done
done

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKB_box_proj_parallel_stop_par.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
		./bin/RKB_box_proj_parallel_stop_par.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
		./bin/SRKBWOR_box_proj_parallel_stop_par.exe ct_gaussian 3 469368 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
	done
done

for t in ${T[@]}; do
	for b in ${B[@]}; do
		export OMP_NUM_THREADS=$t
		./bin/CKB_box_proj_parallel_stop_par.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
		./bin/RKB_box_proj_parallel_stop_par.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
		./bin/SRKBWOR_box_proj_parallel_stop_par.exe ct_gaussian 3 938720 262144 $b 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_blocks_large_par.txt
	done
done