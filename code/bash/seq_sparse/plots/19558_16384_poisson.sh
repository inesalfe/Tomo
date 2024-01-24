#!/bin/bash

# bash bash/seq_sparse/plots/19558_16384_poisson.sh >> outputs/seq_sparse/19558_16384_poisson.txt

python3 plots/seq_sparse/CK.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/CK_box_ineq.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/CK_box_proj.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/CK_pos_ineq.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/CK_pos_proj.py ct_poisson 19558 16384 10000000 1

python3 plots/seq_sparse/CK.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/CK_box_ineq.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/CK_box_proj.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/CK_pos_ineq.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/CK_pos_proj.py ct_poisson 19558 16384 30000000 1

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 10000000 1

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 30000000 1

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 50000000 1
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 50000000 1
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 50000000 1
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 50000000 1
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 50000000 1

python3 plots/seq_sparse/SRKWOR.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/SRKWOR_box_ineq.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/SRKWOR_box_proj.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/SRKWOR_pos_ineq.py ct_poisson 19558 16384 10000000 1
python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_poisson 19558 16384 10000000 1

python3 plots/seq_sparse/SRKWOR.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/SRKWOR_box_ineq.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/SRKWOR_box_proj.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/SRKWOR_pos_ineq.py ct_poisson 19558 16384 30000000 1
python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_poisson 19558 16384 30000000 1

python3 plots/seq_sparse/CK.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/CK_box_ineq.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/CK_box_proj.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/CK_pos_ineq.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/CK_pos_proj.py ct_poisson 19558 16384 10000000 2

python3 plots/seq_sparse/CK.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/CK_box_ineq.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/CK_box_proj.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/CK_pos_ineq.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/CK_pos_proj.py ct_poisson 19558 16384 30000000 2

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 10000000 2

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 30000000 2

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 50000000 2
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 50000000 2
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 50000000 2
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 50000000 2
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 50000000 2

python3 plots/seq_sparse/SRKWOR.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/SRKWOR_box_ineq.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/SRKWOR_box_proj.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/SRKWOR_pos_ineq.py ct_poisson 19558 16384 10000000 2
python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_poisson 19558 16384 10000000 2

python3 plots/seq_sparse/SRKWOR.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/SRKWOR_box_ineq.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/SRKWOR_box_proj.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/SRKWOR_pos_ineq.py ct_poisson 19558 16384 30000000 2
python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_poisson 19558 16384 30000000 2

python3 plots/seq_sparse/CK.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/CK_box_ineq.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/CK_box_proj.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/CK_pos_ineq.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/CK_pos_proj.py ct_poisson 19558 16384 10000000 3

python3 plots/seq_sparse/CK.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/CK_box_ineq.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/CK_box_proj.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/CK_pos_ineq.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/CK_pos_proj.py ct_poisson 19558 16384 30000000 3

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 10000000 3

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 30000000 3

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 50000000 3
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 50000000 3
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 50000000 3
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 50000000 3
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 50000000 3

python3 plots/seq_sparse/SRKWOR.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/SRKWOR_box_ineq.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/SRKWOR_box_proj.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/SRKWOR_pos_ineq.py ct_poisson 19558 16384 10000000 3
python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_poisson 19558 16384 10000000 3

python3 plots/seq_sparse/SRKWOR.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/SRKWOR_box_ineq.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/SRKWOR_box_proj.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/SRKWOR_pos_ineq.py ct_poisson 19558 16384 30000000 3
python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_poisson 19558 16384 30000000 3

python3 plots/seq_sparse/CK.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/CK_box_ineq.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/CK_box_proj.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/CK_pos_ineq.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/CK_pos_proj.py ct_poisson 19558 16384 10000000 4

python3 plots/seq_sparse/CK.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/CK_box_ineq.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/CK_box_proj.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/CK_pos_ineq.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/CK_pos_proj.py ct_poisson 19558 16384 30000000 4

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 10000000 4

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 30000000 4

python3 plots/seq_sparse/RK.py ct_poisson 19558 16384 50000000 4
python3 plots/seq_sparse/RK_box_ineq.py ct_poisson 19558 16384 50000000 4
python3 plots/seq_sparse/RK_box_proj.py ct_poisson 19558 16384 50000000 4
python3 plots/seq_sparse/RK_pos_ineq.py ct_poisson 19558 16384 50000000 4
python3 plots/seq_sparse/RK_pos_proj.py ct_poisson 19558 16384 50000000 4

python3 plots/seq_sparse/SRKWOR.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/SRKWOR_box_ineq.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/SRKWOR_box_proj.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/SRKWOR_pos_ineq.py ct_poisson 19558 16384 10000000 4
python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_poisson 19558 16384 10000000 4

python3 plots/seq_sparse/SRKWOR.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/SRKWOR_box_ineq.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/SRKWOR_box_proj.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/SRKWOR_pos_ineq.py ct_poisson 19558 16384 30000000 4
python3 plots/seq_sparse/SRKWOR_pos_proj.py ct_poisson 19558 16384 30000000 4