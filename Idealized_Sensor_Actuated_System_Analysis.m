%% define path to data
data_path = '.\RawData\Idealized_Sensor_Actuated_System\';

%% import data 
stats_fname_1 = strcat(data_path, 'Idealized_Reference_Actuated_1_STATISTICS.bin');
stats_1 = read_AIF_three_components_statistics(stats_fname_1);
params_fname_1 = strcat(data_path, 'Idealized_Reference_Actuated_1_PARAMETERS.bin');
params_1 = read_AIF_three_components_parameters(params_fname_1);

stats_fname_2 = strcat(data_path, 'Idealized_Reference_Actuated_2_STATISTICS.bin');
stats_2 = read_AIF_three_components_statistics(stats_fname_2);
params_fname_2 = strcat(data_path, 'Idealized_Reference_Actuated_2_PARAMETERS.bin');
params_2 = read_AIF_three_components_parameters(params_fname_2);

stats_fname_3 = strcat(data_path, 'Idealized_Reference_Actuated_3_STATISTICS.bin');
stats_3 = read_AIF_three_components_statistics(stats_fname_3);
params_fname_3 = strcat(data_path, 'Idealized_Reference_Actuated_3_PARAMETERS.bin');
params_3 = read_AIF_three_components_parameters(params_fname_3);

stats_fname_4 = strcat(data_path, 'Idealized_Reference_Actuated_4_STATISTICS.bin');
stats_4 = read_AIF_three_components_statistics(stats_fname_4);
params_fname_4 = strcat(data_path, 'Idealized_Reference_Actuated_4_PARAMETERS.bin');
params_4 = read_AIF_three_components_parameters(params_fname_4);

stats_fname_5 = strcat(data_path, 'Idealized_Reference_Actuated_5_STATISTICS.bin');
stats_5 = read_AIF_three_components_statistics(stats_fname_5);
params_fname_5 = strcat(data_path, 'Idealized_Reference_Actuated_5_PARAMETERS.bin');
params_5 = read_AIF_three_components_parameters(params_fname_5);

stats_fname_6 = strcat(data_path, 'Idealized_Reference_Actuated_6_STATISTICS.bin');
stats_6 = read_AIF_three_components_statistics(stats_fname_6);
params_fname_6 = strcat(data_path, 'Idealized_Reference_Actuated_6_PARAMETERS.bin');
params_6 = read_AIF_three_components_parameters(params_fname_6);

%% check flux and covariance balance 

% 2% threshold
FB = check_flux_balance_AIF_three_components(stats_1, params_1, 2/100); 
% 5% threshold
CB = check_covariance_balance_AIF_three_components(stats_1, params_1, 5/100); 
inds_1 = FB & CB;
fprintf(strcat(num2str(sum(inds_1)),...
    ' parameter sets pass flux and covariance balance',...
    ' in first data file. \n'))

% 2% threshold
FB = check_flux_balance_AIF_three_components(stats_2, params_2, 2/100); 
% 5% threshold
CB = check_covariance_balance_AIF_three_components(stats_2, ...
    params_2, 5/100); 
inds_2 = FB & CB;
fprintf(strcat(num2str(sum(inds_2)),...
    ' parameter sets pass flux and covariance balance',...
    ' in second data file. \n'))

% 2% threshold
FB = check_flux_balance_AIF_three_components(stats_3, params_3, 2/100); 
% 5% threshold
CB = check_covariance_balance_AIF_three_components(stats_3, ...
    params_3, 5/100);
inds_3 = FB & CB;
fprintf(strcat(num2str(sum(inds_3)),...
    ' parameter sets pass flux and covariance balance',...
    ' in third data file. \n'))


% 2% threshold
FB = check_flux_balance_AIF_three_components(stats_4, ...
    params_4, 2/100); 
% 5% threshold
CB = check_covariance_balance_AIF_three_components(stats_4, ...
    params_4, 5/100); 
inds_4 = FB & CB;
fprintf(strcat(num2str(sum(inds_4)),...
    ' parameter sets pass flux and covariance balance',...
    ' in fourth data file. \n'))

% 2% threshold
FB = check_flux_balance_AIF_three_components(stats_5, params_5, 2/100); 
% 5% threshold
CB = check_covariance_balance_AIF_three_components(stats_5, ...
    params_5, 5/100); 
inds_5 = FB & CB;
fprintf(strcat(num2str(sum(inds_5)),...
    ' parameter sets pass flux and covariance balance',...
    ' in fifth data file. \n'))

% 2% threshold
FB = check_flux_balance_AIF_three_components(stats_6, params_6, 2/100); 
% 5% threshold
CB = check_covariance_balance_AIF_three_components(stats_6, ...
    params_6, 5/100); 
