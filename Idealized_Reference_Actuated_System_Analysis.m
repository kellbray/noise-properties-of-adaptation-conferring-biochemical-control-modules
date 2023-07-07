%% define path to data
data_path = '.\RawData\Idealized_Reference_Actuated_System\';

%% import data with parameter sampling over 2 orders of magnitude
stats_2om_fname_1 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_1_STATISTICS.bin');
stats_2om_1 = read_AIF_three_components_statistics(stats_2om_fname_1);
params_2om_fname_1 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_1_PARAMETERS.bin');
params_2om_1 = read_AIF_three_components_parameters(params_2om_fname_1);

stats_2om_fname_2 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_2_STATISTICS.bin');
stats_2om_2 = read_AIF_three_components_statistics(stats_2om_fname_2);
params_2om_fname_2 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_2_PARAMETERS.bin');
params_2om_2 = read_AIF_three_components_parameters(params_2om_fname_2);

stats_2om_fname_3 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_3_STATISTICS.bin');
stats_2om_3 = read_AIF_three_components_statistics(stats_2om_fname_3);
params_2om_fname_3 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_3_PARAMETERS.bin');
params_2om_3 = read_AIF_three_components_parameters(params_2om_fname_3);

stats_2om_fname_4 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_4_STATISTICS.bin');
stats_2om_4 = read_AIF_three_components_statistics(stats_2om_fname_4);
params_2om_fname_4 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_4_PARAMETERS.bin');
params_2om_4 = read_AIF_three_components_parameters(params_2om_fname_4);

stats_2om_fname_5 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_5_STATISTICS.bin');
stats_2om_5 = read_AIF_three_components_statistics(stats_2om_fname_5);
params_2om_fname_5 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_5_PARAMETERS.bin');
params_2om_5 = read_AIF_three_components_parameters(params_2om_fname_5);

stats_2om_fname_6 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_6_STATISTICS.bin');
stats_2om_6 = read_AIF_three_components_statistics(stats_2om_fname_6);
params_2om_fname_6 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_6_PARAMETERS.bin');
params_2om_6 = read_AIF_three_components_parameters(params_2om_fname_6);

stats_2om_fname_7 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_7_STATISTICS.bin');
stats_2om_7 = read_AIF_three_components_statistics(stats_2om_fname_7);
params_2om_fname_7 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_7_PARAMETERS.bin');
params_2om_7 = read_AIF_three_components_parameters(params_2om_fname_7);

stats_2om_fname_8 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_8_STATISTICS.bin');
stats_2om_8 = read_AIF_three_components_statistics(stats_2om_fname_8);
params_2om_fname_8 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_8_PARAMETERS.bin');
params_2om_8 = read_AIF_three_components_parameters(params_2om_fname_8);

stats_2om_fname_9 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_9_STATISTICS.bin');
stats_2om_9 = read_AIF_three_components_statistics(stats_2om_fname_9);
params_2om_fname_9 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_9_PARAMETERS.bin');
params_2om_9 = read_AIF_three_components_parameters(params_2om_fname_9);

stats_2om_fname_10 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_10_STATISTICS.bin');
stats_2om_10 = read_AIF_three_components_statistics(stats_2om_fname_10);
params_2om_fname_10 = strcat(data_path,...
    'Idealized_Reference_Actuated_2_orders_of_mag_10_PARAMETERS.bin');
params_2om_10 = read_AIF_three_components_parameters(params_2om_fname_10);

% aggregate data with parameter sampling over 2 orders of magnitude
params_2om = struct;
fn = fieldnames(params_2om_1);
for i = 1:numel(fn)
    params_2om.(fn{i}) = [params_2om_1.(fn{i});...
        params_2om_2.(fn{i});params_2om_3.(fn{i});...
        params_2om_4.(fn{i});params_2om_5.(fn{i});...
        params_2om_6.(fn{i});params_2om_7.(fn{i});...
		params_2om_8.(fn{i});params_2om_9.(fn{i});...
		params_2om_10.(fn{i})];
end
stats_2om = struct;
fn = fieldnames(stats_2om_1);
for i = 1:numel(fn)
    stats_2om.(fn{i}) = [stats_2om_1.(fn{i});...
        stats_2om_2.(fn{i});stats_2om_3.(fn{i});...
        stats_2om_4.(fn{i});stats_2om_5.(fn{i});...
        stats_2om_6.(fn{i});stats_2om_7.(fn{i});...
		stats_2om_8.(fn{i});stats_2om_9.(fn{i});...
		stats_2om_10.(fn{i})];
end

fprintf(strcat(num2str(numel(params_2om.mu)),...
    ' parameter sets total with parameter sampling',...
    ' over two orders of magnitude. \n'))

%% import data with parameter sampling over 4 orders of magnitude
stats_4om_fname_1 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_1_STATISTICS.bin');
stats_4om_1 = read_AIF_three_components_statistics(stats_4om_fname_1);
params_4om_fname_1 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_1_PARAMETERS.bin');
params_4om_1 = read_AIF_three_components_parameters(params_4om_fname_1);

stats_4om_fname_2 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_2_STATISTICS.bin');
stats_4om_2 = read_AIF_three_components_statistics(stats_4om_fname_2);
params_4om_fname_2 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_2_PARAMETERS.bin');
params_4om_2 = read_AIF_three_components_parameters(params_4om_fname_2);

stats_4om_fname_3 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_3_STATISTICS.bin');
stats_4om_3 = read_AIF_three_components_statistics(stats_4om_fname_3);
params_4om_fname_3 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_3_PARAMETERS.bin');
params_4om_3 = read_AIF_three_components_parameters(params_4om_fname_3);

stats_4om_fname_4 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_4_STATISTICS.bin');
stats_4om_4 = read_AIF_three_components_statistics(stats_4om_fname_4);
params_4om_fname_4 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_4_PARAMETERS.bin');
params_4om_4 = read_AIF_three_components_parameters(params_4om_fname_4);

stats_4om_fname_5 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_5_STATISTICS.bin');
stats_4om_5 = read_AIF_three_components_statistics(stats_4om_fname_5);
params_4om_fname_5 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_5_PARAMETERS.bin');
params_4om_5 = read_AIF_three_components_parameters(params_4om_fname_5);

stats_4om_fname_6 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_6_STATISTICS.bin');
stats_4om_6 = read_AIF_three_components_statistics(stats_4om_fname_6);
params_4om_fname_6 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_6_PARAMETERS.bin');
params_4om_6 = read_AIF_three_components_parameters(params_4om_fname_6);

stats_4om_fname_7 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_7_STATISTICS.bin');
stats_4om_7 = read_AIF_three_components_statistics(stats_4om_fname_7);
params_4om_fname_7 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_7_PARAMETERS.bin');
params_4om_7 = read_AIF_three_components_parameters(params_4om_fname_7);

stats_4om_fname_8 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_8_STATISTICS.bin');
stats_4om_8 = read_AIF_three_components_statistics(stats_4om_fname_8);
params_4om_fname_8 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_8_PARAMETERS.bin');
params_4om_8 = read_AIF_three_components_parameters(params_4om_fname_8);

