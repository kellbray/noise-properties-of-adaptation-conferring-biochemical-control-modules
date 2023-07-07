% read_AIF_three_components_parameters.m
function params = read_AIF_four_components_parameters(filename)

params_array = read_binary_to_double_array(filename, 23);

% extract data into struct with fields with meaningful names
params = struct;
params.phi = params_array(:,1);
params.beta_w = params_array(:,2);
params.theta = params_array(:,3);
params.mu = params_array(:,4);
params.k = params_array(:,5);
params.alpha = params_array(:,6);
params.C = params_array(:,7);
params.beta_x = params_array(:,8);
params.beta_y = params_array(:,9);
params.beta_z = params_array(:,10);
params.lambda = params_array(:,11);
params.gamma = params_array(:,12);
params.V_y = params_array(:,13);
params.n_y = params_array(:,14);
params.A_y = params_array(:,15);
params.V_x = params_array(:,16);
params.n_x = params_array(:,17);
params.A_x = params_array(:,18);
params.rec_min = params_array(:,19);
params.seed = params_array(:,20);
params.passive_reporter = params_array(:,21);
params.trace_length = params_array(:,22);
params.pert_size = params_array(:,23);

end

