#!/bin/bash

# bash bash/seq_sparse/29498_16384_gaussian_3_sol.sh &

export OMP_NUM_THREADS=1

# ./bin/CK_csr_max_it_data.exe ct_gaussian 1 29498 16384 30000000 10000 3
# ./bin/CK_box_proj_csr_max_it_data.exe ct_gaussian 1 29498 16384 30000000 10000 3
# ./bin/CK_pos_proj_csr_max_it_data.exe ct_gaussian 1 29498 16384 30000000 10000 3
# ./bin/RK_csr_max_it_data.exe ct_gaussian 1 29498 16384 30000000 10000 3
# ./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 1 29498 16384 30000000 10000 3
# ./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 1 29498 16384 30000000 10000 3
# ./bin/SRKWOR_csr_max_it_data.exe ct_gaussian 1 29498 16384 30000000 10000 3
# ./bin/SRKWOR_box_proj_csr_max_it_data.exe ct_gaussian 1 29498 16384 30000000 10000 3
# ./bin/SRKWOR_pos_proj_csr_max_it_data.exe ct_gaussian 1 29498 16384 30000000 10000 3

# python3 plots/seq_sparse/RK.py ct_gaussian 29498 16384 30000000 3
# python3 plots/seq_sparse/CK.py ct_gaussian 29498 16384 30000000 3
# python3 plots/seq_sparse/SRKWOR.py ct_gaussian 29498 16384 30000000 3
# python3 plots/seq_sparse/RK_pos_proj.py ct_gaussian 29498 16384 30000000 3
# python3 plots/seq_sparse/CK_pos_proj.py ct_gaussian 29498 16384 30000000 3
# python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_gaussian 29498 16384 30000000 3
# python3 plots/seq_sparse/RK_box_proj.py ct_gaussian 29498 16384 30000000 3
# python3 plots/seq_sparse/CK_box_proj.py ct_gaussian 29498 16384 30000000 3
# python3 plots/seq_sparse/SRKWOR_box_proj.py ct_gaussian 29498 16384 30000000 3

# 2180001 1.7955
# 1140001 3.79211
# 340001 3.84719
# 840001 0.766903
# 950001 0.811773
# 280001 1.72743
# 640001 0.720762
# 950001 0.770289
# 640001 0.76586

./bin/RK_csr_max_it_sol.exe ct_gaussian 1 29498 16384 2180001 3
./bin/CK_csr_max_it_sol.exe ct_gaussian 1 29498 16384 1140001 3
./bin/SRKWOR_csr_max_it_sol.exe ct_gaussian 1 29498 16384 340001 3
./bin/RK_pos_proj_csr_max_it_sol.exe ct_gaussian 1 29498 16384 840001 3
./bin/CK_pos_proj_csr_max_it_sol.exe ct_gaussian 1 29498 16384 950001 3
./bin/SRKWOR_pos_proj_csr_max_it_sol.exe ct_gaussian 1 29498 16384 280001 3
./bin/RK_box_proj_csr_max_it_sol.exe ct_gaussian 1 29498 16384 640001 3
./bin/CK_box_proj_csr_max_it_sol.exe ct_gaussian 1 29498 16384 950001 3
./bin/SRKWOR_box_proj_csr_max_it_sol.exe ct_gaussian 1 29498 16384 640001 3