#!/bin/bash

# bash bash/seq_sparse/14750_4096_gaussian_RK.sh > outputs/progress/14750_4096_gaussian_RK.txt &

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 1
echo "RK ct_poisson 10 14750 4096 10000000 10000 1"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 1
echo "RK_box_ineq ct_poisson 10 14750 4096 10000000 10000 1"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 1
echo "RK_box_proj ct_poisson 10 14750 4096 10000000 10000 1"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 1
echo "RK_pos_ineq ct_poisson 10 14750 4096 10000000 10000 1"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 1
echo "RK_pos_proj ct_poisson 10 14750 4096 10000000 10000 1"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 1
echo "RK ct_poisson 10 14750 4096 30000000 10000 1"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 1
echo "RK_box_ineq ct_poisson 10 14750 4096 30000000 10000 1"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 1
echo "RK_box_proj ct_poisson 10 14750 4096 30000000 10000 1"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 1
echo "RK_pos_ineq ct_poisson 10 14750 4096 30000000 10000 1"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 1
echo "RK_pos_proj ct_poisson 10 14750 4096 30000000 10000 1"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 1
echo "RK ct_poisson 10 14750 4096 50000000 10000 1"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 1
echo "RK_box_ineq ct_poisson 10 14750 4096 50000000 10000 1"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 1
echo "RK_box_proj ct_poisson 10 14750 4096 50000000 10000 1"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 1
echo "RK_pos_ineq ct_poisson 10 14750 4096 50000000 10000 1"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 1
echo "RK_pos_proj ct_poisson 10 14750 4096 50000000 10000 1"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 2
echo "RK ct_poisson 10 14750 4096 10000000 10000 2"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 2
echo "RK_box_ineq ct_poisson 10 14750 4096 10000000 10000 2"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 2
echo "RK_box_proj ct_poisson 10 14750 4096 10000000 10000 2"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 2
echo "RK_pos_ineq ct_poisson 10 14750 4096 10000000 10000 2"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 2
echo "RK_pos_proj ct_poisson 10 14750 4096 10000000 10000 2"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 2
echo "RK ct_poisson 10 14750 4096 30000000 10000 2"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 2
echo "RK_box_ineq ct_poisson 10 14750 4096 30000000 10000 2"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 2
echo "RK_box_proj ct_poisson 10 14750 4096 30000000 10000 2"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 2
echo "RK_pos_ineq ct_poisson 10 14750 4096 30000000 10000 2"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 2
echo "RK_pos_proj ct_poisson 10 14750 4096 30000000 10000 2"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 2
echo "RK ct_poisson 10 14750 4096 50000000 10000 2"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 2
echo "RK_box_ineq ct_poisson 10 14750 4096 50000000 10000 2"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 2
echo "RK_box_proj ct_poisson 10 14750 4096 50000000 10000 2"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 2
echo "RK_pos_ineq ct_poisson 10 14750 4096 50000000 10000 2"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 2
echo "RK_pos_proj ct_poisson 10 14750 4096 50000000 10000 2"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 3
echo "RK ct_poisson 10 14750 4096 10000000 10000 3"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 3
echo "RK_box_ineq ct_poisson 10 14750 4096 10000000 10000 3"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 3
echo "RK_box_proj ct_poisson 10 14750 4096 10000000 10000 3"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 3
echo "RK_pos_ineq ct_poisson 10 14750 4096 10000000 10000 3"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 3
echo "RK_pos_proj ct_poisson 10 14750 4096 10000000 10000 3"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 3
echo "RK ct_poisson 10 14750 4096 30000000 10000 3"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 3
echo "RK_box_ineq ct_poisson 10 14750 4096 30000000 10000 3"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 3
echo "RK_box_proj ct_poisson 10 14750 4096 30000000 10000 3"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 3
echo "RK_pos_ineq ct_poisson 10 14750 4096 30000000 10000 3"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 3
echo "RK_pos_proj ct_poisson 10 14750 4096 30000000 10000 3"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 3
echo "RK ct_poisson 10 14750 4096 50000000 10000 3"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 3
echo "RK_box_ineq ct_poisson 10 14750 4096 50000000 10000 3"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 3
echo "RK_box_proj ct_poisson 10 14750 4096 50000000 10000 3"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 3
echo "RK_pos_ineq ct_poisson 10 14750 4096 50000000 10000 3"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 3
echo "RK_pos_proj ct_poisson 10 14750 4096 50000000 10000 3"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 4
echo "RK ct_poisson 10 14750 4096 10000000 10000 4"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 4
echo "RK_box_ineq ct_poisson 10 14750 4096 10000000 10000 4"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 4
echo "RK_box_proj ct_poisson 10 14750 4096 10000000 10000 4"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 4
echo "RK_pos_ineq ct_poisson 10 14750 4096 10000000 10000 4"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 10000000 10000 4
echo "RK_pos_proj ct_poisson 10 14750 4096 10000000 10000 4"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 4
echo "RK ct_poisson 10 14750 4096 30000000 10000 4"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 4
echo "RK_box_ineq ct_poisson 10 14750 4096 30000000 10000 4"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 4
echo "RK_box_proj ct_poisson 10 14750 4096 30000000 10000 4"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 4
echo "RK_pos_ineq ct_poisson 10 14750 4096 30000000 10000 4"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 30000000 10000 4
echo "RK_pos_proj ct_poisson 10 14750 4096 30000000 10000 4"

./bin/RK_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 4
echo "RK ct_poisson 10 14750 4096 50000000 10000 4"
./bin/RK_box_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 4
echo "RK_box_ineq ct_poisson 10 14750 4096 50000000 10000 4"
./bin/RK_box_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 4
echo "RK_box_proj ct_poisson 10 14750 4096 50000000 10000 4"
./bin/RK_pos_ineq_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 4
echo "RK_pos_ineq ct_poisson 10 14750 4096 50000000 10000 4"
./bin/RK_pos_proj_csr_max_it_data.exe ct_poisson 10 14750 4096 50000000 10000 4
echo "RK_pos_proj ct_poisson 10 14750 4096 50000000 10000 4"