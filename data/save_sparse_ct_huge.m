function save_sparse_ct_huge(N_pixels,theta,p,d)

    [A,b,x] = paralleltomo(N_pixels,theta,p,d);

    x_init = x;
    
    % Build RHS and print matrix parameters

    M = size(A,1);
    N = size(A,2);

    fileID = fopen('ct/params_sparse_huge.txt','a+');

    fprintf(fileID, "N_pixels: %d\n", N_pixels);
    fprintf("N_pixels: %d\n", N_pixels);
    fprintf(fileID, "Angles: %d\n", size(theta,2));
    fprintf("Angles: %d\n", size(theta,2));

    fprintf(fileID, "M (before deletion): %d\n", M);
    fprintf("M (before deletion): %d\n", M);
    fprintf(fileID, "N (before deletion): %d\n", N);
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

    fprintf(fileID, "M: %d\n", M);
    fprintf("M: %d\n", M);
    fprintf(fileID, "N: %d\n", N);
    fprintf("N: %d\n", N);
    fprintf(fileID, "Density: %f\n", nnz(A)/M/N);
    fprintf("Density: %f\n", nnz(A)/M/N);

    fclose(fileID);

    fileID_error = fopen('ct/params_sparse_huge.txt','a+');

    fprintf("norm(A*x-b): %f\n", norm(A*x-b));
    fprintf("norm(x): %f\n", norm(x));

    fprintf(fileID_error, "norm(A*x-b): %f\n", norm(A*x-b));
    fprintf(fileID_error, "norm(x): %f\n", norm(x));
    
    max_pixel = max(x_init);
    min_pixel = min(x_init);
    
    figure_init = figure(1);
    imagesc(reshape(x_init,N_pixels,N_pixels))
    colorbar
    caxis manual
    caxis([min_pixel max_pixel])
    filename_fig = "ct/x_" + int2str(M) + "_" + int2str(N) + ".png";
    saveas(figure_init,filename_fig);
    
    % Save

    % CSR

    NNZ = size(nonzeros(A),1);

    row_idx = zeros(M+1,1);
    row_idx(1) = 0;
    cols = zeros(NNZ,1);
    values = zeros(NNZ,1);

    counter = 0;
    element_per_row = 0;
    for i=1:M
        for j=1:N
            if A(i,j) ~= 0
                element_per_row = element_per_row + 1;
                counter = counter + 1;
                cols(counter,1) = j-1;
                values(counter,1) = A(i,j);
            end
        end
        row_idx(i+1) = row_idx(i) + element_per_row;
        element_per_row = 0;
    end

    filename_idx_non_zero_pixels = "ct/idx_non_zero_pixels_" + int2str(M) + "_" + int2str(N) + ".bin";
    file_idx_non_zero_pixels = fopen(filename_idx_non_zero_pixels,'w');
    fwrite(file_idx_non_zero_pixels, N_pixels*N_pixels, 'int');
    fwrite(file_idx_non_zero_pixels, idx_non_zero_pixels, 'int');
    fclose(file_idx_non_zero_pixels);

    filename_is_pixel_zero = "ct/is_pixel_zero_" + int2str(M) + "_" + int2str(N) + ".bin";
    file_is_pixel_zero = fopen(filename_is_pixel_zero,'w');
    fwrite(file_is_pixel_zero, N_pixels*N_pixels, 'int');
    fwrite(file_is_pixel_zero, is_pixel_zero, 'int');
    fclose(file_is_pixel_zero);

    filename_x = "ct/x_" + int2str(M) + "_" + int2str(N) + ".bin";
    file_x = fopen(filename_x,'w');
    fwrite(file_x, x, 'double');
    fclose(file_x);

    filename_b = "ct/b_" + int2str(M) + "_" + int2str(N) + ".bin";
    file_b = fopen(filename_b,'w');
    fwrite(file_b, b, 'double');
    fclose(file_b);

    filename_row_idx = "ct/row_idx_" + int2str(M) + "_" + int2str(N) + ".bin";
    file_row_idx = fopen(filename_row_idx,'w');
    fwrite(file_row_idx, row_idx, 'int');
    fclose(file_row_idx);

    filename_cols = "ct/cols_" + int2str(M) + "_" + int2str(N) + ".bin";
    file_cols = fopen(filename_cols,'w');
    fwrite(file_cols, NNZ, 'int');
    fwrite(file_cols, cols, 'int');
    fclose(file_cols);

    filename_values = "ct/values_" + int2str(M) + "_" + int2str(N) + ".bin";
    file_values = fopen(filename_values,'w');
    fwrite(file_values, NNZ, 'int');
    fwrite(file_values, values, 'double');
    fclose(file_values);

end