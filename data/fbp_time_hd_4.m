%% Setup

% nohup matlab -nodisplay -nosplash -singleCompThread -batch "run('fbp_time_hd_4.m'); exit" > output7_5.log 2>&1 &

clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

% Params

N_pixels = 512;
theta_inc = 0.5;
theta = 0:theta_inc:179.5;
seed = 2;
eta = 0.002;

% 32*p, d/8

p = round(sqrt(2)*N_pixels);
p = 32*p;
d = p-1;
d = d/8;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

% 64*p, d/8

p = round(sqrt(2)*N_pixels);
p = 64*p;
d = p-1;
d = d/8;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

% 64*p, d/16

d = d/2;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

% 64*p, d/32

d = d/2;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

% 128*p, d/8

p = round(sqrt(2)*N_pixels);
p = 128*p;
d = p-1;
d = d/8;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);
norm(x, 2)*norm(x, 2)

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)