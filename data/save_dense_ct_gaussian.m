function save_dense_ct_gaussian(N_pixels,theta,seed,eta)

    [A,b,x] = paralleltomo(N_pixels,theta);

    x_init = x;
    
    % Build RHS and print matrix parameters

    M = size(A,1);
    N = size(A,2);

    fileID = fopen('ct_gaussian/params_dense.txt','a+');

    fprintf(fileID, "N_pixels: %d\n", N_pixels);
    fprintf("N_pixels: %d\n", N_pixels);
    fprintf(fileID, "Angles: %d\n", size(theta,2));
    fprintf("Angles: %d\n", size(theta,2));
    fprintf(fileID, "Eta: %f\n", eta);
    fprintf("Eta: %f\n", eta);
    fprintf(fileID, "Seed: %d\n", seed);
    fprintf("Seed: %d\n", seed);

    fprintf(fileID, "M (before deletion): %d\n", M);
    fprintf("M (before deletion): %d\n", M);
    fprintf(fileID, "N (before deletion): %d\n", N);
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

    fprintf(fileID, "M: %d\n", M);
    fprintf("M: %d\n", M);
    fprintf(fileID, "N: %d\n", N);
    fprintf("N: %d\n", N);
    fprintf(fileID, "Density: %f\n", nnz(A)/M/N);
    fprintf("Density: %f\n", nnz(A)/M/N);

    fclose(fileID);

    x_ls = lsqr(A,b_error,1E-18,10000);
    fprintf("CGLS solution compleated!\n");
    options = optimoptions('lsqlin','MaxIter',10000,'StepTolerance',1E-18);
    x_ls_pos = lsqlin(A,b_error,[],[],[],[],zeros(1,N),[],[],options);
    fprintf("Positive solution compleated!\n");
    x_ls_box = lsqlin(A,b_error,[],[],[],[],zeros(1,N),ones(1,N),[],options);
    fprintf("Box constraints solution compleated!\n");

    fileID_error = fopen('ct_gaussian/params_dense.txt','a+');

    fprintf("norm(A*x-b): %f\n", norm(A*x-b));
    fprintf("norm(A*x_ls-b): %f\n", norm(A*x_ls-b));
    fprintf("norm(A*x_ls_pos-b): %f\n", norm(A*x_ls_pos-b));
    fprintf("norm(A*x_ls_box-b): %f\n", norm(A*x_ls_box-b));
    fprintf("norm(A*x-b_error): %f\n", norm(A*x-b_error));
    fprintf("norm(A*x_ls-b_error): %f\n", norm(A*x_ls-b_error));
    fprintf("norm(A*x_ls_pos-b_error): %f\n", norm(A*x_ls_pos-b_error));
    fprintf("norm(A*x_ls_box-b_error): %f\n", norm(A*x_ls_box-b_error));
    fprintf("norm(x-x_ls): %f\n", norm(x-x_ls));
    fprintf("norm(x-x_ls_pos): %f\n", norm(x-x_ls_pos));
    fprintf("norm(x-x_ls_box): %f\n", norm(x-x_ls_box));
    fprintf("norm(error): %f\n", norm(error));

    fprintf(fileID_error, "norm(A*x-b_error): %f\n", norm(A*x-b_error));
    fprintf(fileID_error, "norm(A*x_ls-b_error): %f\n", norm(A*x_ls-b_error));
    fprintf(fileID_error, "norm(A*x_ls_pos-b_error): %f\n", norm(A*x_ls_pos-b_error));
    fprintf(fileID_error, "norm(A*x_ls_box-b_error): %f\n", norm(A*x_ls_box-b_error));
    fprintf(fileID_error, "norm(A*x-b): %f\n", norm(A*x-b));
    fprintf(fileID_error, "norm(A*x_ls-b): %f\n", norm(A*x_ls-b));
    fprintf(fileID_error, "norm(A*x_ls_pos-b): %f\n", norm(A*x_ls_pos-b));
    fprintf(fileID_error, "norm(A*x_ls_box-b): %f\n", norm(A*x_ls_box-b));
    fprintf(fileID_error, "norm(x-x_ls): %f\n", norm(x-x_ls));
    fprintf(fileID_error, "norm(x-x_ls_pos): %f\n", norm(x-x_ls_pos));
    fprintf(fileID_error, "norm(x-x_ls_box): %f\n", norm(x-x_ls_box));
    fprintf(fileID_error, "norm(error): %f\n", norm(error));
    
    x_ls_full = zeros(1,N_pixels*N_pixels);
    for i=1:N
        x_ls_full(idx_non_zero_pixels(i)+1) = x_ls(i);
    end
    
    x_ls_pos_full = zeros(1,N_pixels*N_pixels);
    for i=1:N
        x_ls_pos_full(idx_non_zero_pixels(i)+1) = x_ls_pos(i);
    end

    x_ls_box_full = zeros(1,N_pixels*N_pixels);
    for i=1:N
        x_ls_box_full(idx_non_zero_pixels(i)+1) = x_ls_box(i);
    end
    
    max_pixel = max(max(x_init), max(x_ls));
    min_pixel = min(min(x_init), min(x_ls));
    
    figure_init = figure(1);
    imagesc(reshape(x_init,N_pixels,N_pixels))
    colorbar
    caxis manual
    caxis([min_pixel max_pixel])
    filename_fig = "ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".png";
    saveas(figure_init,filename_fig);
    
    figure_ls = figure(2);
    imagesc(reshape(x_ls_full,N_pixels,N_pixels))
    colorbar
    caxis manual
    caxis([min_pixel max_pixel])
    filename_fig = "ct_gaussian/x_ls_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".png";
    saveas(figure_ls,filename_fig);

    figure_ls_pos = figure(3);
    imagesc(reshape(x_ls_pos_full,N_pixels,N_pixels))
    colorbar
    caxis manual
    caxis([min_pixel max_pixel])
    filename_fig = "ct_gaussian/x_ls_pos_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".png";
    saveas(figure_ls_pos,filename_fig);

    figure_ls_box = figure(4);
    imagesc(reshape(x_ls_box_full,N_pixels,N_pixels))
    colorbar
    caxis manual
    caxis([min_pixel max_pixel])
    filename_fig = "ct_gaussian/x_ls_box_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".png";
    saveas(figure_ls_box,filename_fig);

    % Save

    % Dense

    filename_idx_non_zero_pixels = "ct_gaussian/idx_non_zero_pixels_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_idx_non_zero_pixels = fopen(filename_idx_non_zero_pixels,'w');
    fwrite(file_idx_non_zero_pixels, N_pixels*N_pixels, 'int');
    fwrite(file_idx_non_zero_pixels, idx_non_zero_pixels, 'int');
    fclose(file_idx_non_zero_pixels);

    filename_is_pixel_zero = "ct_gaussian/is_pixel_zero_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_is_pixel_zero = fopen(filename_is_pixel_zero,'w');
    fwrite(file_is_pixel_zero, N_pixels*N_pixels, 'int');
    fwrite(file_is_pixel_zero, is_pixel_zero, 'int');
    fclose(file_is_pixel_zero);
    
    filename_error = "ct_gaussian/error_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_error = fopen(filename_error,'w');
    fwrite(file_error, error, 'double');
    fclose(file_error);

    filename_x = "ct_gaussian/x_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_x = fopen(filename_x,'w');
    fwrite(file_x, x, 'double');
    fclose(file_x);

    filename_x_ls = "ct_gaussian/x_ls_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_x_ls = fopen(filename_x_ls,'w');
    fwrite(file_x_ls, x_ls, 'double');
    fclose(file_x_ls);

    filename_x_ls_pos = "ct_gaussian/x_ls_pos_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_x_ls_pos = fopen(filename_x_ls_pos,'w');
    fwrite(file_x_ls_pos, x_ls_pos, 'double');
    fclose(file_x_ls_pos);

    filename_x_ls_box = "ct_gaussian/x_ls_box_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_x_ls_box = fopen(filename_x_ls_box,'w');
    fwrite(file_x_ls_box, x_ls_box, 'double');
    fclose(file_x_ls_box);

    filename_b = "ct_gaussian/b_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_b = fopen(filename_b,'w');
    fwrite(file_b, b, 'double');
    fclose(file_b);

    filename_b_error = "ct_gaussian/b_error_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_b_error = fopen(filename_b_error,'w');
    fwrite(file_b_error, b_error, 'double');
    fclose(file_b_error);

    filename_A = "ct_gaussian/A_" + int2str(M) + "_" + int2str(N) + "_" + int2str(seed) + ".bin";
    file_A = fopen(filename_A,'w');
    for i=1:M
        fwrite(file_A, full(A(i,:)), 'double');
    end
    fclose(file_A);

end