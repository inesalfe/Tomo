#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_parallel_avg_tests_small.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
rm outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small_2.txt

T=(2 4 8 16 32 64)

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CK_box_proj_parallel_stop_final_1.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_2.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_3.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_4.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_5.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_6.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_7.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_8.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_9.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_10.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_11.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_12.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_13.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_14.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_15.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_16.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_17.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_18.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_19.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_20.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_21.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_22.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_23.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_24.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_25.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_26.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_27.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_28.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
	./bin/CK_box_proj_parallel_stop_final_29.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small.txt
done

T=(2 4 8 16 32 64)

for t in ${T[@]}; do
	export OMP_NUM_THREADS=$t
	./bin/CKA_box_proj_parallel_stop.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small_2.txt
	./bin/CKA_box_proj_parallel_stop_2.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small_2.txt
	./bin/CKA_box_proj_parallel_stop_3.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small_2.txt
	./bin/CKA_box_proj_parallel_stop_4.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small_2.txt
	./bin/CKA_box_proj_parallel_stop_5.exe ct_gaussian 10 19558 16384 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_parallel_avg_tests_small_2.txt
done