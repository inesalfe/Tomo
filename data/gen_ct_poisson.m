%% Reset

% nohup matlab -nodisplay -nosplash -singleCompThread -batch "run('gen_ct_poisson.m'); exit" >> output2.log 2>&1 &

clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

%% Save

N = 128;
theta_inc = 1.5;
theta = 0:theta_inc:178.5;

% seed = 1;
% intensity = 1E13;
% eta = 0.008;
% save_sparse_ct_poisson(N,theta,seed,intensity,eta);

% seed = 2;
% intensity = 4E13;
% eta = 0.004;
% save_sparse_ct_poisson(N,theta,seed,intensity,eta);

% seed = 3;
% intensity = 8E13;
% eta = 0.002;
% save_sparse_ct_poisson(N,theta,seed,intensity,eta);

% seed = 4;
% intensity = 1E14;
% eta = 0.001;
% save_sparse_ct_poisson(N,theta,seed,intensity,eta);

N = 128;
theta_inc = 1;
theta = 0:theta_inc:180;

seed = 1;
intensity = 1E13;
eta = 0.008;
save_sparse_ct_poisson(N,theta,seed,intensity,eta);

seed = 2;
intensity = 4E13;
eta = 0.004;
save_sparse_ct_poisson(N,theta,seed,intensity,eta);

seed = 3;
intensity = 8E13;
eta = 0.002;
save_sparse_ct_poisson(N,theta,seed,intensity,eta);

seed = 4;
intensity = 1E14;
eta = 0.001;
save_sparse_ct_poisson(N,theta,seed,intensity,eta);

N = 64;
theta_inc = 1;
theta = 0:theta_inc:180;

seed = 1;
intensity = 1E13;
eta = 0.008;
save_sparse_ct_poisson(N,theta,seed,intensity,eta);

seed = 2;
intensity = 4E13;
eta = 0.004;
save_sparse_ct_poisson(N,theta,seed,intensity,eta);

seed = 3;
intensity = 8E13;
eta = 0.002;
save_sparse_ct_poisson(N,theta,seed,intensity,eta);

seed = 4;
intensity = 1E14;
eta = 0.001;
save_sparse_ct_poisson(N,theta,seed,intensity,eta);