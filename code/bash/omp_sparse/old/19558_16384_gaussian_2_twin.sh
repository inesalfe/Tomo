#!/bin/bash

# bash bash/omp_sparse/19558_16384_gaussian_2_twin.sh &

# scp -J inesaf@maxwell.inesc-id.pt inesaf@ulam:/home/inesaf/Documents/Tomo/code/errors/tomo_stop/ct_gaussian/* errors/tomo_stop/ct_gaussian/

rm outputs/omp_sparse/19558_16384_gaussian_2_twin.txt

export OMP_NUM_THREADS=1

### SEQUENTIAL + ALPHA

# ./bin/CK_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.15 30000000 1 2 &
# ./bin/CK_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.3 30000000 1 2 &
# ./bin/CK_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.5 30000000 1 2 &
# ./bin/CK_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.75 30000000 1 2 &
# ./bin/CK_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 1 30000000 1 2 &
# ./bin/CK_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 1.5 30000000 1 2 &
# ./bin/CK_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 30000000 1 2 &

# ./bin/CK_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.15 10000000 1 2 &
# ./bin/CK_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.3 10000000 1 2 &
# ./bin/CK_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.5 10000000 1 2 &
# ./bin/CK_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.75 10000000 1 2 &
# ./bin/CK_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 1 10000000 1 2 &
# ./bin/CK_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 1.5 10000000 1 2 &
# ./bin/CK_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 10000000 1 2 &

# ./bin/SRKWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.15 30000000 1 2 &
# ./bin/SRKWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.3 30000000 1 2 &
# ./bin/SRKWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.5 30000000 1 2 &
# ./bin/SRKWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.75 30000000 1 2 &
# ./bin/SRKWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 1 30000000 1 2 &
# ./bin/SRKWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 1.5 30000000 1 2 &
# ./bin/SRKWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 30000000 1 2 &

# ./bin/SRKWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.15 10000000 1 2 &
# ./bin/SRKWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.3 10000000 1 2 &
# ./bin/SRKWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.5 10000000 1 2 &
# ./bin/SRKWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 0.75 10000000 1 2 &
# ./bin/SRKWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 1 10000000 1 2 &
# ./bin/SRKWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 1.5 10000000 1 2 &
# ./bin/SRKWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 2 10000000 1 2 &

### AVERAGING (sem alpha)

# ./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 1 2 &

# ./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 1 2 &

# ./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 30000000 1 2 &

# ./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 10000000 1 2 &

### AVERAGING (com alpha)

# ./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 30000000 1 2 &
# ./bin/CKA_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 30000000 1 2 &

# ./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 10000000 1 2 &
# ./bin/CKA_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 10000000 1 2 &

# ./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 30000000 1 2 &
# ./bin/SRKAWOR_twin_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 30000000 1 2 &

# ./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 0.5 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 1.5 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 2.5 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3 10000000 1 2 &
# ./bin/SRKAWOR_twin_box_proj_csr_max_it_alpha_data.exe ct_gaussian 10 19558 16384 4 3.5 10000000 1 2 &

### BLOCOS (com e sem restrições mas sem alpha)

./bin/CKAB_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 1 2 &
./bin/CKAB_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 1 2 &
./bin/CKAB_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 1 2 &
./bin/CKAB_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 1 2 &
./bin/CKAB_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 1 2 &
./bin/CKAB_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 1 2 &
./bin/CKAB_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 1 2 &

./bin/CKAB_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 1 2 &
./bin/CKAB_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 1 2 &
./bin/CKAB_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 1 2 &
./bin/CKAB_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 1 2 &
./bin/CKAB_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 1 2 &
./bin/CKAB_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 1 2 &
./bin/CKAB_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 1 2 &

./bin/SRKABWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 1 2 &
./bin/SRKABWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 1 2 &
./bin/SRKABWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 1 2 &
./bin/SRKABWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 1 2 &
./bin/SRKABWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 1 2 &
./bin/SRKABWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 1 2 &
./bin/SRKABWOR_twin_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 1 2 &

./bin/SRKABWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 1 15000 5000 1 2 &
./bin/SRKABWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 2 15000 5000 1 2 &
./bin/SRKABWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 4 15000 5000 1 2 &
./bin/SRKABWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 8 15000 5000 1 2 &
./bin/SRKABWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 16 15000 5000 1 2 &
./bin/SRKABWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 32 15000 5000 1 2 &
./bin/SRKABWOR_twin_box_proj_csr_max_it_data.exe ct_gaussian 10 19558 16384 64 15000 5000 1 2 &