inds_6 = FB & CB;
fprintf(strcat(num2str(sum(inds_6)),...
    ' parameter sets pass flux and covariance balance',...
    ' in sixth data file. \n'))

%% subset data based on flux and covariance balance tests
fn = fieldnames(params_1);
for i = 1:numel(fn)
    field_vals = params_1.(fn{i});
    params_1.(fn{i}) = field_vals(inds_1);
    
    field_vals = params_2.(fn{i});
    params_2.(fn{i}) = field_vals(inds_2);

    field_vals = params_3.(fn{i});
    params_3.(fn{i}) = field_vals(inds_3);

    field_vals = params_4.(fn{i});
    params_4.(fn{i}) = field_vals(inds_4);
    
    field_vals = params_5.(fn{i});
    params_5.(fn{i}) = field_vals(inds_5);
    
    field_vals = params_6.(fn{i});
    params_6.(fn{i}) = field_vals(inds_6);
end
fn = fieldnames(stats_1);
for i = 1:numel(fn)
    field_vals = stats_1.(fn{i});
    stats_1.(fn{i}) = field_vals(inds_1);
    
    field_vals = stats_2.(fn{i});
    stats_2.(fn{i}) = field_vals(inds_2);

    field_vals = stats_3.(fn{i});
    stats_3.(fn{i}) = field_vals(inds_3);

    field_vals = stats_4.(fn{i});
    stats_4.(fn{i}) = field_vals(inds_4);
    
    field_vals = stats_5.(fn{i});
    stats_5.(fn{i}) = field_vals(inds_5);
    
    field_vals = stats_6.(fn{i});
    stats_6.(fn{i}) = field_vals(inds_6);
end

%% aggregate data  
params = struct;
fn = fieldnames(params_1);
for i = 1:numel(fn)
    params.(fn{i}) = [params_1.(fn{i});...
		params_2.(fn{i}); params_3.(fn{i});...
		params_4.(fn{i}); params_5.(fn{i});...
        params_6.(fn{i})];
end
stats = struct;
fn = fieldnames(stats_1);
for i = 1:numel(fn)
    stats.(fn{i}) = [stats_1.(fn{i});...
		stats_2.(fn{i}); stats_3.(fn{i});...
		stats_4.(fn{i}); stats_5.(fn{i});...
        stats_6.(fn{i})];
end

fprintf(strcat(num2str(numel(params.mu)), ' simulations in total',...
    'pass flux and covariance balance. \n'))
%% check for noise suppression
num_below_Poisson = ...
    sum(sqrt(stats.Z_var./(stats.Z_avg.^2)) < ...
    sqrt(1./(stats.Z_avg)));
fprintf(strcat(num2str(sum(num_below_Poisson)),...
    ' CV values below open-loop levels. \n'))
%% analyse reseed data 
% for parameters sets corresponding to the 10 smallest relative noise levels
stats_fname_rs = strcat(data_path, 'Idealized_Reference_Actuated_reseeds_STATISTICS.bin');
stats_rs = read_AIF_three_components_statistics(stats_fname_rs);
params_fname_rs = strcat(data_path, 'Idealized_Reference_Actuated_reseeds_PARAMETERS.bin');
params_rs = read_AIF_three_components_parameters(params_fname_rs);

% check flux and covariance balance 
% 2% threshold
FB = check_flux_balance_AIF_three_components(stats_rs, params_rs, 2/100); 
% 5% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs, ...
    params_rs, 5/100); 
inds_rs = FB & CB;
fprintf(strcat(num2str(sum(inds_rs)/numel(params_rs.theta)),'\n'))

% subset data based on flux and covariance balance tests
fn = fieldnames(params_rs);
for i = 1:numel(fn)
    field_vals = params_rs.(fn{i});
    params_rs.(fn{i}) = field_vals(inds_rs);
end
fn = fieldnames(stats_rs);
for i = 1:numel(fn)
    field_vals = stats_rs.(fn{i});
    stats_rs.(fn{i}) = field_vals(inds_rs);
end

% find unique parameter sets
fn = fieldnames(params_rs);
param_sets_rs = zeros(numel(params_rs.mu), numel(fn)-2);
for i = 1:numel(fn)
    if not(i==17) && not(i==18) % disregard iterations and prng seeds
        param_sets_rs(:, i) = params_rs.(fn{i});
    end
end
unique_sets_inds = cell([1,1]);
unique_sets = unique(param_sets_rs, 'rows', 'stable');
for i = 1:size(unique_sets, 1)
    inds = find(all(transpose(param_sets_rs == unique_sets(i,:))));
    unique_sets_inds{i} = inds;
end

%calculate averages and standard deviations for each parameter set
y_rs = sqrt(stats_rs.Z_var./(stats_rs.Z_avg));