stats_4om_fname_9 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_9_STATISTICS.bin');
stats_4om_9 = read_AIF_three_components_statistics(stats_4om_fname_9);
params_4om_fname_9 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_9_PARAMETERS.bin');
params_4om_9 = read_AIF_three_components_parameters(params_4om_fname_9);

stats_4om_fname_10 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_10_STATISTICS.bin');
stats_4om_10 = read_AIF_three_components_statistics(stats_4om_fname_10);
params_4om_fname_10 = strcat(data_path,...
    'Idealized_Reference_Actuated_4_orders_of_mag_10_PARAMETERS.bin');
params_4om_10 = read_AIF_three_components_parameters(params_4om_fname_10);

% aggregate data with parameter sampling over 4 orders of magnitude
params_4om = struct;
fn = fieldnames(params_4om_1);
for i = 1:numel(fn)
    params_4om.(fn{i}) = [params_4om_1.(fn{i});...
        params_4om_2.(fn{i});params_4om_3.(fn{i});...
        params_4om_4.(fn{i});params_4om_5.(fn{i});...
        params_4om_6.(fn{i});params_4om_7.(fn{i});...
		params_4om_8.(fn{i});params_4om_9.(fn{i});...
		params_4om_10.(fn{i})];
end
stats_4om = struct;
fn = fieldnames(stats_4om_1);
for i = 1:numel(fn)
    stats_4om.(fn{i}) = [stats_4om_1.(fn{i});...
        stats_4om_2.(fn{i});stats_4om_3.(fn{i});...
        stats_4om_4.(fn{i});stats_4om_5.(fn{i});...
        stats_4om_6.(fn{i});stats_4om_7.(fn{i});...
		stats_4om_8.(fn{i});stats_4om_9.(fn{i});...
		stats_4om_10.(fn{i})];
end

fprintf(strcat(num2str(numel(params_4om.mu)),...
    ' parameter sets total with parameter sampling',...
    ' over four orders of magnitude. \n'))


%% import data with parameter sampling over 2 orders of magnitude with mu/theta = 1 
stats_2om_sp_eq1 = struct;
params_2om_sp_eq1 = struct;
for i = 1:10
	stats_2om_fname_sp_eq1_i = strcat(data_path, ...
        'Idealized_Reference_Actuated_sp_eq1_',num2str(i),'_STATISTICS.bin');
	stats_2om_sp_eq1_i = ...
        read_AIF_three_components_statistics(stats_2om_fname_sp_eq1_i);
	params_2om_fname_sp_eq1_i = strcat(data_path, ...
        'Idealized_Reference_Actuated_sp_eq1_',num2str(i),'_PARAMETERS.bin');
	params_2om_sp_eq1_i = ...
        read_AIF_three_components_parameters(params_2om_fname_sp_eq1_i);
	
	fn = fieldnames(params_2om_sp_eq1_i);
	for j = 1:numel(fn)
        if i > 1
            field_vals = params_2om_sp_eq1.(fn{j});
            params_2om_sp_eq1.(fn{j}) = ...
                [field_vals; params_2om_sp_eq1_i.(fn{j})];
        else
            params_2om_sp_eq1.(fn{j}) = params_2om_sp_eq1_i.(fn{j});
        end
	end
	fn = fieldnames(stats_2om_sp_eq1_i);
	for j = 1:numel(fn)
        if i > 1
            field_vals = stats_2om_sp_eq1.(fn{j});
            stats_2om_sp_eq1.(fn{j}) = ...
                [field_vals; stats_2om_sp_eq1_i.(fn{j})];
        else
            stats_2om_sp_eq1.(fn{j}) = stats_2om_sp_eq1_i.(fn{j});
        end
	end
end

fprintf(strcat(num2str(numel(params_2om_sp_eq1.mu)),...
    ' parameter sets total with parameter sampling',...
    ' over two orders of magnitude for mu/theta = 1. \n'))

%% check flux and covariance balance 

% for data with parameter sampling over 2 orders of magnitude

% 2% threshold
FB = check_flux_balance_AIF_three_components(stats_2om,...
    params_2om, 2/100); 
% 5% threshold
CB = check_covariance_balance_AIF_three_components(stats_2om,...
    params_2om, 5/100); 
inds_2om = FB & CB;
fprintf(strcat(num2str(sum(inds_2om)),...
    ' parameter sets pass flux and covariance balance',...
    ' with parameter sampling over two orders of magnitude.',...
    '\n'))

% for data with parameter sampling over 4 orders of magnitude

FB = check_flux_balance_AIF_three_components(stats_4om,...
    params_4om, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_4om,...
    params_4om, 5/100); % 5% threshold
inds_4om = FB & CB;
fprintf(strcat(num2str(sum(inds_4om)),...
    ' parameter sets pass flux and covariance balance',...
    ' with parameter sampling over four orders of magnitude. \n'))

% for data with parameter sampling over 2 orders of magnitude with mu/theta = 1 

FB = check_flux_balance_AIF_three_components(stats_2om_sp_eq1,...
    params_2om_sp_eq1, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_2om_sp_eq1,...
    params_2om_sp_eq1, 5/100); % 5% threshold
inds_sp_eq1 = FB & CB;
fprintf(strcat(num2str(sum(inds_sp_eq1)),...
    ' parameter sets pass flux and covariance balance',...
    ' with parameter sampling over two orders of magnitude with ',...
    ' mu/theta = 1. \n'))

%% subset data based on flux and covariance balance tests
fn = fieldnames(params_2om);
for i = 1:numel(fn)
    field_vals = params_2om.(fn{i});
    params_2om.(fn{i}) = field_vals(inds_2om);
    
    field_vals = params_4om.(fn{i});
    params_4om.(fn{i}) = field_vals(inds_4om);
    
    field_vals = params_2om_sp_eq1.(fn{i});
    params_2om_sp_eq1.(fn{i}) = field_vals(inds_sp_eq1);
    
end
fn = fieldnames(stats_2om);
for i = 1:numel(fn)
    field_vals = stats_2om.(fn{i});
    stats_2om.(fn{i}) = field_vals(inds_2om);
    
    field_vals = stats_4om.(fn{i});
    stats_4om.(fn{i}) = field_vals(inds_4om);
    
    field_vals = stats_2om_sp_eq1.(fn{i});
    stats_2om_sp_eq1.(fn{i}) = field_vals(inds_sp_eq1);
    
end
%% check for Poisson limit outliers
num_Poisson_outliers_2om = ...
    sum(sqrt(stats_2om.Z_var./(stats_2om.Z_avg.^2)) < ...
    sqrt(1./(stats_2om.Z_avg)));
fprintf(strcat(num2str(sum(num_Poisson_outliers_2om)),...
    ' CV values below open-loop levels for data with parameter sampling',...
    ' over four orders of magnitude. \n'))

num_Poisson_outliers_4om = ...
    sum(sqrt(stats_4om.Z_var./(stats_4om.Z_avg.^2)) < ...
    sqrt(1./(stats_4om.Z_avg)));
