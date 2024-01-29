#!/bin/bash

# bash bash/seq_sparse/18766_8048.sh > outputs/progress/18766_8048.txt &

rm outputs/seq_sparse/18766_8048.txt

str=$(./bin/RK_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/RK_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/RK_pos_ineq_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/RK_pos_ineq_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/RK_pos_proj_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/RK_pos_proj_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/RK_box_ineq_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/RK_box_ineq_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/RK_box_proj_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/RK_box_proj_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/CK_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/CK_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/CK_pos_ineq_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/CK_pos_ineq_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/CK_pos_proj_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/CK_pos_proj_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/CK_box_ineq_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/CK_box_ineq_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/CK_box_proj_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/CK_box_proj_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/SRKWOR_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/SRKWOR_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/SRKWOR_pos_ineq_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/SRKWOR_pos_ineq_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/SRKWOR_pos_proj_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/SRKWOR_pos_proj_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/SRKWOR_box_ineq_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/SRKWOR_box_ineq_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt

str=$(./bin/SRKWOR_box_proj_csr_error.exe ct 10 1E-8 18766 8048)
echo "$str"
IFS=' ' read -r -a arr <<< "$str"
it=${arr[3]}
./bin/SRKWOR_box_proj_csr_max_it.exe ct 10 18766 8048 $it >> outputs/seq_sparse/18766_8048.txt