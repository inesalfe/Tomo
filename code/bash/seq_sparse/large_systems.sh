#!/bin/bash

# bash bash/seq_sparse/large_systems.sh > outputs/progress/large_systems.txt &

# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/seq_sparse/ct_gaussian/*262144* errors/seq_sparse/ct_gaussian/

./bin/CK_csr_max_it_data.exe ct_gaussian 2 117372 262144 500000000 1000000 2 &
./bin/CK_box_proj_csr_max_it_data.exe ct_gaussian 2 117372 262144 500000000 100000 2 &

./bin/RK_csr_max_it_data.exe ct_gaussian 2 117372 262144 500000000 1000000 2 &
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 2 117372 262144 500000000 100000 2 &

./bin/SRKWOR_csr_max_it_data.exe ct_gaussian 2 117372 262144 500000000 1000000 2 &
./bin/SRKWOR_box_proj_csr_max_it_data.exe ct_gaussian 2 117372 262144 500000000 100000 2 &

./bin/CK_csr_max_it_data.exe ct_gaussian 2 234664 262144 200000000 1000000 2 &
./bin/CK_box_proj_csr_max_it_data.exe ct_gaussian 2 234664 262144 50000000 100000 2 &

./bin/RK_csr_max_it_data.exe ct_gaussian 2 234664 262144 200000000 1000000 2 &
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 2 234664 262144 50000000 100000 2 &

./bin/SRKWOR_csr_max_it_data.exe ct_gaussian 2 234664 262144 200000000 1000000 2 &
./bin/SRKWOR_box_proj_csr_max_it_data.exe ct_gaussian 2 234664 262144 50000000 100000 2 &

./bin/CK_csr_max_it_data.exe ct_gaussian 2 469368 262144 500000000 1000000 2 &
./bin/CK_box_proj_csr_max_it_data.exe ct_gaussian 2 469368 262144 50000000 100000 2 &

./bin/RK_csr_max_it_data.exe ct_gaussian 2 469368 262144 500000000 1000000 2 &
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 2 469368 262144 50000000 100000 2 &

./bin/SRKWOR_csr_max_it_data.exe ct_gaussian 2 469368 262144 500000000 1000000 2 &
./bin/SRKWOR_box_proj_csr_max_it_data.exe ct_gaussian 2 469368 262144 50000000 100000 2 &

./bin/CK_csr_max_it_data.exe ct_gaussian 2 938720 262144 1000000000 1000000 2 &
./bin/CK_box_proj_csr_max_it_data.exe ct_gaussian 2 938720 262144 100000000 100000 2 &

./bin/RK_csr_max_it_data.exe ct_gaussian 2 938720 262144 100000000 1000000 2 &
./bin/RK_box_proj_csr_max_it_data.exe ct_gaussian 2 938720 262144 100000000 100000 2 &

./bin/SRKWOR_csr_max_it_data.exe ct_gaussian 2 938720 262144 500000000 1000000 2 &
./bin/SRKWOR_box_proj_csr_max_it_data.exe ct_gaussian 2 938720 262144 100000000 100000 2 &