fprintf(strcat(num2str(sum(num_Poisson_outliers_4om)),...
    ' CV values below open-loop levels for data with parameter sampling',...
    ' over four orders of magnitude. \n'))

poi = sqrt(stats_4om.Z_var./(stats_4om.Z_avg.^2)) <...
    sqrt(1./(stats_4om.Z_avg));
CL = sqrt(stats_4om.Z_var./(stats_4om.Z_avg.^2));
CL = CL(poi);
OL = sqrt(1./(stats_4om.Z_avg));
OL = OL(poi);
poiss_err = (OL - CL)./OL;
fprintf(strcat(num2str(poiss_err),...
    ' relative error for open-loop bound outlier \n'))

num_Poisson_outliers_2om_sp_eq1 = ...
    sum(sqrt(stats_2om_sp_eq1.Z_var./(stats_2om_sp_eq1.Z_avg.^2)) < ...
    sqrt(1./(stats_2om_sp_eq1.Z_avg)));
fprintf(strcat(num2str(sum(num_Poisson_outliers_2om_sp_eq1)),...
    ' CV values below open-loop levels for data with parameter sampling',...
    ' over 2 orders of magnitude with mu/theta = 1  \n'))

%% check for Eq. 6 outliers 
    % in preliminary search and data with 2 orders of magnitude parameter sampling

N2_Nx = params_2om.theta./params_2om.beta_z;
kk = params_2om.k./params_2om.beta_z;
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));
rnz = sqrt(stats_2om.Z_var./stats_2om.Z_avg); % sqrt(CV)/(1/sqrt(average))

outliers = rnz < bound;
num_outliers = sum(outliers);
sp_geq_1 = (params_2om.mu./params_2om.theta)>=1;
outliers_sp_geq_1 = sp_geq_1 & outliers;
num_sp_geq1 = sum(outliers_sp_geq_1);

msg = strcat({num2str(sum(num_outliers))},...
    {' CV values out of'}, {' '}, {num2str(numel(rnz))},...
    {' below Eq. 6 prediction for'},...
    {' data with parameter sampling over two orders of magnitude. \n'});
msg = msg{1};
fprintf(msg)

eq6_err_2om = max((bound(outliers) - ...
    rnz(outliers))./bound(outliers));
fprintf(strcat(num2str(eq6_err_2om),...
    ' max relative deviation below Eq. 6 outliers in preliminary search and',...
    ' data with parameter sampling over two orders of magnitude \n'))

msg = strcat({num2str(sum(num_sp_geq1))},...
    {' CV values out of'}, {' '}, {num2str(numel(rnz))},...
    {' below Eq. 6 prediction for preliminary search and'},...
    {' data with parameter sampling over two orders of magnitude given '},...
    {'mu/theta>=1. \n'});
msg = msg{1};
fprintf(msg)

eq6_err_2om_sp_geq_1 = max((bound(outliers_sp_geq_1) - ...
    rnz(outliers_sp_geq_1))./bound(outliers_sp_geq_1));
fprintf(strcat(num2str(eq6_err_2om_sp_geq_1),...
    ' max relative deviation below Eq. 6 outliers in ',...
    ' data with parameter sampling over two orders of magnitude given',...
    ' mu/theta>=1 \n'))

%% analyse reseed data for Eq. 6 outliers with mu/theta >= 1
    % in data with 2 orders of magnitude parameter sampling
    
stats_fname_rs1 = strcat(data_path,...
    'Eq6_outliers_2om_reseeds_STATISTICS.bin');
stats_rs1 =...
    read_AIF_three_components_statistics(stats_fname_rs1);
params_fname_rs1 = strcat(data_path,...
    'Eq6_outliers_2om_reseeds_PARAMETERS.bin');
params_rs1 =...
    read_AIF_three_components_parameters(params_fname_rs1);

% check flux and covariance balance
FB = check_flux_balance_AIF_three_components(stats_rs1, ...
    params_rs1, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs1, ...
    params_rs1, 5/100); % 5% threshold
inds_rs1 = FB & CB;

% subset data based on flux and covariance balance 
fn = fieldnames(params_rs1);
for i = 1:numel(fn)
    field_vals = params_rs1.(fn{i});
    params_rs1.(fn{i}) = field_vals(inds_rs1);
end
fn = fieldnames(stats_rs1);
for i = 1:numel(fn)
    field_vals = stats_rs1.(fn{i});
    stats_rs1.(fn{i}) = field_vals(inds_rs1);
end

% find unique parameter sets
fn = fieldnames(params_rs1);
param_sets_rs1 = zeros(numel(params_rs1.mu), numel(fn)-2);
for i = 1:numel(fn)
    if not(i==17) && not(i==18) % disregard iterations and prng seeds
        param_sets_rs1(:, i) = params_rs1.(fn{i});
    end
end
unique_sets_inds = cell([1,1]);
unique_sets = unique(param_sets_rs1, 'rows', 'stable');
for i = 1:size(unique_sets, 1)
    inds = find(all(transpose(param_sets_rs1 == unique_sets(i,:))));
    unique_sets_inds{i} = inds;
end

%calculate averages and standard deviations for each parameter set
y_rs1 = sqrt(stats_rs1.Z_var./(stats_rs1.Z_avg));

y_rs1_avg = zeros([1,size(unique_sets, 1)]);
y_rs1_std = zeros([1,size(unique_sets, 1)]);
N = zeros([1,size(unique_sets, 1)]);

theta_rs1 = zeros([1,size(unique_sets, 1)]);
beta_z_rs1 = zeros([1,size(unique_sets, 1)]);
kk_rs1 = zeros([1,size(unique_sets, 1)]);

for i = 1:size(unique_sets, 1)
    inds = unique_sets_inds{i};
    
    avg = mean(y_rs1(inds));
    stdev = std(y_rs1(inds));
    
    y_rs1_avg(i) = avg;
    y_rs1_std(i) = stdev;
    
    theta_rs1(i) = unique_sets(i,1);
    beta_z_rs1(i) = unique_sets(i,8);
    kk_rs1(i) = unique_sets(i,3)./beta_z_rs1(i);
    
    N(i) = sum(inds);
end

% check that at lest 3 seeds survived flux and covariance balance per
% parameter set
if min(N) >= 3
    fprintf('At least 3 seeds per parameter set. \n')
else
    fprintf('There are cases with less than 3 seeds per parameter set. \n')
end

% check for remaining outliers 
N2_Nx = theta_rs1./beta_z_rs1; 
kk = kk_rs1;
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));

remain = y_rs1_avg + y_rs1_std < bound;
num_remaining_outliers = sum(remain);

msg = strcat({num2str(num_remaining_outliers)},...
    {' reseed means of'}, {' '}, {num2str(numel(y_rs1_avg))},...
    {' unique parameter sets fall more than one standard deviation below'},...
    {' Eq. 6 prediction data with parameter sampling over two '},...
	{'orders of magnitude given mu/theta >= 1 \n'});
msg = msg{1};
fprintf(msg)
%% check for Eq. 6 outliers 
    % in data with 4 orders of magnitude parameter sampling

