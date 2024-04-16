#!/bin/bash

# bash bash/omp_sparse/blocks/19558_16384_gaussian_2_blocks.sh &

# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/omp_sparse/ct_gaussian/*KAB* errors/omp_sparse/ct_gaussian/

rm outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt

export OMP_NUM_THREADS=1

./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &

./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &

./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &

./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/CKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &

./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/RKAB_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &

./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &
./bin/SRKABWOR_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 1000 10 2 >> outputs/omp_sparse/19558_16384_gaussian_2_blocks.txt &