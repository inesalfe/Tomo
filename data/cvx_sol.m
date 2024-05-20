% nohup matlab -nodisplay -nosplash -singleCompThread -batch "run('cvx_sol.m'); exit" > output4.log 2>&1 &

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
%     variable x(n)
%     minimize( norm(A*x-b) )
%     subject to
%         l <= x <= u
% cvx_end

%% Find Best Alpha

alpha = 1E-5;
errors = [];
while alpha < 100
    alpha = alpha*10;
    cvx_begin
        variable x_sol(n)
        minimize( 0.5*norm( A * x_sol - b, 2 ) + 0.5*alpha*norm( x_sol, 1 ) )
        % subject to
        %     zeros(n) <= x_sol <= ones(n)
    cvx_end
    norm(x_sol-x)
    errors = [errors, norm(x_sol-x)];
end

%% Fixed Alpha

% Regularização (norma 2 do resíduo e norma 1 de x) sem restrições

% cvx_begin
%     variable x_sol(n)
%     minimize( 0.5*norm( A * x_sol - b, 2 ) + 0.5*alpha*norm( x_sol, 1 ) )
% cvx_end

% norm(x_sol-x)

% Regularização (norma 2 do resíduo e norma 1 de x) com restrições

% cvx_begin
%     variable x_sol(n)
%     minimize( 0.5*norm( A * x_sol - b, 2 ) + 0.5*alpha*norm( x_sol, 1 ) )
%     subject to
%         zeros(n) <= x_sol <= ones(n)
% cvx_end

norm(x_sol-x)