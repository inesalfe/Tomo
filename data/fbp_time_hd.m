%% Setup

% nohup matlab -nodisplay -nosplash -singleCompThread -batch "run('fbp_time_hd.m'); exit" > output6.log 2>&1 &

clc;
clear;

addpath('AIRToolsII/')
AIRToolsII_setup('temporary')

%% Data 1

N_pixels = 1024;
theta_inc = 0.5;
theta = 0:theta_inc:179.5;
seed = 2;
eta = 0.002;

p = round(sqrt(2)*N_pixels);
d = p-1;

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_" + int2str(N_pixels) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

for i=1:size(x_sol_fbp)
    if x_sol_fbp(i) > 1
        x_sol_fbp(i) = 1;
    elseif x_sol_fbp(i) < 0
        x_sol_fbp(i) = 0;
    end
end
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_box_proj_" + int2str(N_pixels) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

%% Data 2

N_pixels = 2048;

p = round(sqrt(2)*N_pixels);
d = p-1;

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_" + int2str(N_pixels) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

for i=1:size(x_sol_fbp)
    if x_sol_fbp(i) > 1
        x_sol_fbp(i) = 1;
    elseif x_sol_fbp(i) < 0
        x_sol_fbp(i) = 0;
    end
end
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_box_proj_" + int2str(N_pixels) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

%% Data 3

N_pixels = 4096;

p = round(sqrt(2)*N_pixels);
d = p-1;

x_sol_fbp = fbp_sol(N_pixels,theta,p,d,seed,eta);
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_" + int2str(N_pixels) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);

for i=1:size(x_sol_fbp)
    if x_sol_fbp(i) > 1
        x_sol_fbp(i) = 1;
    elseif x_sol_fbp(i) < 0
        x_sol_fbp(i) = 0;
    end
end
norm(x_sol_fbp-x, 2)*norm(x_sol_fbp-x, 2)

filename_fbp = "ct_gaussian/x_fbp_hd_box_proj_" + int2str(N_pixels) + "_" + int2str(seed) + ".bin";
file_fbp = fopen(filename_fbp,'w');
fwrite(file_fbp, x_sol_fbp, 'double');
fclose(file_fbp);