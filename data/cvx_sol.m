clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

%% Generate System

N_pixels = 128;
theta_inc = 1.5;
theta = 0:theta_inc:178.5;

seed = 2;
eta = 0.002;

[A,b,x] = paralleltomo(N_pixels,theta);

m = size(A,1);
n = size(A,2);

rng(seed);
sigma = sqrt(eta*eta*norm(b)*norm(b)/m);
error = normrnd(0,sigma,m,1);
b_error = b + error;

b = b_error;

%% CVX

% Example

% cvx_begin
%     variable x_sol(n)
%     minimize( norm( A * x_sol - b, 2 ) )
%     subject to
%         C * x == d
%         norm( x, Inf ) <= e
% cvx_end

% cvx_begin
%     variable x(n)
%     minimize( norm(A*x-b) )
%     subject to
%         l <= x <= u
% cvx_end

% cvx_begin
%     variable x(n)
%     minimize( norm(A*x-b,1) )
% cvx_end

% Opção 1 - Least Squares (norma 2) sem restrições

cvx_begin
    variable x_sol(n)
    minimize( norm( A * x_sol - b, 2 ) )
cvx_end

norm(x_sol-x)

% Opção 2 - Least Squares (norma 1) sem restrições

cvx_begin
    variable x_sol(n)
    minimize( norm( A * x_sol - b, 1 ) )
cvx_end

norm(x_sol-x)

% Opção 3 - Least Squares (norma 2) com restrições

cvx_begin
    variable x_sol(n)
    minimize( norm( A * x_sol - b, 2 ) )
    subject to
        zeros(n) <= x_sol <= ones(n)
cvx_end

norm(x_sol-x)

% Opção 4 - Least Squares (norma 1) com restrições

cvx_begin
    variable x_sol(n)
    minimize( norm( A * x_sol - b, 1 ) )
    subject to
        zeros(n) <= x_sol <= ones(n)
cvx_end

norm(x_sol-x)

% Opção 5 - Regularização (norma 2 do resíduo e norma 2 de x) sem restrições

cvx_begin
    variable x_sol(n)
    minimize( norm( A * x_sol - b, 2 ) + norm( x_sol, 2 ) )
cvx_end

norm(x_sol-x)

% Opção 6 - Regularização (norma 2 do resíduo e norma 1 de x) sem restrições

cvx_begin
    variable x_sol(n)
    minimize( norm( A * x_sol - b, 2 ) + norm( x_sol, 2 ) )
cvx_end

norm(x_sol-x)

% Opção 7 - Regularização (norma 2 do resíduo e norma 2 de x) sem restrições

cvx_begin
    variable x_sol(n)
    minimize( norm( A * x_sol - b, 2 ) + norm( x_sol, 2 ) )
    subject to
        zeros(n) <= x_sol <= ones(n)
cvx_end

norm(x_sol-x)

% Opção 8 - Regularização (norma 2 do resíduo e norma 1 de x) sem restrições

cvx_begin
    variable x_sol(n)
    minimize( norm( A * x_sol - b, 2 ) + norm( x_sol, 2 ) )
    subject to
        zeros(n) <= x_sol <= ones(n)
cvx_end

norm(x_sol-x)