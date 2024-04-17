#!/bin/bash

# bash bash/omp_sparse/19558_16384_gaussian_3_no_sync.sh &

n=16384
m=19558
T=(1 2 4 8 16 32 64)

echo "--- Remove Old Files ---"

rm outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt

echo "--- CT GAUSSIAN ---"

I=(960001 1160001 1250001 1400001 1500001 1580001 1620001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/CKA_csr_parallel_max_it_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_critical_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_critical_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_just_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_atomic_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_just_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
done

I=(960001 990001 1140001 1470001 1540001 1480001 1670001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/CKA_csr_parallel_max_it_dist_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_dist_critical_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_dist_critical_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_dist_just_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_dist_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_dist_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_dist_atomic_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_dist_just_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/CKA_csr_parallel_max_it_dist_no_sync.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
done

I=(2250001 2190001 2110001 2120001 2120001 2180001 2130001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/RKA_csr_parallel_max_it_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_critical_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_critical_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_just_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_atomic_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_just_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
done

I=(2250001 2210001 2190001 2120001 2090001 2080001 2070001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/RKA_csr_parallel_max_it_dist_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_dist_critical_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_dist_critical_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_dist_just_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_dist_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_dist_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_dist_atomic_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_dist_just_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/RKA_csr_parallel_max_it_dist_no_sync.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
done

I=(590001 970001 1270001 1410001 1540001 1600001 1560001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/SRKAWOR_csr_parallel_max_it_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_critical_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_critical_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_just_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_atomic_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_just_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_no_sync.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
done

I=(590001 1040001 1260001 1370001 1570001 1540001 1590001)

for (( i=0; i<7; i++ )) do
	t=${T[i]}
	it=${I[i]}
	export OMP_NUM_THREADS=$t
	./bin/SRKAWOR_csr_parallel_max_it_dist_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_dist_critical_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_dist_critical_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_dist_just_critical.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_dist_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_dist_atomic_no_barrier.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_dist_atomic_no_for.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_dist_just_atomic.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
	./bin/SRKAWOR_csr_parallel_max_it_dist_no_sync.exe ct_gaussian 10 $m $n $it 3 >> outputs/omp_sparse/19558_16384_gaussian_3_no_sync.txt
done

# 960001 4.44611
# 1160001 4.05978
# 1250001 4.00653
# 1400001 3.96642
# 1500001 3.93943
# 1580001 3.93179
# 1620001 3.93255

# 960001 4.44611
# 990001 4.18019
# 1140001 4.02736
# 1470001 3.95441
# 1540001 3.9356
# 1480001 3.93797
# 1670001 3.93624

# 2250001 3.81259
# 2190001 3.78199
# 2110001 3.77394
# 2120001 3.77027
# 2120001 3.76855
# 2180001 3.76784
# 2130001 3.76756

# 2250001 3.81259
# 2210001 3.78206
# 2190001 3.7745
# 2120001 3.77229
# 2090001 3.77244
# 2080001 3.77197
# 2070001 3.77175

# 590001 4.97307
# 970001 4.2367
# 1270001 4.05099
# 1410001 3.97883
# 1540001 3.94879
# 1600001 3.93909
# 1560001 3.93693

# 590001 4.97307
# 1040001 4.22235
# 1260001 4.03354
# 1370001 3.97816
# 1570001 3.94334
# 1540001 3.93787
# 1590001 3.93649