%% Setup

clc;
clear;

addpath('../../../data/AIRToolsII/')
addpath('../../../data/')
AIRToolsII_setup('temporary')

%% Data

N_pixels = 128;
theta_inc = 1.5;
theta = 0:theta_inc:178.5;
seed = 2;
eta = 0.002;
M = 19558;
N = 16384;

%% Iterative Solutions

it_max_RK = 7750001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK) + "_" + int2str(seed) + ".txt";
x_sol_RK = load(filename);

it_max_CK = 2440001;
filename = "../../outputs/seq_sparse/ct_gaussian/CK_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK) + "_" + int2str(seed) + ".txt";
x_sol_CK = load(filename);

it_max_SRKWOR = 1050001;
filename = "../../outputs/seq_sparse/ct_gaussian/SRKWOR_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR) + "_" + int2str(seed) + ".txt";
x_sol_SRKWOR = load(filename);

it_max_RK_pos_proj = 3090001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_pos_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_pos_proj) + "_" + int2str(seed) + ".txt";
x_sol_RK_pos_proj = load(filename);

it_max_CK_pos_proj = 3600001;
filename = "../../outputs/seq_sparse/ct_gaussian/CK_pos_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK_pos_proj) + "_" + int2str(seed) + ".txt";
x_sol_CK_pos_proj = load(filename);

it_max_SRKWOR_pos_proj = 1500001;
filename = "../../outputs/seq_sparse/ct_gaussian/SRKWOR_pos_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR_pos_proj) + "_" + int2str(seed) + ".txt";
x_sol_SRKWOR_pos_proj = load(filename);

it_max_RK_box_proj = 2210001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_box_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_box_proj) + "_" + int2str(seed) + ".txt";
x_sol_RK_box_proj = load(filename);

it_max_CK_box_proj = 2310001;
filename = "../../outputs/seq_sparse/ct_gaussian/CK_box_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK_box_proj) + "_" + int2str(seed) + ".txt";
x_sol_CK_box_proj = load(filename);

it_max_SRKWOR_box_proj = 1640001;
filename = "../../outputs/seq_sparse/ct_gaussian/SRKWOR_box_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR_box_proj) + "_" + int2str(seed) + ".txt";
x_sol_SRKWOR_box_proj = load(filename);

%% FBP Solution

x_sol_fbp = fbp_sol(N_pixels,theta,seed,eta);

%% Original

filename = "../../../data/ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

% Error FBP

norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

%%

min_list = [min(x_sol_RK), min(x_sol_CK), min(x_sol_SRKWOR), min(x_sol_RK_pos_proj), min(x_sol_CK_pos_proj), min(x_sol_SRKWOR_pos_proj), min(x_sol_RK_box_proj), min(x_sol_CK_box_proj), min(x_sol_SRKWOR_box_proj), min(x_sol_fbp), min(x)];
max_list = [max(x_sol_RK), max(x_sol_CK), max(x_sol_SRKWOR), max(x_sol_RK_pos_proj), max(x_sol_CK_pos_proj), max(x_sol_SRKWOR_pos_proj), max(x_sol_RK_box_proj), max(x_sol_CK_box_proj), max(x_sol_SRKWOR_box_proj), max(x_sol_fbp), max(x)];

min_val = min(min_list);
max_val = min(max_list);

%%