N2_Nx = params_4om.theta./params_4om.beta_z;
kk = params_4om.k./params_4om.beta_z;
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));
rnz = sqrt(stats_4om.Z_var./stats_4om.Z_avg); % sqrt(CV)/(1/sqrt(average))

outliers = rnz < bound;
num_outliers = sum(outliers);
sp_geq_1 = (params_4om.mu./params_4om.theta)>=1;
outliers_sp_geq_1 = sp_geq_1 & outliers;
num_sp_geq1 = sum(outliers_sp_geq_1);

msg = strcat({num2str(sum(num_outliers))},...
    {' CV values out of'}, {' '}, {num2str(numel(rnz))},...
    {' fall below Eq. 6 prediction for preliminary search and'},...
    {' data with parameter sampling over four orders of magnitude. \n'});
msg = msg{1};
fprintf(msg)

eq6_err_4om = max((bound(outliers) - ...
    rnz(outliers))./bound(outliers));
fprintf(strcat(num2str(eq6_err_4om),...
    ' max relative deviation below Eq. 6 outliers in data with parameter',...
    ' sampling over four orders of magnitude \n'))

msg = strcat({num2str(sum(num_sp_geq1))},...
    {' CV values out of'}, {' '}, {num2str(numel(rnz))},...
    {' fall below Eq. 6 prediction for preliminary search and'},...
    {' data with parameter sampling over four orders of magnitude given '},...
    {'mu/theta>=1. \n'});
msg = msg{1};
fprintf(msg)

eq6_err_4om_sp_geq_1 = max((bound(outliers_sp_geq_1) - ...
    rnz(outliers_sp_geq_1))./bound(outliers_sp_geq_1));
fprintf(strcat(num2str(eq6_err_4om_sp_geq_1),...
    ' max relative deviation below Eq. 6 outliers in data with parameter',...
    ' sampling over four orders of magnitude given mu/theta>=1 \n'))

%% analyse reseed data for Eq. 6 outliers with mu/theta >= 1
    % for data with 4 orders of magnitude parameter sampling
stats_fname_rs2_1 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_1_STATISTICS.bin');
stats_rs2_1 = read_AIF_three_components_statistics(stats_fname_rs2_1);
params_fname_rs2_1 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_1_PARAMETERS.bin');
params_rs2_1 = read_AIF_three_components_parameters(params_fname_rs2_1);

stats_fname_rs2_2 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_2_STATISTICS.bin');
stats_rs2_2 = read_AIF_three_components_statistics(stats_fname_rs2_2);
params_fname_rs2_2 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_2_PARAMETERS.bin');
params_rs2_2 = read_AIF_three_components_parameters(params_fname_rs2_2);

stats_fname_rs2_3 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_3_STATISTICS.bin');
stats_rs2_3 = read_AIF_three_components_statistics(stats_fname_rs2_3);
params_fname_rs2_3 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_3_PARAMETERS.bin');
params_rs2_3 = read_AIF_three_components_parameters(params_fname_rs2_3);

stats_fname_rs2_4 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_4_STATISTICS.bin');
stats_rs2_4 = read_AIF_three_components_statistics(stats_fname_rs2_4);
params_fname_rs2_4 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_4_PARAMETERS.bin');
params_rs2_4 = read_AIF_three_components_parameters(params_fname_rs2_4);

stats_fname_rs2_5 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_5_STATISTICS.bin');
stats_rs2_5 = read_AIF_three_components_statistics(stats_fname_rs2_5);
params_fname_rs2_5 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_5_PARAMETERS.bin');
params_rs2_5 = read_AIF_three_components_parameters(params_fname_rs2_5);

stats_fname_rs2_6 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_6_STATISTICS.bin');
stats_rs2_6 = read_AIF_three_components_statistics(stats_fname_rs2_6);
params_fname_rs2_6 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_6_PARAMETERS.bin');
params_rs2_6 = read_AIF_three_components_parameters(params_fname_rs2_6);

% concatenate data to make it easier to work with
fn = fieldnames(stats_rs2_1);
stats_rs2 = struct;
for i = 1:numel(fn)
	stats_rs2.(fn{i}) = [stats_rs2_1.(fn{i}); stats_rs2_2.(fn{i});...
        stats_rs2_3.(fn{i}); stats_rs2_4.(fn{i});...
        stats_rs2_5.(fn{i});stats_rs2_6.(fn{i});];
end

fn = fieldnames(params_rs2_1);
params_rs2 = struct;
for i = 1:numel(fn)
	params_rs2.(fn{i}) = [params_rs2_1.(fn{i}); params_rs2_2.(fn{i});...
        params_rs2_3.(fn{i}); params_rs2_4.(fn{i});...
        params_rs2_5.(fn{i}); params_rs2_6.(fn{i})];
end

% check flux and covariance balance
FB = check_flux_balance_AIF_three_components(stats_rs2, ...
    params_rs2, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs2, ...
    params_rs2, 5/100); % 5% threshold
inds_rs2 = FB & CB;

% subset data based on flux and covariance balance 
fn = fieldnames(params_rs2);
for i = 1:numel(fn)
    field_vals = params_rs2.(fn{i});
    params_rs2.(fn{i}) = field_vals(inds_rs2);
end
fn = fieldnames(stats_rs2);
for i = 1:numel(fn)
    field_vals = stats_rs2.(fn{i});
    stats_rs2.(fn{i}) = field_vals(inds_rs2);
end

% find unique parameter sets
fn = fieldnames(params_rs2);
param_sets_rs2 = zeros(numel(params_rs2.mu), numel(fn)-2);
for i = 1:numel(fn)
    if not(i==17) && not(i==18) % disregard iterations and prng seeds
        param_sets_rs2(:, i) = params_rs2.(fn{i});
    end
end
unique_sets_inds = cell([1,1]);
unique_sets = unique(param_sets_rs2, 'rows', 'stable');
for i = 1:size(unique_sets, 1)
    inds = find(all(transpose(param_sets_rs2 == unique_sets(i,:))));
    unique_sets_inds{i} = inds;
end

%calculate averages and standard deviations for each parameter set
y_rs2 = sqrt(stats_rs2.Z_var./(stats_rs2.Z_avg));

y_rs2_avg = zeros([1,size(unique_sets, 1)]);
y_rs2_std = zeros([1,size(unique_sets, 1)]);
N = zeros([1,size(unique_sets, 1)]);

theta_rs2 = zeros([1,size(unique_sets, 1)]);
beta_z_rs2 = zeros([1,size(unique_sets, 1)]);
kk_rs2 = zeros([1,size(unique_sets, 1)]);

for i = 1:size(unique_sets, 1)
    inds = unique_sets_inds{i};
    
    avg = mean(y_rs2(inds));
    stdev = std(y_rs2(inds));
    
    y_rs2_avg(i) = avg;
    y_rs2_std(i) = stdev;
    
    theta_rs2(i) = unique_sets(i,1);
    beta_z_rs2(i) = unique_sets(i,8);
    kk_rs2(i) = unique_sets(i,3)./beta_z_rs2(i);
    
    N(i) = numel(inds);
