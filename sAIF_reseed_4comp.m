%% reseed anaysis to verif noise suppression in 4comp sAIF
data_path = '.\RawData\Idealized_Sensor_Actuated_System_4comp\';

stats_fname_rs = strcat(data_path,...
    'Idealized_sensor_Actuated_RS_STATISTICS.bin');
stats_rs =...
    read_AIF_four_components_statistics(stats_fname_rs);
params_fname_rs = strcat(data_path,...
    'Idealized_sensor_Actuated_RS_PARAMETERS.bin');
params_rs =...
    read_AIF_four_components_parameters(params_fname_rs);

% check flux and covariance balance
FB = check_flux_balance_AIF_four_components(stats_rs, ...
    params_rs, 2/100); % 2% threshold
CB = check_covariance_balance_AIF_four_components(stats_rs, ...
    params_rs, 5/100); % 5% threshold
inds_rs = FB & CB;

% subset data based on flux and covariance balance 
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
    if not(i==19) && not(i==20) % disregard iterations and prng seeds
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
CL_noise = sqrt(stats_rs.Z_var./(stats_rs.Z_avg.^2));
OL_noise = sqrt((1./stats_rs.Z_avg) + (1./stats_rs.W_avg)...
    .*(1./params_rs.beta_w)./((1./params_rs.beta_w) + (1./params_rs.beta_z)));

CL_noise_avg = zeros([1,size(unique_sets, 1)]);
CL_noise_std = zeros([1,size(unique_sets, 1)]);
OL_noise_avg = zeros([1,size(unique_sets, 1)]);
OL_noise_std = zeros([1,size(unique_sets, 1)]);
N = zeros([1,size(unique_sets, 1)]);


for i = 1:size(unique_sets, 1)
    inds = unique_sets_inds{i};
    
    avg = mean(CL_noise(inds));
    stdev = std(CL_noise(inds));
    
    CL_noise_avg(i) = avg;
    CL_noise_std(i) = stdev;
    
    avg = mean(OL_noise(inds));
    stdev = std(OL_noise(inds));
    
    OL_noise_avg(i) = avg;
    OL_noise_std(i) = stdev;
    
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

remain = CL_noise_avg + CL_noise_std < OL_noise_avg - OL_noise_std;
num_remaining_outliers = sum(remain);

msg = strcat({num2str(num_remaining_outliers)},...
    {' reseed means of'}, {' '}, {num2str(numel(CL_noise_avg))},...
    {' unique parameter sets fall more than one standard deviation below'},...
    {' OL levels \n'});
msg = msg{1};
fprintf(msg)

%%
values = CL_noise;
values = values(1:3);
avg = mean(values);
stdev = std(values);
CL_noise_avg_3 = avg;
CL_noise_std_3 = stdev;

values = OL_noise;
values = values(1:3);
avg = mean(values);
stdev = std(values);
OL_noise_avg_3 = avg;
OL_noise_std_3 = stdev;

values = CL_noise;
values = values(1:5);
avg = mean(values);
stdev = std(values);
CL_noise_avg_5 = avg;
CL_noise_std_5 = stdev;

values = OL_noise;
values = values(1:5);
avg = mean(values);
stdev = std(values);
OL_noise_avg_5 = avg;
OL_noise_std_5 = stdev;

values = CL_noise;
values = values(1:10);
avg = mean(values);
stdev = std(values);
CL_noise_avg_10 = avg;
CL_noise_std_10 = stdev;

values = OL_noise;
values = values(1:10);
avg = mean(values);
stdev = std(values);
OL_noise_avg_10 = avg;
OL_noise_std_10 = stdev;

figure;
errorbar([3, 5, 10], -[(OL_noise_avg_3 - CL_noise_avg_3)./OL_noise_avg_3, ...
    (OL_noise_avg_5 - CL_noise_avg_5)./OL_noise_avg_5,...
    (OL_noise_avg_10 - CL_noise_avg_10)./OL_noise_avg_10],...
    [((OL_noise_avg_3 - CL_noise_avg_3)./OL_noise_avg_3).*...
    sqrt((OL_noise_std_3./OL_noise_avg_3).^2 + (CL_noise_std_3./CL_noise_avg_3).^2),...
    ((OL_noise_avg_5 - CL_noise_avg_5)./OL_noise_avg_5).*...
    sqrt((OL_noise_std_5./OL_noise_avg_5).^2 + (CL_noise_std_5./CL_noise_avg_5).^2),...
    ((OL_noise_avg_10 - CL_noise_avg_10)./OL_noise_avg_10).*...
    sqrt((OL_noise_std_10./OL_noise_avg_10).^2 + (CL_noise_std_10./CL_noise_avg_10).^2)],...
    '.', 'MarkerSize', 12,...
    'color', 'black')
hold on
plot(0:0.01:11, zeros(size(0:0.01:11)), '--', 'color', 'red', 'linewidth', 3)
xlabel('\textbf{Number of seeds}',...
    'Interpreter', 'Latex', 'fontsize', 16)
ylabel({'\textbf{Relative deviation}'; ...
    '\boldmath$(\mathrm{mean} - \mathrm{bound})/\mathrm{bound}$'},...
    'Interpreter', 'Latex', 'fontsize', 16)
xlim([2,11])
ylim([-0.14,0.02]) 
exportgraphics(gcf, ...
    '.\Figures\FigSI_idealized_sensor_err_4comp.pdf',...
    'ContentType','vector')