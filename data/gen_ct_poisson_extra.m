%% Reset

% nohup matlab -nodisplay -nosplash -singleCompThread -batch "run('gen_ct_poisson_extra.m'); exit" > output3.log 2>&1 &

clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

%% Save

N = 128;
theta_inc = 1.5;
theta = 0:theta_inc:178.5;

seed = 1;
intensity = 1E13;
eta = 0.008;
save_sparse_ct_poisson_norm(N,theta,seed,intensity,eta);

seed = 2;
intensity = 4E13;
eta = 0.004;
save_sparse_ct_poisson_norm(N,theta,seed,intensity,eta);

seed = 3;
intensity = 8E13;
eta = 0.002;
save_sparse_ct_poisson_norm(N,theta,seed,intensity,eta);

seed = 4;
intensity = 1E14;
eta = 0.001;
save_sparse_ct_poisson_norm(N,theta,seed,intensity,eta);

% seed = 1;
% intensity = 100;
% save_sparse_ct_poisson_book(N,theta,seed,intensity);

% seed = 2;
% intensity = 1000;
% save_sparse_ct_poisson_book(N,theta,seed,intensity);
% 
% seed = 3;
% intensity = 10000;
% save_sparse_ct_poisson_book(N,theta,seed,intensity);

% seed = 1;
% intensity = 100;
% eta = 0.008;
% save_sparse_ct_poisson_book_norm(N,theta,seed,intensity,eta);

% seed = 2;
% intensity = 1000;
% eta = 0.004;
% save_sparse_ct_poisson_book_norm(N,theta,seed,intensity,eta);
% 
% seed = 3;
% intensity = 10000;
% eta = 0.002;
% save_sparse_ct_poisson_book_norm(N,theta,seed,intensity,eta);