end

% check that at lest 3 seeds survived flux and covariance balance per
% parameter set
if min(N) >= 3
    fprintf('At least 3 seeds per parameter set. \n')
else
    fprintf('There are cases with less than 3 seeds per parameter set. \n')
end

% check for remaining outliers 
N2_Nx = theta_rs2./beta_z_rs2; 
kk = kk_rs2;
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));

remain = y_rs2_avg + y_rs2_std < bound;
num_remaining_outliers = sum(remain);
	
msg = strcat({num2str(num_remaining_outliers)},...
    {' reseed means of'}, {' '}, {num2str(numel(y_rs2_avg))},...
    {' unique parameter sets fall more than one standard deviation below'},...
    {' Eq. 6 prediction data with parameter sampling over four '},...
	{'orders of magnitude given mu/theta >= 1 \n'});
msg = msg{1};
fprintf(msg)

bound_remain = bound(remain);
y_rs2_avg_remain = y_rs2_avg(remain);
[eq6_err_4om_rs, where] = max((bound_remain - ...
    y_rs2_avg_remain)./bound_remain);
fprintf(strcat(num2str(eq6_err_4om_rs),...
    ' max relative deviation of reseed means with mean + stdev CV ',...
    ' below Eq. 6 data with parameter',...
    ' sampling over four orders of magnitude given mu/theta>=1 \n'))

% index for y_rs2 corresponding to max error among remaining points with
% mean + stdev < bound
where1 = y_rs2_avg == y_rs2_avg_remain(where); 

remain_poiss = y_rs2_avg + y_rs2_std < 1;
num_remain_poiss = sum(remain_poiss);
msg = strcat({num2str(sum(num_remain_poiss))},...
    {' reseed means of'}, {' '}, {num2str(numel(y_rs2_avg))},...
    {' unique parameter sets fall more than one standard deviation below'},...
    {' open-loop levels in data with parameter sampling over four '},...
	{'orders of magnitude given mu/theta >= 1 \n'});
msg = msg{1};
fprintf(msg)
%% analyse how max deviation below Eq. 6 changes with number of samples
    % in reseeded data with 4 orders of magnitude parameter sampling for
    % mu/theta >= 1
  
% load additional data for worst reseeded outlier set to get at least N=10
stats_fname_rs2_7 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_7_STATISTICS.bin');
stats_rs2_7 = read_AIF_three_components_statistics(stats_fname_rs2_7);
params_fname_rs2_7 = strcat(data_path, ...
    'Eq6_outliers_4om_reseeds_7_PARAMETERS.bin');
params_rs2_7 = read_AIF_three_components_parameters(params_fname_rs2_7);

% check flux and covariance balance
FB = check_flux_balance_AIF_three_components(stats_rs2_7, ...
    params_rs2_7, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs2_7, ...
    params_rs2_7, 5/100); % 5% threshold
inds_rs2_7 = FB & CB;

% subset data based on flux and covariance balance 
fn = fieldnames(params_rs2_7);
for i = 1:numel(fn)
    field_vals = params_rs2_7.(fn{i});
    params_rs2_7.(fn{i}) = field_vals(inds_rs2_7);
end
fn = fieldnames(stats_rs2_7);
for i = 1:numel(fn)
    field_vals = stats_rs2_7.(fn{i});
    stats_rs2_7.(fn{i}) = field_vals(inds_rs2_7);
end

% calculate averages and standard deviations for the max deviation data for
% N = 3, 5, 10
values = [y_rs2(unique_sets_inds{where1}); ...
    sqrt(stats_rs2_7.Z_var./(stats_rs2_7.Z_avg))];
values = values(1:3);
avg = mean(values);
stdev = std(values);
y_rs2_avg_N3 = avg;
y_rs2_std_N3 = stdev;

values = [y_rs2(unique_sets_inds{where1}); ...
    sqrt(stats_rs2_7.Z_var./(stats_rs2_7.Z_avg))];
values = values(1:5);
avg = mean(values);
stdev = std(values);
y_rs2_avg_N5 = avg;
y_rs2_std_N5 = stdev;

values = [y_rs2(unique_sets_inds{where1}); ...
    sqrt(stats_rs2_7.Z_var./(stats_rs2_7.Z_avg))];
values = values(1:10);
avg = mean(values);
stdev = std(values);
y_rs2_avg_N10 = avg;
y_rs2_std_N10 = stdev;

theta_val = theta_rs2(where1);
beta_z_val = beta_z_rs2(where1);
kk = kk_rs2(where1);

N2_Nx = theta_val./beta_z_val; 
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));

figure;
errorbar([3, 5, 10], -[(bound - y_rs2_avg_N3)./bound, ...
    (bound - y_rs2_avg_N5)./bound,(bound - y_rs2_avg_N10)./bound],...
    [y_rs2_std_N3, y_rs2_std_N5, y_rs2_std_N10], '.', 'MarkerSize', 12,...
    'color', 'black')
hold on
plot(0:0.01:11, zeros(size(0:0.01:11)), '--', 'color', 'red', 'linewidth', 3)
xlabel('\textbf{Number of seeds}',...
    'Interpreter', 'Latex', 'fontsize', 16)
ylabel({'\textbf{Relative deviation}'; ...
    '\boldmath$(\mathrm{mean} - \mathrm{bound})/\mathrm{bound}$'},...
    'Interpreter', 'Latex', 'fontsize', 16)
xlim([2,11])
exportgraphics(gcf, ...
    '.\Figures\FigSI_idealized_ref_err_sp_geq1.pdf',...
    'ContentType','vector')

%% check for Eq. 6 outliers 
    % in data with parameters sampled over 2 orders of magnitude with
    % mu/theta = 1 data

N2_Nx = params_2om_sp_eq1.theta./params_2om_sp_eq1.beta_z;
kk = params_2om_sp_eq1.k./params_2om_sp_eq1.beta_z;
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));
rnz = sqrt(stats_2om_sp_eq1.Z_var./stats_2om_sp_eq1.Z_avg);

outliers = rnz < bound;
num_outliers = sum(outliers);

msg = strcat({num2str(sum(num_outliers))},...
    {' CV values out of'}, {' '}, {num2str(numel(rnz))},...
    {' below Eq. 6 prediction for data with parameter sampling over two '},...
    {'orders of magnitude and mu/theta = 1'},...
    {' . \n'});
msg = msg{1};
fprintf(msg)

eq6_err_4om_sp_eq_1 = max((bound(outliers) - ...
    rnz(outliers))./bound(outliers));
fprintf(strcat(num2str(eq6_err_4om_sp_eq_1),...
    ' max relative deviation below Eq. 6 outliers in data with parameter',...
    ' sampling over four orders of magnitude given mu/theta =1 \n'))

%% analyse reseed data for Eq. 6 outliers with mu/theta = 1
    % for data with parameter sampling over 2 orders of magnitude
stats_fname_rs3_1 = strcat(data_path, ...
    'Eq6_outliers_sp_eq1_reseeds_1_STATISTICS.bin');
