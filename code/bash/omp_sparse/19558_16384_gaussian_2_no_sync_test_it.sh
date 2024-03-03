#!/bin/bash

# bash bash/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.sh > outputs/progress/19558_16384_gaussian_2_no_sync_test_it.txt &

n=16384
m=19558

echo "--- Remove Old Files ---"

rm outputs/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.txt

echo "--- CT GAUSSIAN ---"

echo "--- 1 RUN ---"

t=2
export OMP_NUM_THREADS=$t

for (( i=0; i<200; i++ )) do
	it=$((i*50000))
	./bin/CKA_csr_parallel_max_it_no_sync.exe ct_gaussian 1 $m $n $it 2 >> outputs/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.txt
done

echo "CKA 1 RUN 2 Threads"

t=4
export OMP_NUM_THREADS=$t

for (( i=0; i<200; i++ )) do
	it=$((i*50000))
	./bin/CKA_csr_parallel_max_it_no_sync.exe ct_gaussian 1 $m $n $it 2 >> outputs/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.txt
done

echo "CKA 1 RUN 4 Threads"

t=2
export OMP_NUM_THREADS=$t

for (( i=0; i<200; i++ )) do
	it=$((i*50000))
	./bin/CKA_csr_parallel_max_it_dist_no_sync.exe ct_gaussian 1 $m $n $it 2 >> outputs/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.txt
done

echo "CKA Dist 1 RUN 2 Threads"

t=4
export OMP_NUM_THREADS=$t

for (( i=0; i<200; i++ )) do
	it=$((i*50000))
	./bin/CKA_csr_parallel_max_it_dist_no_sync.exe ct_gaussian 1 $m $n $it 2 >> outputs/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.txt
done

echo "CKA Dist 1 RUN 4 Threads"

echo "--- 10 RUNS ---"

t=2
export OMP_NUM_THREADS=$t

for (( i=0; i<200; i++ )) do
	it=$((i*50000))
	./bin/CKA_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.txt
done

echo "CKA 10 RUN 2 Threads"

# t=4
# export OMP_NUM_THREADS=$t

# for (( i=0; i<200; i++ )) do
# 	it=$((i*50000))
# 	./bin/CKA_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.txt
# done

# echo "CKA 10 RUN 4 Threads"

# t=2
# export OMP_NUM_THREADS=$t

# for (( i=0; i<200; i++ )) do
# 	it=$((i*50000))
# 	./bin/CKA_csr_parallel_max_it_dist_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.txt
# done

# echo "CKA Dist 10 RUN 2 Threads"

# t=4
# export OMP_NUM_THREADS=$t

# for (( i=0; i<200; i++ )) do
# 	it=$((i*50000))
# 	./bin/CKA_csr_parallel_max_it_dist_no_sync.exe ct_gaussian 10 $m $n $it 2 >> outputs/omp_sparse/19558_16384_gaussian_2_no_sync_test_it.txt
# done

# echo "CKA Dist 10 RUN 4 Threads"