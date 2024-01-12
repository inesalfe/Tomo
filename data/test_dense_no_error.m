
clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

N_pixels = 32;
theta_inc = 1.5;
theta = 0:theta_inc:178.5;

[A,b,x] = paralleltomo(N_pixels,theta);

x_init = x;

% Build RHS and print matrix parameters

M = size(A,1);
N = size(A,2);

fprintf("N_pixels: %d\n", N_pixels);
fprintf("Angles: %d\n", size(theta,2));

fprintf("M (before deletion): %d\n", M);
fprintf("N (before deletion): %d\n", N);

% Indices of columns to be deleted

is_pixel_zero = zeros(N,1);
for i=1:M
    if b(i) == 0
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
fprintf("Density: %f\n", nnz(A)/M/N);
fprintf("Residual: %f\n", norm(A*x-b));

x_ls = lsqr(A,b,1E-18,10000);
fprintf("CGLS solution compleated!\n");
options = optimoptions('lsqlin','MaxIter',10000,'StepTolerance',1E-18);
x_ls_pos = lsqlin(A,b,[],[],[],[],zeros(1,N),[],[],options);
fprintf("Positive solution compleated!\n");
x_ls_box = lsqlin(A,b,[],[],[],[],zeros(1,N),ones(1,N),[],options);
fprintf("Box constraints solution compleated!\n");

fprintf("norm(A*x-b): %f\n", norm(A*x-b));
fprintf("norm(A*x_ls-b): %f\n", norm(A*x_ls-b));
fprintf("norm(A*x_ls_pos-b): %f\n", norm(A*x_ls_pos-b));
fprintf("norm(A*x_ls_box-b): %f\n", norm(A*x_ls_box-b));
fprintf("norm(x-x_ls): %f\n", norm(x-x_ls));
fprintf("norm(x-x_ls_pos): %f\n", norm(x-x_ls_pos));
fprintf("norm(x-x_ls_box): %f\n", norm(x-x_ls_box));