stats_rs3_1 = read_AIF_three_components_statistics(stats_fname_rs3_1);
params_fname_rs3_1 = strcat(data_path, ...
    'Eq6_outliers_sp_eq1_reseeds_1_PARAMETERS.bin');
params_rs3_1 = read_AIF_three_components_parameters(params_fname_rs3_1);

stats_fname_rs3_2 = strcat(data_path, ...
    'Eq6_outliers_sp_eq1_reseeds_2_STATISTICS.bin');
stats_rs3_2 = read_AIF_three_components_statistics(stats_fname_rs3_2);
params_fname_rs3_2 = strcat(data_path, ...
    'Eq6_outliers_sp_eq1_reseeds_2_PARAMETERS.bin');
params_rs3_2 = read_AIF_three_components_parameters(params_fname_rs3_2);

stats_fname_rs3_3 = strcat(data_path, ...
    'Eq6_outliers_sp_eq1_reseeds_3_STATISTICS.bin');
stats_rs3_3 = read_AIF_three_components_statistics(stats_fname_rs3_3);
params_fname_rs3_3 = strcat(data_path, ...
    'Eq6_outliers_sp_eq1_reseeds_3_PARAMETERS.bin');
params_rs3_3 = read_AIF_three_components_parameters(params_fname_rs3_3);

% concatenate data to make it easier to work with
fn = fieldnames(stats_rs3_1);
stats_rs3 = struct;
for i = 1:numel(fn)
	stats_rs3.(fn{i}) = [stats_rs3_1.(fn{i}); stats_rs3_2.(fn{i});...
        stats_rs3_3.(fn{i})];
end

fn = fieldnames(params_rs3_1);
params_rs3 = struct;
for i = 1:numel(fn)
	params_rs3.(fn{i}) = [params_rs3_1.(fn{i}); params_rs3_2.(fn{i});...
        params_rs3_3.(fn{i})];
end

% check flux and covariance balance
FB = check_flux_balance_AIF_three_components(stats_rs3, ...
    params_rs3, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs3, ...
    params_rs3, 5/100); % 5% threshold
inds_rs3 = FB & CB;

% subset data based on flux and covariance balance 
fn = fieldnames(params_rs3);
for i = 1:numel(fn)
    field_vals = params_rs3.(fn{i});
    params_rs3.(fn{i}) = field_vals(inds_rs3);
end
fn = fieldnames(stats_rs3);
for i = 1:numel(fn)
    field_vals = stats_rs3.(fn{i});
    stats_rs3.(fn{i}) = field_vals(inds_rs3);
end

% find unique parameter sets
fn = fieldnames(params_rs3);
param_sets_rs3 = zeros(numel(params_rs3.mu), numel(fn)-2);
for i = 1:numel(fn)
    if not(i==17) && not(i==18) % disregard iterations and prng seeds
        param_sets_rs3(:, i) = params_rs3.(fn{i});
    end
end
unique_sets_inds = cell([1,1]);
unique_sets = unique(param_sets_rs3, 'rows', 'stable');
for i = 1:size(unique_sets, 1)
    inds = find(all(transpose(param_sets_rs3 == unique_sets(i,:))));
    unique_sets_inds{i} = inds;
end

%calculate averages and standard deviations for each parameter set
y_rs3 = sqrt(stats_rs3.Z_var./(stats_rs3.Z_avg));

y_rs3_avg = zeros([1,size(unique_sets, 1)]);
y_rs3_std = zeros([1,size(unique_sets, 1)]);
N = zeros([1,size(unique_sets, 1)]);

theta_rs3 = zeros([1,size(unique_sets, 1)]);
beta_z_rs3 = zeros([1,size(unique_sets, 1)]);
kk_rs3 = zeros([1,size(unique_sets, 1)]);

for i = 1:size(unique_sets, 1)
    inds = unique_sets_inds{i};
    
    avg = mean(y_rs3(inds));
    stdev = std(y_rs3(inds));
    
    y_rs3_avg(i) = avg;
    y_rs3_std(i) = stdev;
    
    theta_rs3(i) = unique_sets(i,1);
    beta_z_rs3(i) = unique_sets(i,8);
    kk_rs3(i) = unique_sets(i,3)./beta_z_rs3(i);
    
    N(i) = numel(inds);
end

% check that at lest 3 seeds survived flux and covariance balance per
% parameter set
if min(N) >= 3
    fprintf('At least 3 seeds per parameter set. \n')
else
    fprintf('There are cases with less than 3 seeds per parameter set. \n')
end

% check for remaining outliers 
N2_Nx = theta_rs3./beta_z_rs3; 
kk = kk_rs3;
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));

remain = y_rs3_avg + y_rs3_std < bound;
num_remaining_outliers = sum(remain);
	
msg = strcat({num2str(num_remaining_outliers)},...
    {' reseed means of'}, {' '}, {num2str(numel(y_rs3_avg))},...
    {' unique parameter sets fall more than one standard deviation below'},...
    {' Eq. 6 prediction data with parameter sampling over four '},...
	{'orders of magnitude given mu/theta = 1 \n'});
msg = msg{1};
fprintf(msg)

bound_remain = bound(remain);
y_rs3_avg_remain = y_rs3_avg(remain);
[eq6_err_4om_rs, where] = max((bound_remain - ...
    y_rs3_avg_remain)./bound_remain);
fprintf(strcat(num2str(eq6_err_4om_rs),...
    ' max relative deviation of reseed means with mean + stdev CV ',...
    ' below Eq. 6 data with parameter',...
    ' sampling over two orders of magnitude given mu/theta = 1 \n'))

% index for y_rs3_avg corresponding to max error among remaining points with
% mean + stdev < bound
where1 = y_rs3_avg == y_rs3_avg_remain(where); 

%% analyse how max deviation below Eq. 6 changes with number of samples
    % in reseeded data with 2 orders of magnitude parameter sampling for
    % mu/theta = 1
stats_fname_rs3_4 = strcat(data_path, ...
    'Eq6_outliers_sp_eq1_WorstOutlier_additional_reseeds_STATISTICS.bin');
stats_rs3_4 = read_AIF_three_components_statistics(stats_fname_rs3_4);
params_fname_rs3_4 = strcat(data_path, ...
    'Eq6_outliers_sp_eq1_WorstOutlier_additional_reseeds_PARAMETERS.bin');
params_rs3_4 = read_AIF_three_components_parameters(params_fname_rs3_4);

% check flux and covariance balance
FB = check_flux_balance_AIF_three_components(stats_rs3_4, ...
    params_rs3_4, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs3_4, ...
    params_rs3_4, 5/100); % 5% threshold
inds_rs3_4 = FB & CB;

% subset data based on flux and covariance balance 
fn = fieldnames(params_rs3_4);
for i = 1:numel(fn)
    field_vals = params_rs3_4.(fn{i});
    params_rs3_4.(fn{i}) = field_vals(inds_rs3_4);
end
fn = fieldnames(stats_rs3_4);
for i = 1:numel(fn)
    field_vals = stats_rs3_4.(fn{i});
    stats_rs3_4.(fn{i}) = field_vals(inds_rs3_4);
end

