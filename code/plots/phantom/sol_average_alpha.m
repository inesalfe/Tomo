%% Setup

clc;
clear;

addpath('../../../data/AIRToolsII/')
addpath('../../../data/')
AIRToolsII_setup('temporary')

N_pixels = 128;

%% CKA Solutions

it_max_CKA_alpha_1 = 10790001;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_alpha_sol_19558_16384_4_0.500000_10790001_2.txt";
x_sol_CKA_alpha_1 = load(filename);

it_max_CKA_alpha_5 = 1500001;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_alpha_sol_19558_16384_4_2.500000_1500001_2.txt";
x_sol_CKA_alpha_5 = load(filename);

it_max_CKA_box_proj_alpha_1 = 4020001;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_box_proj_alpha_sol_19558_16384_4_0.500000_4020001_2.txt";
x_sol_CKA_box_proj_alpha_1 = load(filename);

it_max_CKA_box_proj_alpha_5 = 690001;
filename = "../../outputs/omp_sparse/ct_gaussian/CKA_box_proj_alpha_sol_19558_16384_4_2.500000_690001_2.txt";
x_sol_CKA_box_proj_alpha_5 = load(filename);

%%

min_list = [min(x_sol_CKA_alpha_1), min(x_sol_CKA_alpha_5), min(x_sol_CKA_box_proj_alpha_1), min(x_sol_CKA_box_proj_alpha_5)];
max_list = [max(x_sol_CKA_alpha_1), max(x_sol_CKA_alpha_5), max(x_sol_CKA_box_proj_alpha_1), max(x_sol_CKA_box_proj_alpha_5)];

min_val = min(min_list);
max_val = min(max_list);

%%

figure1 = figure(1);
imagesc(reshape(x_sol_CKA_alpha_1,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_alpha_19558_16384_4_0.5_10790001_2.png";
saveas(figure1,filename_fig);

figure2 = figure(2);
imagesc(reshape(x_sol_CKA_alpha_5,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_alpha_19558_16384_4_2.500000_1500001_2.png";
saveas(figure2,filename_fig);

figure3 = figure(3);
imagesc(reshape(x_sol_CKA_box_proj_alpha_1,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_box_proj_alpha_19558_16384_4_0.500000_4020001_2.png";
saveas(figure3,filename_fig);

figure4 = figure(4);
imagesc(reshape(x_sol_CKA_box_proj_alpha_5,N_pixels,N_pixels))
colorbar
caxis manual
caxis([min_val max_val])
filename_fig = "png_gaussian/CKA_box_proj_alpha_19558_16384_4_2.500000_690001_2.png";
saveas(figure4,filename_fig);