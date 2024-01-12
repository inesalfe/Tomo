%% Reset

clc;
clear;

addpath('/opt/MATLAB/astra/tools')

%% Save

N = 128;
theta_inc = 1.5;
theta = 0:theta_inc:178.5;

% System

% vol_geom = astra_create_vol_geom(N);
% det_count = round(sqrt(2)*N);
% det_spacing = 1;
% proj_geom = astra_create_proj_geom('parallel', det_spacing, det_count, theta);

% proj_id = astra_create_projector('line', proj_geom, vol_geom);
% matrix_id = astra_mex_projector('matrix', proj_id);
% S = astra_mex_matrix('get', matrix_id);
% id = astra_create_sino(data, projector_id);
% [id, sinogram] = astra_create_sino(data, projector_id);

% astra_mex_matrix('delete', matrix_id);
% astra_mex_projector('delete', proj_id);
% astra_mex_projector('delete', id);
% astra_mex_projector('delete', sinogram);