% calculate averages and standard deviations for the max deviation data for
% N = 3, 5, 10
values = [y_rs3(unique_sets_inds{where1}); ...
    sqrt(stats_rs3_4.Z_var./(stats_rs3_4.Z_avg))];
values = values(1:3);
avg = mean(values);
stdev = std(values);
y_rs3_avg_N3 = avg;
y_rs3_std_N3 = stdev;

values = [y_rs3(unique_sets_inds{where1}); ...
    sqrt(stats_rs3_4.Z_var./(stats_rs3_4.Z_avg))];
values = values(1:5);
avg = mean(values);
stdev = std(values);
y_rs3_avg_N5 = avg;
y_rs3_std_N5 = stdev;

values = [y_rs3(unique_sets_inds{where1}); ...
    sqrt(stats_rs3_4.Z_var./(stats_rs3_4.Z_avg))];
values = values(1:10);
avg = mean(values);
stdev = std(values);
y_rs3_avg_N10 = avg;
y_rs3_std_N10 = stdev;

theta_val = theta_rs3(where1);
beta_z_val = beta_z_rs3(where1);
kk = kk_rs3(where1);

N2_Nx = theta_val./beta_z_val; 
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));

figure;
errorbar([3, 5, 10], -[(bound - y_rs3_avg_N3)./bound, ...
    (bound - y_rs3_avg_N5)./bound,(bound - y_rs3_avg_N10)./bound],...
    [y_rs3_std_N3, y_rs3_std_N5, y_rs3_std_N10], '.', 'MarkerSize', 12, 'color', 'black')
hold on
plot(0:0.01:11, zeros(size(0:0.01:11)), '--', 'color', 'red', 'linewidth', 3)
xlabel('\textbf{Number of seeds}',...
    'Interpreter', 'Latex', 'fontsize', 16)
ylabel('\textbf{Relative deviation}',...
    'Interpreter', 'Latex', 'fontsize', 16)
xlim([2, 11])  
    
%% analyse subset of mu/theta < 1 reseed data
    % for data with parameter sampling over 2 orders of magnitude to
    % establish outliers
    
stats_fname_rs4_1 = strcat(data_path, ...
    'Eq6_outliers_2om_subset_incl_sp_less1_reseeds_1_STATISTICS.bin');
stats_rs4_1 = read_AIF_three_components_statistics(stats_fname_rs4_1);
params_fname_rs4_1 = strcat(data_path, ...
    'Eq6_outliers_2om_subset_incl_sp_less1_reseeds_1_PARAMETERS.bin');
params_rs4_1 = read_AIF_three_components_parameters(params_fname_rs4_1);

stats_fname_rs4_2 = strcat(data_path, ...
    'Eq6_outliers_2om_subset_incl_sp_less1_reseeds_2_STATISTICS.bin');
stats_rs4_2 = read_AIF_three_components_statistics(stats_fname_rs4_2);
params_fname_rs4_2 = strcat(data_path, ...
    'Eq6_outliers_2om_subset_incl_sp_less1_reseeds_2_PARAMETERS.bin');
params_rs4_2 = read_AIF_three_components_parameters(params_fname_rs4_2);

% concatenate data to make it easier to work with
fn = fieldnames(stats_rs4_1);
stats_rs4 = struct;
for i = 1:numel(fn)
	stats_rs4.(fn{i}) = [stats_rs4_1.(fn{i}); stats_rs4_2.(fn{i})];
end

fn = fieldnames(params_rs4_1);
params_rs4 = struct;
for i = 1:numel(fn)
	params_rs4.(fn{i}) = [params_rs4_1.(fn{i}); params_rs4_2.(fn{i})];
end

% subset for points with mu/theta < 1
sp_less1 = params_rs4.mu./params_rs4.theta < 1;

fn = fieldnames(stats_rs4);
for i = 1:numel(fn)
	field_vals = stats_rs4.(fn{i});
	stats_rs4.(fn{i}) = field_vals(sp_less1);
end

fn = fieldnames(params_rs4);
for i = 1:numel(fn)
	field_vals = params_rs4.(fn{i});
	params_rs4.(fn{i}) = field_vals(sp_less1);
end

% check flux and covariance balance
FB = check_flux_balance_AIF_three_components(stats_rs4, ...
    params_rs4, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs4, ...
    params_rs4, 5/100); % 5% threshold
inds_rs4 = FB & CB;

% subset data based on flux and covariance balance 
fn = fieldnames(params_rs4);
for i = 1:numel(fn)
    field_vals = params_rs4.(fn{i});
    params_rs4.(fn{i}) = field_vals(inds_rs4);
end
fn = fieldnames(stats_rs4);
for i = 1:numel(fn)
    field_vals = stats_rs4.(fn{i});
    stats_rs4.(fn{i}) = field_vals(inds_rs4);
end

% find unique parameter sets
fn = fieldnames(params_rs4);
param_sets_rs4 = zeros(numel(params_rs4.mu), numel(fn)-2);
for i = 1:numel(fn)
    if not(i==17) && not(i==18) % disregard iterations and prng seeds
        param_sets_rs4(:, i) = params_rs4.(fn{i});
    end
end
unique_sets_inds = cell([1,1]);
unique_sets = unique(param_sets_rs4, 'rows', 'stable');
for i = 1:size(unique_sets, 1)
    inds = find(all(transpose(param_sets_rs4 == unique_sets(i,:))));
    unique_sets_inds{i} = inds;
end

%calculate averages and standard deviations for each parameter set
y_rs4 = sqrt(stats_rs4.Z_var./(stats_rs4.Z_avg));

y_rs4_avg = zeros([1,size(unique_sets, 1)]);
y_rs4_std = zeros([1,size(unique_sets, 1)]);
N = zeros([1,size(unique_sets, 1)]);

theta_rs4 = zeros([1,size(unique_sets, 1)]);
beta_z_rs4 = zeros([1,size(unique_sets, 1)]);
kk_rs4 = zeros([1,size(unique_sets, 1)]);

for i = 1:size(unique_sets, 1)
    inds = unique_sets_inds{i};
    
    avg = mean(y_rs4(inds));
    stdev = std(y_rs4(inds));
    
    y_rs4_avg(i) = avg;
    y_rs4_std(i) = stdev;
    
    theta_rs4(i) = unique_sets(i,1);
    beta_z_rs4(i) = unique_sets(i,8);
    kk_rs4(i) = unique_sets(i,3)./beta_z_rs4(i);
    
    N(i) = numel(inds);
end

% check for remaining outliers 
N2_Nx = theta_rs4./beta_z_rs4; 
kk = kk_rs4;
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));

remain = y_rs4_avg + y_rs4_std < bound;
num_remaining_outliers = sum(remain);
	
msg = strcat({num2str(num_remaining_outliers)},...
    {' reseed means of'}, {' '}, {num2str(numel(y_rs4_avg))},...
    {' unique parameter sets fall more than one standard deviation below'},...
    {' Eq. 6 prediction data with parameter sampling over two '},...
	{'orders of magnitude given mu/theta < 1 \n'});
msg = msg{1};
fprintf(msg)

