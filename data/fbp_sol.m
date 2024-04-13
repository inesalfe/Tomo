function x_fbp = fbp_sol(N_pixels,theta,seed,eta)
    
    % Get System
    
    [A,b,x] = paralleltomo(N_pixels,theta);
    
    % x_init = x;
    
    M = size(A,1);
    N = size(A,2);
    
    % Error
    
    rng(seed);
    sigma = sqrt(eta*eta*norm(b)*norm(b)/M);
    error = normrnd(0,sigma,M,1);
    b_error = b + error;
    
    x_fbp = fbp(A,b_error,theta);
    
    % figure_fbp = figure(1);
    % imagesc(reshape(x_fbp,N_pixels,N_pixels))
    % colorbar
    % caxis manual
    % % caxis([min_pixel max_pixel])

end