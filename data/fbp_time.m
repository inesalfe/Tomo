%% Setup

% nohup matlab -nodisplay -nosplash -singleCompThread -batch "run('fbp_time.m'); exit" > output4.log 2>&1 &

clc;
clear;

addpath('../../../data/AIRToolsII/')
addpath('../../../data/')
AIRToolsII_setup('temporary')

%% Data

N_pixels = 512;
theta_inc = 0.5;
theta = 0:theta_inc:179.5;
seed = 2;
eta = 0.002;

N = 262144;

%% System_1

M = 117372;

%% Original

filename = "../../../data/ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

%% FPB

tic
x_sol_fbp = fbp_sol(N_pixels,theta,seed,eta);
toc
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

%% System_2

M = 234664;

%% Original

filename = "../../../data/ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

%% FPB

tic
x_sol_fbp = fbp_sol(N_pixels,theta,seed,eta);
toc
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

%% System_3

M = 469368;

%% Original

filename = "../../../data/ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

%% FPB

tic
x_sol_fbp = fbp_sol(N_pixels,theta,seed,eta);
toc
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

%% System_4

M = 938720;

%% Original

filename = "../../../data/ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

%% FPB

tic
x_sol_fbp = fbp_sol(N_pixels,theta,seed,eta);
toc
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)