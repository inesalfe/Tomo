#!/bin/bash

# bash bash/seq_sparse/14750_4096_gaussian_2_time.sh > outputs/progress/14750_4096_gaussian_2_time.txt &

rm outputs/seq_sparse/14750_4096_gaussian_2_time.txt

./bin/RK_csr_max_it.exe ct_gaussian 10 14750 4096 2590001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_csr_max_it.exe ct_gaussian 10 14750 4096 1700001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_csr_max_it.exe ct_gaussian 10 14750 4096 920001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 2890001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 23090001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 25030001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 3160001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 29530001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_gaussian 10 14750 4096 4690001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_gaussian 10 14750 4096 22840001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_gaussian 10 14750 4096 6580001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_gaussian 10 14750 4096 10900001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_gaussian 10 14750 4096 22840001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_gaussian 10 14750 4096 6580001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_gaussian 10 14750 4096 10310001 2 >> outputs/seq_sparse/14750_4096_gaussian_2_time.txt

# 14750 4096 29.9566 2590001 2.6373 0.0429218 30.0613
# 14750 4096 3.36349 1700001 12.9734 0.217215 3.44661
# 14750 4096 3.04589 920001 3.9459 0.077297 3.11131
# 14750 4096 16.1878 2890001 2.67243 0.0369216 16.2575
# 14750 4096 37.9123 23090001 8.98496 8.9973 0.0618325 37.989
# 14750 4096 71.853 25030001 3.61113 3.61529 0.0309724 71.9255
# 14750 4096 22.905 3160001 2.67411 92.0055 0.0365259 22.9907
# 14750 4096 40.9751 29530001 9.03204 77.1758 0.0564541 41.0548
# 14750 4096 19.1854 4690001 3.88706 70.0181 0.0313027 19.2613
# 14750 4096 215.875 22840001 3.70872 0.00975026 215.984
# 14750 4096 28.8468 6580001 6.01897 0.0172879 28.9319
# 14750 4096 54.9128 10900001 4.00458 0.0124189 55.0456
# 14750 4096 233.247 22840001 3.74587 0.00951769 233.332
# 14750 4096 36.8315 6580001 6.08548 0.0167131 36.9086
# 14750 4096 52.6708 10310001 4.0168 0.011462 52.74