y_rs_avg = zeros([1,size(unique_sets, 1)]);
y_rs_std = zeros([1,size(unique_sets, 1)]);
N = zeros([1,size(unique_sets, 1)]);

theta_rs = zeros([1,size(unique_sets, 1)]);
n_x_rs = zeros([1,size(unique_sets, 1)]);
beta_z_rs = zeros([1,size(unique_sets, 1)]);
kk_rs = zeros([1,size(unique_sets, 1)]);

for i = 1:size(unique_sets, 1)
    inds = unique_sets_inds{i};
    
    avg = mean(y_rs(inds));
    stdev = std(y_rs(inds));
    
    y_rs_avg(i) = avg;
    y_rs_std(i) = stdev;
    
    n_x_rs(i) = unique_sets(i,15);
    
    N(i) = sum(inds);
end

% check that at lest 3 seeds survived flux and covariance balance per
% parameter set
if min(N) >= 3
    fprintf('At least 3 seeds per parameter set. \n')
else
    fprintf('There are cases with less than 3 seeds per parameter set. \n')
end

remain = (y_rs_avg + y_rs_std) < 1;
num_remain = sum(remain);

msg = strcat({num2str(num_remain)},...
    {' reseed means of'}, {' '}, {num2str(numel(y_rs_avg))},...
    {' unique parameter sets fall more than one standard deviation below'},...
    {' open-loop fluctuations data with parameter sampling \n'});
msg = msg{1};
fprintf(msg)

y_rs_avg_remain = y_rs_avg(remain);
[deviation, where] = min(1 - y_rs_avg_remain);
fprintf(strcat(num2str(deviation),...
    ' minimum relative deviation of reseed means with mean + stdev CV ',...
    ' below open-loop fluctuations \n'))

% index for y_rs corresponding to max error among remaining points with
% mean + stdev < 1
where1 = y_rs_avg == y_rs_avg_remain(where); 

where2 = remain & (n_x_rs > -5);

%% analyse how max deviation open-loop levels changes with number of samples
%   for point amongst reseeded noise suppression data whose mean CV falls 
%   closest to open-levels

% load additional data to get  least N=10
stats_fname_rs_1 = strcat(data_path, ...
    'Idealized_Reference_Actuated_mean_closest_to_OL_reseed_STATISTICS.bin');
stats_rs_1 = read_AIF_three_components_statistics(stats_fname_rs_1);
params_fname_rs_1 = strcat(data_path, ...
    'Idealized_Reference_Actuated_mean_closest_to_OL_reseed_PARAMETERS.bin');
params_rs_1 = read_AIF_three_components_parameters(params_fname_rs_1);

% check flux and covariance balance
FB = check_flux_balance_AIF_three_components(stats_rs_1, ...
    params_rs_1, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs_1, ...
    params_rs_1, 5/100); % 5% threshold
inds_rs_1 = FB & CB;

% subset data based on flux and covariance balance 
fn = fieldnames(params_rs_1);
for i = 1:numel(fn)
    field_vals = params_rs_1.(fn{i});
    params_rs_1.(fn{i}) = field_vals(inds_rs_1);
end
fn = fieldnames(stats_rs_1);
for i = 1:numel(fn)
    field_vals = stats_rs_1.(fn{i});
    stats_rs_1.(fn{i}) = field_vals(inds_rs_1);
end

% calculate averages and standard deviations for the max deviation data for
% N = 3, 5, 10
values = [y_rs(unique_sets_inds{where1});...
    sqrt(stats_rs_1.Z_var./(stats_rs_1.Z_avg))];
values = values(1:3);
avg = mean(values);
stdev = std(values);
y_rs_avg_N3 = avg;
y_rs_std_N3 = stdev;

values = [y_rs(unique_sets_inds{where1});...
    sqrt(stats_rs_1.Z_var./(stats_rs_1.Z_avg))];
values = values(1:5);
avg = mean(values);
stdev = std(values);
y_rs_avg_N5 = avg;
y_rs_std_N5 = stdev;

values = [y_rs(unique_sets_inds{where1});...
    sqrt(stats_rs_1.Z_var./(stats_rs_1.Z_avg))];
values = values(1:10);
avg = mean(values);
stdev = std(values);
y_rs_avg_N10 = avg;
y_rs_std_N10 = stdev;

figure;
errorbar([3, 5, 10], -[(1 - y_rs_avg_N3), ...
    (1 - y_rs_avg_N5),(1 - y_rs_avg_N10)],...
    [y_rs_std_N3, y_rs_std_N5, y_rs_std_N10], '.', 'MarkerSize', 12,...
    'color', 'black')
hold on
plot(0:0.01:11, zeros(size(0:0.01:11)), '--', 'color', 'red', 'linewidth', 3)
xlabel('\textbf{Number of seeds}',...
    'Interpreter', 'Latex', 'fontsize', 16)
