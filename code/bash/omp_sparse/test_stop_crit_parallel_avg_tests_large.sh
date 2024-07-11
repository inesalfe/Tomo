#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel_avg_tests_large.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt

T=(2 4 8 16 32 64)

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_final_15.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_16.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_20.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_22.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_23.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/SRKWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_16.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_20.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_22.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_23.exe ct_gaussian 3 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_final_15.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_16.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_20.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_22.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_23.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/SRKWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_16.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_20.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_22.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_23.exe ct_gaussian 3 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_final_15.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_16.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_20.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_22.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_23.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/SRKWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_16.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_20.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_22.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_23.exe ct_gaussian 3 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_final_15.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_16.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_20.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_22.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/CK_box_proj_parallel_stop_final_23.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
done

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/SRKWOR_box_proj_parallel_stop_final_15.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_16.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_20.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_22.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
	./bin/SRKWOR_box_proj_parallel_stop_final_23.exe ct_gaussian 3 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_large.txt
done