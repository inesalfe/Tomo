%% Setup

clc;
clear;

addpath('../../../data/AIRToolsII/')
addpath('../../../data/')
AIRToolsII_setup('temporary')

%% Data

N_pixels = 512;
seed = 2;
N = 262144;

M = 117372;
% M = 234664;
% M = 469368;
% M = 938720;

%% Stopping Criteria Kaczmarz Solution

filename = "../../outputs/tomo_stop/ct_gaussian/SRKWOR_box_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".txt";
x_sol_SRKWOR = load(filename);

%% FBP Solution

filename = "../../../data/ct_gaussian/x_fbp_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
% x_sol_FBP = load(filename);
file_fbp = fopen(filename);
x_sol_FBP = fread(file_fbp,'double');

%%

min_list = [min(x_sol_SRKWOR), min(x_sol_FBP)];
max_list = [max(x_sol_SRKWOR), max(x_sol_FBP)];

min_val = min(min_list);
max_val = max(max_list);

%%

figure1 = figure(1);
imagesc(reshape(x_sol_SRKWOR,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/SRKWOR_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".png";
saveas(figure1,filename_fig);

figure2 = figure(2);
imagesc(reshape(x_sol_FBP,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/FBP_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".png";
saveas(figure2,filename_fig);