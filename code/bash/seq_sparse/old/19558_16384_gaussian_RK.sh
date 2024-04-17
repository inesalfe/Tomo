#!/bin/bash

# bash bash/seq_sparse/19558_16384_gaussian_RK.sh > outputs/progress/19558_16384_gaussian_RK.txt &

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 1
echo "RK ct_gaussian 10 19558 16384 10000000 10000 1"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 1
echo "RK_box_ineq ct_gaussian 10 19558 16384 10000000 10000 1"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 1
echo "RK_box_proj ct_gaussian 10 19558 16384 10000000 10000 1"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 1
echo "RK_pos_ineq ct_gaussian 10 19558 16384 10000000 10000 1"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 1
echo "RK_pos_proj ct_gaussian 10 19558 16384 10000000 10000 1"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 1
echo "RK ct_gaussian 10 19558 16384 30000000 10000 1"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 1
echo "RK_box_ineq ct_gaussian 10 19558 16384 30000000 10000 1"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 1
echo "RK_box_proj ct_gaussian 10 19558 16384 30000000 10000 1"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 1
echo "RK_pos_ineq ct_gaussian 10 19558 16384 30000000 10000 1"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 1
echo "RK_pos_proj ct_gaussian 10 19558 16384 30000000 10000 1"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 1
echo "RK ct_gaussian 10 19558 16384 50000000 10000 1"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 1
echo "RK_box_ineq ct_gaussian 10 19558 16384 50000000 10000 1"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 1
echo "RK_box_proj ct_gaussian 10 19558 16384 50000000 10000 1"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 1
echo "RK_pos_ineq ct_gaussian 10 19558 16384 50000000 10000 1"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 1
echo "RK_pos_proj ct_gaussian 10 19558 16384 50000000 10000 1"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "RK ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "RK_box_ineq ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "RK_box_proj ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "RK_pos_ineq ct_gaussian 10 19558 16384 10000000 10000 2"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 2
echo "RK_pos_proj ct_gaussian 10 19558 16384 10000000 10000 2"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK_box_ineq ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK_box_proj ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK_pos_ineq ct_gaussian 10 19558 16384 30000000 10000 2"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 2
echo "RK_pos_proj ct_gaussian 10 19558 16384 30000000 10000 2"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK ct_gaussian 10 19558 16384 50000000 10000 2"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK_box_ineq ct_gaussian 10 19558 16384 50000000 10000 2"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK_box_proj ct_gaussian 10 19558 16384 50000000 10000 2"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK_pos_ineq ct_gaussian 10 19558 16384 50000000 10000 2"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 2
echo "RK_pos_proj ct_gaussian 10 19558 16384 50000000 10000 2"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 3
echo "RK ct_gaussian 10 19558 16384 10000000 10000 3"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 3
echo "RK_box_ineq ct_gaussian 10 19558 16384 10000000 10000 3"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 3
echo "RK_box_proj ct_gaussian 10 19558 16384 10000000 10000 3"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 3
echo "RK_pos_ineq ct_gaussian 10 19558 16384 10000000 10000 3"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 3
echo "RK_pos_proj ct_gaussian 10 19558 16384 10000000 10000 3"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 3
echo "RK ct_gaussian 10 19558 16384 30000000 10000 3"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 3
echo "RK_box_ineq ct_gaussian 10 19558 16384 30000000 10000 3"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 3
echo "RK_box_proj ct_gaussian 10 19558 16384 30000000 10000 3"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 3
echo "RK_pos_ineq ct_gaussian 10 19558 16384 30000000 10000 3"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 3
echo "RK_pos_proj ct_gaussian 10 19558 16384 30000000 10000 3"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 3
echo "RK ct_gaussian 10 19558 16384 50000000 10000 3"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 3
echo "RK_box_ineq ct_gaussian 10 19558 16384 50000000 10000 3"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 3
echo "RK_box_proj ct_gaussian 10 19558 16384 50000000 10000 3"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 3
echo "RK_pos_ineq ct_gaussian 10 19558 16384 50000000 10000 3"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 3
echo "RK_pos_proj ct_gaussian 10 19558 16384 50000000 10000 3"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 4
echo "RK ct_gaussian 10 19558 16384 10000000 10000 4"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 4
echo "RK_box_ineq ct_gaussian 10 19558 16384 10000000 10000 4"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 4
echo "RK_box_proj ct_gaussian 10 19558 16384 10000000 10000 4"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 4
echo "RK_pos_ineq ct_gaussian 10 19558 16384 10000000 10000 4"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 10000000 10000 4
echo "RK_pos_proj ct_gaussian 10 19558 16384 10000000 10000 4"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 4
echo "RK ct_gaussian 10 19558 16384 30000000 10000 4"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 4
echo "RK_box_ineq ct_gaussian 10 19558 16384 30000000 10000 4"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 4
echo "RK_box_proj ct_gaussian 10 19558 16384 30000000 10000 4"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 4
echo "RK_pos_ineq ct_gaussian 10 19558 16384 30000000 10000 4"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 30000000 10000 4
echo "RK_pos_proj ct_gaussian 10 19558 16384 30000000 10000 4"

./bin/RK_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 4
echo "RK ct_gaussian 10 19558 16384 50000000 10000 4"
./bin/RK_box_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 4
echo "RK_box_ineq ct_gaussian 10 19558 16384 50000000 10000 4"
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 4
echo "RK_box_proj ct_gaussian 10 19558 16384 50000000 10000 4"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 4
echo "RK_pos_ineq ct_gaussian 10 19558 16384 50000000 10000 4"
./bin/RK_pos_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 50000000 10000 4
echo "RK_pos_proj ct_gaussian 10 19558 16384 50000000 10000 4"