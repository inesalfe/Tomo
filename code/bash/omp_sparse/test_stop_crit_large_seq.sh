#!/bin/bash

# bash bash/omp_sparse/test_stop_crit_large_seq.sh &

rm outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt

export OMP_NUM_THREADS=1

./bin/CK_box_proj_stop.exe ct_gaussian 1 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/CK_box_proj_stop.exe ct_gaussian 1 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/CK_box_proj_stop.exe ct_gaussian 1 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/CK_box_proj_stop.exe ct_gaussian 1 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt

./bin/CK_box_proj_stop_2.exe ct_gaussian 1 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/CK_box_proj_stop_2.exe ct_gaussian 1 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/CK_box_proj_stop_2.exe ct_gaussian 1 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/CK_box_proj_stop_2.exe ct_gaussian 1 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt

./bin/SRKWOR_box_proj_stop.exe ct_gaussian 1 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 1 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 1 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/SRKWOR_box_proj_stop.exe ct_gaussian 1 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt

./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 1 117372 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 1 234664 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 1 469368 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt
./bin/SRKWOR_box_proj_stop_2.exe ct_gaussian 1 938720 262144 7 7 2 >> outputs/omp_sparse/ct_gaussian/test_stop_crit_large_seq.txt

# 117372 262144 4655.84 10702 109.75 81.9246 4657.48
# 234664 262144 44.1933 42 1512.44 11.1931 51.042
# 469368 262144 114.758 59 12722 3.77755 128.105
# 938720 262144 212.913 55 67266.5 5.35536 232.535
# 117372 262144 51.6301 118 4508.48 62.0274 53.2578
# 234664 262144 35.8142 37 26649.7 11.4817 39.1977
# 469368 262144 128.649 73 104217 5.09914 135.291
# 938720 262144 325.534 92 444130 8.16639 338.934
# 117372 262144 7561.02 12103 109.963 68.6174 7562.68
# 234664 262144 387.634 288 710.369 16.1634 390.973
# 469368 262144 293.976 101 3847.71 2.95453 300.658
# 938720 262144 212.895 32 17365.7 2.93856 226.023
# 117372 262144 309.051 643 4216.7 44.4266 310.696
# 234664 262144 70.3466 66 30630.4 13.9185 73.7219
# 469368 262144 84.9808 37 134419 6.59407 91.7289
# 938720 262144 71.9415 11 672470 11.8955 85.4089