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

sino = get_sinogram(N_pixels,theta,p,d,seed,eta);

figure = figure(1);
image = mat2gray(sino,[0 1]);
imshow(image)
filename_fig = "ct_gaussian/sino_" + int2str(N_pixels) + "_" + int2str(size(theta,2)) + "_" + int2str(seed) + ".bmp";
saveas(figure,filename_fig);