bound_remain = bound(remain);
y_rs4_avg_remain = y_rs4_avg(remain);
[eq6_err_sp_less1_rs, where] = max((bound_remain - ...
    y_rs4_avg_remain)./bound_remain);
fprintf(strcat(num2str(eq6_err_sp_less1_rs),...
    ' max relative deviation of reseed means with mean + stdev CV ',...
    ' below Eq. 6 data with parameter',...
    ' sampling over two orders of magnitude given mu/theta < 1 \n'))

% index for y_rs4_avg corresponding to max error among remaining points with
% mean + stdev < bound
where1 = y_rs4_avg == y_rs4_avg_remain(where); 

%% analyse how max deviation below Eq. 6 changes with number of samples
    % in subset of reseeded data with 2 orders of magnitude parameter sampling for
    % mu/theta < 1
    
stats_fname_rs4_3 = strcat(data_path, ...
    'Eq6_outliers_sp_less1_WorstOutlier_additional_reseeds_STATISTICS.bin');
stats_rs4_3 = read_AIF_three_components_statistics(stats_fname_rs4_3);
params_fname_rs4_3 = strcat(data_path, ...
    'Eq6_outliers_sp_less1_WorstOutlier_additional_reseeds_PARAMETERS.bin');
params_rs4_3 = read_AIF_three_components_parameters(params_fname_rs4_3);

% check flux and covariance balance
FB = check_flux_balance_AIF_three_components(stats_rs4_3, ...
    params_rs4_3, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_three_components(stats_rs4_3, ...
    params_rs4_3, 5/100); % 5% threshold
inds_rs4_3 = FB & CB;

% subset data based on flux and covariance balance 
fn = fieldnames(params_rs4_3);
for i = 1:numel(fn)
    field_vals = params_rs4_3.(fn{i});
    params_rs4_3.(fn{i}) = field_vals(inds_rs4_3);
end
fn = fieldnames(stats_rs4_3);
for i = 1:numel(fn)
    field_vals = stats_rs4_3.(fn{i});
    stats_rs4_3.(fn{i}) = field_vals(inds_rs4_3);
end

% calculate averages and standard deviations for the max deviation data for
% N = 3, 5, 10
values = [y_rs4(unique_sets_inds{where1}); ...
    sqrt(stats_rs4_3.Z_var./(stats_rs4_3.Z_avg))];
values = values(1:3);
avg = mean(values);
stdev = std(values);
y_rs4_avg_N3 = avg;
y_rs4_std_N3 = stdev;

values = [y_rs4(unique_sets_inds{where1}); ...
    sqrt(stats_rs4_3.Z_var./(stats_rs4_3.Z_avg))];
values = values(1:5);
avg = mean(values);
stdev = std(values);
y_rs4_avg_N5 = avg;
y_rs4_std_N5 = stdev;

values = [y_rs4(unique_sets_inds{where1}); ...
    sqrt(stats_rs4_3.Z_var./(stats_rs4_3.Z_avg))];
values = values(1:10);
avg = mean(values);
stdev = std(values);
y_rs4_avg_N10 = avg;
y_rs4_std_N10 = stdev;

theta_val = theta_rs4(where1);
beta_z_val = beta_z_rs4(where1);
kk = kk_rs4(where1);

N2_Nx = theta_val./beta_z_val; 
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));

figure;
errorbar([3, 5, 10], -[(bound - y_rs4_avg_N3)./bound, ...
    (bound - y_rs4_avg_N5)./bound,(bound - y_rs4_avg_N10)./bound],...
    [y_rs4_std_N3, y_rs4_std_N5, y_rs4_std_N10], '.', 'MarkerSize', 12,...
    'color', 'black')
hold on
plot(0:0.01:11, zeros(size(0:0.01:11)), '--', 'color', 'red', 'linewidth', 3)
xlabel('\textbf{Number of seeds}',...
    'Interpreter', 'Latex', 'fontsize', 16)
ylabel({'\textbf{Relative deviation}'; ...
    '\boldmath$(\mathrm{mean} - \mathrm{bound})/\mathrm{bound}$'},...
    'Interpreter', 'Latex', 'fontsize', 16)
xlim([2,11])
ylim([-0.04, 0.001])
exportgraphics(gcf, ...
    '.\Figures\FigSI_idealized_ref_err_sp_less1.pdf',...
    'ContentType','vector')

%{
%% define path where data for plotting will be saved
save_path = '.\DataForPlotting\'

%% save Fig 2B data to text file for density adjustment
zavg = stats_2om.Z_avg;
znoise = sqrt(stats_2om.Z_var./(stats_2om.Z_avg.^2));

fileID = fopen(strcat(save_path,'Fig2B_data.txt'),'w');
formatspec = '%f %f \r\n';
data = [zavg'; znoise'];
fprintf(fileID, formatspec, data);
fclose(fileID);

%% save Fig 2C data to text file for density adjustment
N2_Nx = params_2om.theta./params_2om.beta_z;
kk = params_2om.k./params_2om.beta_z;
bound = sqrt(1 + 1./(N2_Nx.*((1./kk).*(1./N2_Nx) + 1)));
rnz = sqrt(stats_2om.Z_var./stats_2om.Z_avg); % sqrt(CV)/(1/sqrt(average))

outliers = rnz < bound;

% see error analysis section above to reject outliers for mu/theta >= 1!
N2_Nx = N2_Nx(~outliers);
rnz = rnz(~outliers);

k1 = 5;
k2 = 1;
k3 = 1/5;

i_k1 = params_2om.k(~outliers) > k1.*params_2om.beta_z(~outliers);
i_k2 = (params_2om.k(~outliers) > k2.*params_2om.beta_z(~outliers)) &...
    (params_2om.k(~outliers) < k1.*params_2om.beta_z(~outliers));
i_k3 = (params_2om.k(~outliers) > k3.*params_2om.beta_z(~outliers)) &...
    (params_2om.k(~outliers) < k2.*params_2om.beta_z(~outliers));

x1 = N2_Nx(i_k1);
y1 = rnz(i_k1);

x2 = N2_Nx(i_k2);
y2 = rnz(i_k2);

x3 = N2_Nx(i_k3);
y3 = rnz(i_k3);

fileID = fopen(strcat(save_path,'Fig2C_data_1.txt'),'w');
formatspec = '%f %f \r\n';
data = [x1'; y1'];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'Fig2C_data_2.txt'),'w');
formatspec = '%f %f \r\n';
data = [x2'; y2'];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'Fig2C_data_3.txt'),'w');
formatspec = '%f %f \r\n';
data = [x3'; y3'];
fprintf(fileID, formatspec, data);
fclose(fileID);

%% save Fig. 3B idealized system data for density adjustment
Ylim = 2.0;
Fz = stats_2om.Z_var./(stats_2om.Z_avg);
Fz = Fz(sqrt(Fz)<=Ylim);

fileID = fopen('Fig3B_data_idealized.txt','w');
formatspec = '%f \r\n';
data = sqrt(Fz');
fprintf(fileID, formatspec, data);
fclose(fileID);
%}