figure1 = figure(1);
imagesc(reshape(x_sol_RK,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK) + "_" + int2str(seed) + ".png";
saveas(figure1,filename_fig);

figure2 = figure(2);
imagesc(reshape(x_sol_CK,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/CK_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK) + "_" + int2str(seed) + ".png";
saveas(figure2,filename_fig);

figure3 = figure(3);
imagesc(reshape(x_sol_SRKWOR,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/SRKWOR_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR) + "_" + int2str(seed) + ".png";
saveas(figure3,filename_fig);

figure4 = figure(4);
imagesc(reshape(x_sol_RK_pos_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_pos_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_pos_proj) + "_" + int2str(seed) + ".png";
saveas(figure4,filename_fig);

figure5 = figure(5);
imagesc(reshape(x_sol_CK_pos_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/CK_pos_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK_pos_proj) + "_" + int2str(seed) + ".png";
saveas(figure5,filename_fig);

figure6 = figure(6);
imagesc(reshape(x_sol_SRKWOR_pos_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/SRKWOR_pos_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR_pos_proj) + "_" + int2str(seed) + ".png";
saveas(figure6,filename_fig);

figure7 = figure(7);
imagesc(reshape(x_sol_RK_box_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_box_proj) + "_" + int2str(seed) + ".png";
saveas(figure7,filename_fig);

figure8 = figure(8);
imagesc(reshape(x_sol_CK_box_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/CK_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK_box_proj) + "_" + int2str(seed) + ".png";
saveas(figure8,filename_fig);

figure9 = figure(9);
imagesc(reshape(x_sol_SRKWOR_box_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/SRKWOR_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR_box_proj) + "_" + int2str(seed) + ".png";
saveas(figure9,filename_fig);

figure10 = figure(10);
imagesc(reshape(x,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png/x_" + int2str(M) + "_" + int2str(N) + ".png";
saveas(figure10,filename_fig);

figure11 = figure(11);
imagesc(reshape(x_sol_fbp,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png/x_fbp_" + int2str(M) + "_" + int2str(N) + ".png";
saveas(figure11,filename_fig);

%% Data

N_pixels = 128;
theta_inc = 1;
theta = 0:theta_inc:180;
seed = 2;
eta = 0.002;
M = 29498;
N = 16384;

%% Iterative Solutions

it_max_RK = 5050001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK) + "_" + int2str(seed) + ".txt";
x_sol_RK = load(filename);

it_max_RK_box_proj = 1340001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_box_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_box_proj) + "_" + int2str(seed) + ".txt";
x_sol_RK_box_proj = load(filename);

%% FBP Solution

x_sol_fbp = fbp_sol(N_pixels,theta,seed,eta);

%% Original

filename = "../../../data/ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

% Error FBP

norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

%%

min_list = [min(x_sol_RK), min(x_sol_RK_box_proj), min(x_sol_fbp)];
max_list = [max(x_sol_RK), max(x_sol_RK_box_proj), max(x_sol_fbp)];

min_val = min(min_list);
max_val = min(max_list);

%%

figure12 = figure(12);
imagesc(reshape(x_sol_RK,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK) + "_" + int2str(seed) + ".png";
saveas(figure12,filename_fig);

figure13 = figure(13);
imagesc(reshape(x_sol_RK_box_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_box_proj) + "_" + int2str(seed) + ".png";
saveas(figure13,filename_fig);

figure14 = figure(14);
imagesc(reshape(x_sol_fbp,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png/x_fbp_" + int2str(M) + "_" + int2str(N) + ".png";
saveas(figure14,filename_fig);

%% Data

N_pixels = 64;
theta_inc = 1;
theta = 0:theta_inc:180;
seed = 2;
eta = 0.002;
M = 14750;
N = 4096;

%% Iterative Solutions

it_max_RK = 2590001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK) + "_" + int2str(seed) + ".txt";
x_sol_RK = load(filename);

it_max_RK_box_proj = 22840001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_box_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_box_proj) + "_" + int2str(seed) + ".txt";
x_sol_RK_box_proj = load(filename);

%% FBP Solution

x_sol_fbp = fbp_sol(N_pixels,theta,seed,eta);

%% Original

filename = "../../../data/ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

% Error FBP

norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

%%

min_list = [min(x_sol_RK), min(x_sol_RK_box_proj), min(x_sol_fbp)];
max_list = [max(x_sol_RK), max(x_sol_RK_box_proj), max(x_sol_fbp)];

min_val = min(min_list);
max_val = min(max_list);

%%

figure15 = figure(15);
imagesc(reshape(x_sol_RK,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK) + "_" + int2str(seed) + ".png";
saveas(figure15,filename_fig);

figure16 = figure(16);
imagesc(reshape(x_sol_RK_box_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_box_proj) + "_" + int2str(seed) + ".png";
saveas(figure16,filename_fig);

figure17 = figure(17);
imagesc(reshape(x_sol_fbp,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png/x_fbp_" + int2str(M) + "_" + int2str(N) + ".png";
saveas(figure17,filename_fig);

%% Data

N_pixels = 128;
theta_inc = 1;
theta = 0:theta_inc:180;
seed = 3;
eta = 0.004;
M = 29498;
N = 16384;

%% Iterative Solutions

it_max_RK = 2180001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK) + "_" + int2str(seed) + ".txt";
x_sol_RK = load(filename);

it_max_CK = 1140001;
filename = "../../outputs/seq_sparse/ct_gaussian/CK_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK) + "_" + int2str(seed) + ".txt";
x_sol_CK = load(filename);

it_max_SRKWOR = 340001;
filename = "../../outputs/seq_sparse/ct_gaussian/SRKWOR_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR) + "_" + int2str(seed) + ".txt";
x_sol_SRKWOR = load(filename);

it_max_RK_pos_proj = 840001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_pos_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_pos_proj) + "_" + int2str(seed) + ".txt";
x_sol_RK_pos_proj = load(filename);

it_max_CK_pos_proj = 950001;
filename = "../../outputs/seq_sparse/ct_gaussian/CK_pos_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK_pos_proj) + "_" + int2str(seed) + ".txt";
x_sol_CK_pos_proj = load(filename);

it_max_SRKWOR_pos_proj = 280001;
filename = "../../outputs/seq_sparse/ct_gaussian/SRKWOR_pos_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR_pos_proj) + "_" + int2str(seed) + ".txt";
x_sol_SRKWOR_pos_proj = load(filename);

it_max_RK_box_proj = 640001;
filename = "../../outputs/seq_sparse/ct_gaussian/RK_box_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_box_proj) + "_" + int2str(seed) + ".txt";
x_sol_RK_box_proj = load(filename);

it_max_CK_box_proj = 950001;
filename = "../../outputs/seq_sparse/ct_gaussian/CK_box_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK_box_proj) + "_" + int2str(seed) + ".txt";
x_sol_CK_box_proj = load(filename);

it_max_SRKWOR_box_proj = 640001;
filename = "../../outputs/seq_sparse/ct_gaussian/SRKWOR_box_proj_sol_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR_box_proj) + "_" + int2str(seed) + ".txt";
x_sol_SRKWOR_box_proj = load(filename);

%% FBP Solution

tic
x_sol_fbp = fbp_sol(N_pixels,theta,seed,eta);
toc

%% Original

filename = "../../../data/ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

% Error FBP

norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

%%

min_list = [min(x_sol_RK), min(x_sol_CK), min(x_sol_SRKWOR), min(x_sol_RK_pos_proj), min(x_sol_CK_pos_proj), min(x_sol_SRKWOR_pos_proj), min(x_sol_RK_box_proj), min(x_sol_CK_box_proj), min(x_sol_SRKWOR_box_proj), min(x_sol_fbp), min(x)];
max_list = [max(x_sol_RK), max(x_sol_CK), max(x_sol_SRKWOR), max(x_sol_RK_pos_proj), max(x_sol_CK_pos_proj), max(x_sol_SRKWOR_pos_proj), max(x_sol_RK_box_proj), max(x_sol_CK_box_proj), max(x_sol_SRKWOR_box_proj), max(x_sol_fbp), max(x)];

min_val = min(min_list);
max_val = min(max_list);

  fbp%%

figure18 = figure(18);
imagesc(reshape(x_sol_RK,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK) + "_" + int2str(seed) + ".png";
saveas(figure18,filename_fig);

figure19 = figure(19);
imagesc(reshape(x_sol_CK,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/CK_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK) + "_" + int2str(seed) + ".png";
saveas(figure19,filename_fig);

figure20 = figure(20);
imagesc(reshape(x_sol_SRKWOR,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/SRKWOR_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR) + "_" + int2str(seed) + ".png";
saveas(figure20,filename_fig);

figure21 = figure(21);
imagesc(reshape(x_sol_RK_pos_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_pos_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_pos_proj) + "_" + int2str(seed) + ".png";
saveas(figure21,filename_fig);

figure22 = figure(22);
imagesc(reshape(x_sol_CK_pos_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/CK_pos_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK_pos_proj) + "_" + int2str(seed) + ".png";
saveas(figure22,filename_fig);

figure23 = figure(23);
imagesc(reshape(x_sol_SRKWOR_pos_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/SRKWOR_pos_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR_pos_proj) + "_" + int2str(seed) + ".png";
saveas(figure23,filename_fig);

figure24 = figure(24);
imagesc(reshape(x_sol_RK_box_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/RK_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_RK_box_proj) + "_" + int2str(seed) + ".png";
saveas(figure24,filename_fig);

figure25 = figure(25);
imagesc(reshape(x_sol_CK_box_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/CK_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_CK_box_proj) + "_" + int2str(seed) + ".png";
saveas(figure25,filename_fig);

figure26 = figure(26);
imagesc(reshape(x_sol_SRKWOR_box_proj,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png_gaussian/SRKWOR_box_proj_" + int2str(M) + "_" + int2str(N) + "_" + int2str(it_max_SRKWOR_box_proj) + "_" + int2str(seed) + ".png";
saveas(figure26,filename_fig);

figure27 = figure(27);
imagesc(reshape(x,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png/x_" + int2str(M) + "_" + int2str(N) + ".png";
saveas(figure27,filename_fig);

figure28 = figure(28);
imagesc(reshape(x_sol_fbp,N_pixels,N_pixels))
colorbar
% caxis manual
% caxis([min_val max_val])
filename_fig = "png/x_fbp_" + int2str(M) + "_" + int2str(N) + ".png";
saveas(figure28,filename_fig);