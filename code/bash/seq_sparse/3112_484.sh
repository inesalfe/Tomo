#!/bin/bash

# bash bash/seq_sparse/3112_484.sh > outputs/progress/3112_484.txt &

str=$(./bin/RK_pos_proj_csr_error.exe ct 10 1E-8 3112 484)
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/RK_pos_proj_csr_max_it.exe ct 10 3112 484 $it

str=$(./bin/RK_box_proj_csr_error.exe ct 10 1E-8 3112 484)
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/RK_box_proj_csr_max_it.exe ct 10 3112 484 $it

str=$(./bin/CK_pos_proj_csr_error.exe ct 10 1E-8 3112 484)
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/CK_pos_proj_csr_max_it.exe ct 10 3112 484 $it

str=$(./bin/CK_box_proj_csr_error.exe ct 10 1E-8 3112 484)
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/CK_box_proj_csr_max_it.exe ct 10 3112 484 $it

str=$(./bin/SRKWOR_pos_proj_csr_error.exe ct 10 1E-8 3112 484)
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/SRKWOR_pos_proj_csr_max_it.exe ct 10 3112 484 $it

str=$(./bin/SRKWOR_box_proj_csr_error.exe ct 10 1E-8 3112 484)
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/SRKWOR_box_proj_csr_max_it.exe ct 10 3112 484 $it