ylabel({'\textbf{Relative deviation}'; ...
    '\boldmath$(\mathrm{mean} - \mathrm{bound})/\mathrm{bound}$'},...
    'Interpreter', 'Latex', 'fontsize', 16)
xlim([2,11])
ylim([-0.45,0.01])
exportgraphics(gcf, ...
    '.\Figures\FigSI_idealized_sens_err_min_deviation.pdf',...
    'ContentType','vector')

%%

% load additional data to get  least N=10
stats_fname_rs_2 = strcat(data_path, ...
    'Idealized_Reference_Actuated_noisesupp_small_abs_n_reseed_STATISTICS.bin');
stats_rs_2 = read_AIF_three_components_statistics(stats_fname_rs_2);
params_fname_rs_2 = strcat(data_path, ...
    'Idealized_Reference_Actuated_noisesupp_small_abs_n_reseed_PARAMETERS.bin');
params_rs_2 = read_AIF_three_components_parameters(params_fname_rs_2);

% check flux and covariance balance
FB = check_flux_balance_AIF_three_components(stats_rs_2, ...
    params_rs_2, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs_2, ...
    params_rs_2, 5/100); % 5% threshold
inds_rs_2 = FB & CB;

% subset data based on flux and covariance balance 
fn = fieldnames(params_rs_2);
for i = 1:numel(fn)
    field_vals = params_rs_2.(fn{i});
    params_rs_2.(fn{i}) = field_vals(inds_rs_2);
end
fn = fieldnames(stats_rs_2);
for i = 1:numel(fn)
    field_vals = stats_rs_2.(fn{i});
    stats_rs_2.(fn{i}) = field_vals(inds_rs_2);
end

% calculate averages and standard deviations for the max deviation data for
% N = 3, 5, 10
values = [y_rs(unique_sets_inds{where2});...
    sqrt(stats_rs_2.Z_var./(stats_rs_2.Z_avg))];
values = values(1:3);
avg = mean(values);
stdev = std(values);
y_rs_avg_N3 = avg;
y_rs_std_N3 = stdev;

values = [y_rs(unique_sets_inds{where2});...
    sqrt(stats_rs_2.Z_var./(stats_rs_2.Z_avg))];
values = values(1:5);
avg = mean(values);
stdev = std(values);
y_rs_avg_N5 = avg;
y_rs_std_N5 = stdev;

values = [y_rs(unique_sets_inds{where2});...
    sqrt(stats_rs_2.Z_var./(stats_rs_2.Z_avg))];
values = values(1:10);
avg = mean(values);
stdev = std(values);
y_rs_avg_N10 = avg;
y_rs_std_N10 = stdev;

theta_val = theta_rs(where2);
beta_z_val = beta_z_rs(where2);
kk = kk_rs(where2);

N2_Nx = theta_val./beta_z_val; 
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));

figure;
errorbar([3, 5, 10], -[(1 - y_rs_avg_N3), ...
    (1 - y_rs_avg_N5),(1 - y_rs_avg_N10)],...
    [y_rs_std_N3, y_rs_std_N5, y_rs_std_N10], '.', 'MarkerSize', 12,...
    'color', 'black')
hold on
plot(0:0.01:11, zeros(size(0:0.01:11)), '--', 'color', 'red', 'linewidth', 3)
xlabel('\textbf{Number of seeds}',...
    'Interpreter', 'Latex', 'fontsize', 16)
ylabel({'\textbf{Relative deviation}'; ...
    '\boldmath$(\mathrm{mean} - \mathrm{bound})/\mathrm{bound} $'},...
    'Interpreter', 'Latex', 'fontsize', 16)
xlim([2,11])
ylim([-0.45,0.01])
exportgraphics(gcf, ...
    '.\Figures\FigSI_idealized_sens_err_smaller_n.pdf',...
    'ContentType','vector')

%{
%% define path where data for plotting will be saved
save_path = '.\DataForPlotting\'

%% export Fig 4B data for density adjustment 
zavg = stats.Z_avg;
znoise = sqrt(stats.Z_var./(stats.Z_avg.^2));

fileID = fopen(strcat(save_path, 'Fig4B_data.txt'),'w');
formatspec = '%f %f \r\n';
data = [zavg'; znoise'];
fprintf(fileID, formatspec, data);
fclose(fileID);

%% export data for supplementary figure for density adjustment 
N2_Nx = params.theta./params.beta_z;
rnz = sqrt(stats.Z_var./stats.Z_avg);a

fileID = fopen(strcat(save_path, 'SI_SensorBound_data.txt'),'w');
formatspec = '%f %f \r\n';
data = [N2_Nx'; rnz'];
fprintf(fileID, formatspec, data);
fclose(fileID);
%}
