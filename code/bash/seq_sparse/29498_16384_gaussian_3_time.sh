#!/bin/bash

# bash bash/seq_sparse/29498_16384_gaussian_3_time.sh > outputs/progress/29498_16384_gaussian_3_time.txt &

rm outputs/seq_sparse/29498_16384_gaussian_3_time.txt

./bin/RK_csr_max_it.exe ct_gaussian 1 29498 16384 2180001 3 >> outputs/seq_sparse/29498_16384_gaussian_3_time.txt
./bin/CK_csr_max_it.exe ct_gaussian 1 29498 16384 1140001 3 >> outputs/seq_sparse/29498_16384_gaussian_3_time.txt
./bin/SRKWOR_csr_max_it.exe ct_gaussian 1 29498 16384 340001 3 >> outputs/seq_sparse/29498_16384_gaussian_3_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_gaussian 1 29498 16384 840001 3 >> outputs/seq_sparse/29498_16384_gaussian_3_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_gaussian 1 29498 16384 950001 3 >> outputs/seq_sparse/29498_16384_gaussian_3_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_gaussian 1 29498 16384 280001 3 >> outputs/seq_sparse/29498_16384_gaussian_3_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_gaussian 1 29498 16384 640001 3 >> outputs/seq_sparse/29498_16384_gaussian_3_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_gaussian 1 29498 16384 950001 3 >> outputs/seq_sparse/29498_16384_gaussian_3_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_gaussian 1 29498 16384 640001 3 >> outputs/seq_sparse/29498_16384_gaussian_3_time.txt

# 2180001 1.7955
# 1140001 3.79211
# 340001 3.84719
# 840001 0.766903
# 950001 0.811773
# 280001 1.72743
# 640001 0.720762
# 950001 0.770289
# 640001 0.76586

# 29498 16384 1.02023 2180001 94.9852 3.22383 1.47488
# 29498 16384 0.243262 1140001 5623.47 14.3801 0.346042
# 29498 16384 0.121674 340001 699.4 14.8009 0.225295
# 29498 16384 0.448395 840001 122.663 0.58814 0.551298
# 29498 16384 0.245423 950001 195.009 0.658975 0.346919
# 29498 16384 0.114564 280001 271.319 2.98403 0.217668
# 29498 16384 0.459732 640001 123.862 0.519498 0.562372
# 29498 16384 0.285953 950001 203.022 0.593346 0.388975
# 29498 16384 0.374113 640001 128.861 0.586541 0.476314