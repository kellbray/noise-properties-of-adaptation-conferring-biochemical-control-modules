% read_AIF_three_components_parameters.m
function params = read_AIF_three_components_parameters(filename)

params_array = read_binary_to_double_array(filename, 21);

% extract data into struct with fields with meaningful names
params = struct;
params.theta = params_array(:,1);
params.mu = params_array(:,2);
params.k = params_array(:,3);
params.alpha = params_array(:,4);
params.C = params_array(:,5);
params.beta_x = params_array(:,6);
params.beta_y = params_array(:,7);
params.beta_z = params_array(:,8);
params.lambda = params_array(:,9);
params.gamma = params_array(:,10);
params.V_y = params_array(:,11);
params.n_y = params_array(:,12);
params.A_y = params_array(:,13);
params.V_x = params_array(:,14);
params.n_x = params_array(:,15);
params.A_x = params_array(:,16);
params.rec_min = params_array(:,17);
params.seed = params_array(:,18);
params.passive_reporter = params_array(:,19);
params.trace_length = params_array(:,20);
params.pert_size = params_array(:,21);

end

