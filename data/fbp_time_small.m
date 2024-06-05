%% Setup

clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

%% Data

N_pixels = 128;
theta_inc = 1.5;
theta = 0:theta_inc:178.5;
seed = 2;
eta = 0.002;

p = round(sqrt(2)*N_pixels);
d = p-1;

N = 16384;

%% System_1

M = 19558;

%% Original

filename = "ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
fileID = fopen(filename);
x = fread(fileID,'double');

%% FPB

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)