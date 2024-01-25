%% Reset

clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

N = 32;
theta_inc = 1.5;
theta = 0:theta_inc:178.5;

save_dense_ct(N,theta);
save_sparse_ct(N,theta);

seed = 1;

eta = 0.001;
save_dense_ct_gaussian(N,theta,seed,eta);
save_sparse_ct_gaussian(N,theta,seed,eta);

intensity = 1E14;
eta = 0.001;
save_dense_ct_poisson(N,theta,seed,intensity,eta);
save_sparse_ct_poisson(N,theta,seed,intensity,eta);