#!/bin/bash

# bash bash/seq_sparse/29498_16384_gaussian_2_time.sh > outputs/progress/29498_16384_gaussian_2_time.txt &

rm outputs/seq_sparse/29498_16384_gaussian_2_time.txt

./bin/RK_csr_max_it.exe ct_gaussian 10 29498 16384 5050001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_csr_max_it.exe ct_gaussian 10 29498 16384 2290001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_csr_max_it.exe ct_gaussian 10 29498 16384 810001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/RK_pos_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 5560001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_pos_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 2160001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 610001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/RK_box_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 5170001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_box_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 2930001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_box_ineq_csr_max_it.exe ct_gaussian 10 29498 16384 1280001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/RK_pos_proj_csr_max_it.exe ct_gaussian 10 29498 16384 2030001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_pos_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1980001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_pos_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1360001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/RK_box_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1340001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/CK_box_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1980001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt
./bin/SRKWOR_box_proj_csr_max_it.exe ct_gaussian 10 29498 16384 1400001 2 >> outputs/seq_sparse/29498_16384_gaussian_2_time.txt

# 29498 16384 60.6351 5050001 13.1282 0.957161 60.9357
# 29498 16384 8.63347 2290001 451.503 2.54182 8.90228
# 29498 16384 4.97975 810001 36.5701 2.20585 5.2326
# 29498 16384 51.6611 5560001 13.2427 0.766191 51.9135
# 29498 16384 5.99379 2160001 52.4 52.436 0.463885 6.36673
# 29498 16384 3.05308 610001 35.7112 35.7638 0.678808 3.35324
# 29498 16384 45.4773 5170001 13.0141 346.747 0.751208 45.7611
# 29498 16384 5.02358 2930001 47.1565 228.432 0.431148 5.27955
# 29498 16384 3.48795 1280001 32.2234 290.327 0.440239 3.72885
# 29498 16384 20.837 2030001 25.5417 0.126375 21.0671
# 29498 16384 9.0851 1980001 44.1288 0.172872 9.31135
# 29498 16384 10.9128 1360001 29.4035 0.16071 11.1402
# 29498 16384 13.8492 1340001 26.3614 0.11005 14.0805
# 29498 16384 9.30558 1980001 45.8635 0.158468 9.53406
# 29498 16384 11.3077 1400001 27.759 0.11577 11.541