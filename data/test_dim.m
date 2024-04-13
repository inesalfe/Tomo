clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

N_pixels = 512;
theta = 0:0.5:180;
seed = 1;
eta = 0.001;

p = round(sqrt(2)*N_pixels);
p = 4*p;
d = p-1;
d = d/4;
% d = 2*d;

[A,b,x] = paralleltomo(N_pixels,theta,p,d);

x_init = x;

% Build RHS and print matrix parameters

M = size(A,1);
N = size(A,2);

fprintf("M (before deletion): %d\n", M);
fprintf("N (before deletion): %d\n", N);

% Error

rng(seed);
sigma = sqrt(eta*eta*norm(b)*norm(b)/M);
error = normrnd(0,sigma,M,1);
b_error = b + error;

% Indices of columns to be deleted

is_pixel_zero = zeros(N,1);
for i=1:M
    if b_error(i) == 0
        for j=1:N
            if full(A(i,j)) ~= 0
                is_pixel_zero(j) = 1;
            end
        end
    end
end
idx_non_zero_pixels = [];
for j=1:N
    if is_pixel_zero(j) == 0
        idx_non_zero_pixels(end+1) = j-1;
    end
end

% Delete cols

idx = any(is_pixel_zero ~= 1, 2);
A = A(:,idx);
x = x(idx);
N = size(A,2);

% Delete rows with b values set to zero

idx = any(vecnorm(A,2,2) ~= 0, 2);
b = b(idx,:);
b_error = b_error(idx,:);
A = A(idx,:);
M = size(A,1);

% Delete rows of zeros

idx = any(vecnorm(A,2,2) ~= 0, 2);
b = b(idx,:);
A = A(idx,:);

M = size(A,1);
N = size(A,2);

fprintf("M: %d\n", M);
fprintf("N: %d\n", N);