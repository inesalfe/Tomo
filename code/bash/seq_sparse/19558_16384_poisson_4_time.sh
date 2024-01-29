#!/bin/bash

# bash bash/seq_sparse/19558_16384_poisson_4_time.sh >> outputs/progress/19558_16384_poisson_4_time.txt &

# rm outputs/seq_sparse/19558_16384_poisson_4_time.txt

# ./bin/RK_csr_max_it.exe ct_poisson 1 19558 16384 32960001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/CK_csr_max_it.exe ct_poisson 1 19558 16384 23390001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/SRKWOR_csr_max_it.exe ct_poisson 1 19558 16384 20550001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/RK_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 30200001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/CK_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 13910001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_poisson 1 19558 16384 12140001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/RK_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 35420001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/CK_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 16640001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/SRKWOR_box_ineq_csr_max_it.exe ct_poisson 1 19558 16384 12220001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/RK_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 10820001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/CK_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 7350001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/SRKWOR_pos_proj_csr_max_it.exe ct_poisson 1 19558 16384 6330001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/RK_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 8090001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/CK_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 5920001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
# ./bin/SRKWOR_box_proj_csr_max_it.exe ct_poisson 1 19558 16384 5000001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt

./bin/RK_csr_max_it.exe ct_poisson 10 19558 16384 33980001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/CK_csr_max_it.exe ct_poisson 10 19558 16384 23390001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/SRKWOR_csr_max_it.exe ct_poisson 10 19558 16384 21050001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_poisson 10 19558 16384 28460001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_poisson 10 19558 16384 13910001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_poisson 10 19558 16384 11320001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_poisson 10 19558 16384 29360001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_poisson 10 19558 16384 16640001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_poisson 10 19558 16384 13370001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_poisson 10 19558 16384 7410001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_poisson 10 19558 16384 7350001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_poisson 10 19558 16384 6420001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_poisson 10 19558 16384 6940001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_poisson 10 19558 16384 5920001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_poisson 10 19558 16384 5300001 4 >> outputs/seq_sparse/19558_16384_poisson_4_time.txt

# 33980001 2.13946
# 23390001 2.24732
# 21050001 2.08441
# 28460001 1.01067
# 13910001 0.484598
# 11320001 0.465061
# 29360001 0.918271
# 16640001 0.326206
# 13370001 0.344167
# 7410001 0.370071
# 7350001 0.435459
# 6420001 0.411391
# 6940001 0.262218
# 5920001 0.299227
# 5300001 0.287025