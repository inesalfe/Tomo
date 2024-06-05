function sino = get_sinogram(N_pixels,theta,p,d,seed,eta)
    
    % Get System
    
    [A,b,x] = paralleltomo(N_pixels,theta,p,d);
    
    % x_init = x;
    
    M = size(A,1);
    % expected_M = p*size(theta,2)
    N = size(A,2);
    
    % Error
    
    rng(seed);
    sigma = sqrt(eta*eta*norm(b)*norm(b)/M);
    error = normrnd(0,sigma,M,1);
    b_error = b + error;
    
    sino = reshape(b_error,[p size(theta,2)]);

end