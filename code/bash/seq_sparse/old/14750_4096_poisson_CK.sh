#!/bin/bash

# bash bash/seq_sparse/14750_4096_poisson_CK.sh > outputs/progress/14750_4096_poisson_CK.txt &

./bin/CK_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 1
echo "CK ct_poisson 1 14750 4096 10000000 10000 1"
./bin/CK_box_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 1
echo "CK_box_ineq ct_poisson 1 14750 4096 10000000 10000 1"
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 1
echo "CK_box_proj ct_poisson 1 14750 4096 10000000 10000 1"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 1
echo "CK_pos_ineq ct_poisson 1 14750 4096 10000000 10000 1"
./bin/CK_pos_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 1
echo "CK_pos_proj ct_poisson 1 14750 4096 10000000 10000 1"

./bin/CK_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 1
echo "CK ct_poisson 1 14750 4096 30000000 10000 1"
./bin/CK_box_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 1
echo "CK_box_ineq ct_poisson 1 14750 4096 30000000 10000 1"
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 1
echo "CK_box_proj ct_poisson 1 14750 4096 30000000 10000 1"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 1
echo "CK_pos_ineq ct_poisson 1 14750 4096 30000000 10000 1"
./bin/CK_pos_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 1
echo "CK_pos_proj ct_poisson 1 14750 4096 30000000 10000 1"

./bin/CK_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 2
echo "CK ct_poisson 1 14750 4096 10000000 10000 2"
./bin/CK_box_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 2
echo "CK_box_ineq ct_poisson 1 14750 4096 10000000 10000 2"
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 2
echo "CK_box_proj ct_poisson 1 14750 4096 10000000 10000 2"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 2
echo "CK_pos_ineq ct_poisson 1 14750 4096 10000000 10000 2"
./bin/CK_pos_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 2
echo "CK_pos_proj ct_poisson 1 14750 4096 10000000 10000 2"

./bin/CK_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 2
echo "CK ct_poisson 1 14750 4096 30000000 10000 2"
./bin/CK_box_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 2
echo "CK_box_ineq ct_poisson 1 14750 4096 30000000 10000 2"
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 2
echo "CK_box_proj ct_poisson 1 14750 4096 30000000 10000 2"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 2
echo "CK_pos_ineq ct_poisson 1 14750 4096 30000000 10000 2"
./bin/CK_pos_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 2
echo "CK_pos_proj ct_poisson 1 14750 4096 30000000 10000 2"

./bin/CK_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 3
echo "CK ct_poisson 1 14750 4096 10000000 10000 3"
./bin/CK_box_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 3
echo "CK_box_ineq ct_poisson 1 14750 4096 10000000 10000 3"
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 3
echo "CK_box_proj ct_poisson 1 14750 4096 10000000 10000 3"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 3
echo "CK_pos_ineq ct_poisson 1 14750 4096 10000000 10000 3"
./bin/CK_pos_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 3
echo "CK_pos_proj ct_poisson 1 14750 4096 10000000 10000 3"

./bin/CK_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 3
echo "CK ct_poisson 1 14750 4096 30000000 10000 3"
./bin/CK_box_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 3
echo "CK_box_ineq ct_poisson 1 14750 4096 30000000 10000 3"
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 3
echo "CK_box_proj ct_poisson 1 14750 4096 30000000 10000 3"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 3
echo "CK_pos_ineq ct_poisson 1 14750 4096 30000000 10000 3"
./bin/CK_pos_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 3
echo "CK_pos_proj ct_poisson 1 14750 4096 30000000 10000 3"

./bin/CK_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 4
echo "CK ct_poisson 1 14750 4096 10000000 10000 4"
./bin/CK_box_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 4
echo "CK_box_ineq ct_poisson 1 14750 4096 10000000 10000 4"
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 4
echo "CK_box_proj ct_poisson 1 14750 4096 10000000 10000 4"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 4
echo "CK_pos_ineq ct_poisson 1 14750 4096 10000000 10000 4"
./bin/CK_pos_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 10000000 10000 4
echo "CK_pos_proj ct_poisson 1 14750 4096 10000000 10000 4"

./bin/CK_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 4
echo "CK ct_poisson 1 14750 4096 30000000 10000 4"
./bin/CK_box_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 4
echo "CK_box_ineq ct_poisson 1 14750 4096 30000000 10000 4"
./bin/CK_box_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 4
echo "CK_box_proj ct_poisson 1 14750 4096 30000000 10000 4"
./bin/CK_pos_ineq_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 4
echo "CK_pos_ineq ct_poisson 1 14750 4096 30000000 10000 4"
./bin/CK_pos_proj_csr_max_it_data.exe ct_poisson 1 14750 4096 30000000 10000 4
echo "CK_pos_proj ct_poisson 1 14750 4096 30000000 10000 4"