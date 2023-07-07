%% define data_path to data
data_path = '.\RawData\Reference_Actuated_System_with_Dilution\';

%% import reseed data
stats_fname_Down_1_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_1_1_STATISTICS.bin');
stats_rs_Down_1_1 = ...
    read_AIF_three_components_statistics(stats_fname_Down_1_1);
params_fname_Down_1_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_1_1_PARAMETERS.bin');
params_rs_Down_1_1 = ...
    read_AIF_three_components_parameters(params_fname_Down_1_1);

stats_fname_Down_1_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_1_2_STATISTICS.bin');
stats_rs_Down_1_2 = ...
    read_AIF_three_components_statistics(stats_fname_Down_1_2);
params_fname_Down_1_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_1_2_PARAMETERS.bin');
params_rs_Down_1_2 = ...
    read_AIF_three_components_parameters(params_fname_Down_1_2);

stats_fname_Down_2_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_2_1_STATISTICS.bin');
stats_rs_Down_2_1 = ...
    read_AIF_three_components_statistics(stats_fname_Down_2_1);
params_fname_Down_2_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_2_1_PARAMETERS.bin');
params_rs_Down_2_1 = ...
    read_AIF_three_components_parameters(params_fname_Down_2_1);

stats_fname_Down_2_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_2_2_STATISTICS.bin');
stats_rs_Down_2_2 = ...
    read_AIF_three_components_statistics(stats_fname_Down_2_2);
params_fname_Down_2_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_2_2_PARAMETERS.bin');
params_rs_Down_2_2 = ...
    read_AIF_three_components_parameters(params_fname_Down_2_2);

stats_fname_Down_3_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_3_1_STATISTICS.bin');
stats_rs_Down_3_1 = ...
    read_AIF_three_components_statistics(stats_fname_Down_3_1);
params_fname_Down_3_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_3_1_PARAMETERS.bin');
params_rs_Down_3_1 = ...
    read_AIF_three_components_parameters(params_fname_Down_3_1);

stats_fname_Down_3_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_3_2_STATISTICS.bin');
stats_rs_Down_3_2 = ...
    read_AIF_three_components_statistics(stats_fname_Down_3_2);
params_fname_Down_3_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_3_2_PARAMETERS.bin');
params_rs_Down_3_2 = ...
    read_AIF_three_components_parameters(params_fname_Down_3_2);

stats_fname_Down_4_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_4_1_STATISTICS.bin');
stats_rs_Down_4_1 = ...
    read_AIF_three_components_statistics(stats_fname_Down_4_1);
params_fname_Down_4_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_4_1_PARAMETERS.bin');
params_rs_Down_4_1 = ...
    read_AIF_three_components_parameters(params_fname_Down_4_1);

stats_fname_Down_4_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_4_2_STATISTICS.bin');
stats_rs_Down_4_2 = ...
    read_AIF_three_components_statistics(stats_fname_Down_4_2);
params_fname_Down_4_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_4_2_PARAMETERS.bin');
params_rs_Down_4_2 = ...
    read_AIF_three_components_parameters(params_fname_Down_4_2);

stats_fname_Down_5_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_5_1_STATISTICS.bin');
stats_rs_Down_5_1 = ...
    read_AIF_three_components_statistics(stats_fname_Down_5_1);
params_fname_Down_5_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_5_1_PARAMETERS.bin');
params_rs_Down_5_1 = ...
    read_AIF_three_components_parameters(params_fname_Down_5_1);

stats_fname_Down_5_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_5_2_STATISTICS.bin');
stats_rs_Down_5_2 = ...
    read_AIF_three_components_statistics(stats_fname_Down_5_2);
params_fname_Down_5_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaDown_seed_5_2_PARAMETERS.bin');
params_rs_Down_5_2 = ...
    read_AIF_three_components_parameters(params_fname_Down_5_2);

stats_fname_Up_1_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_1_1_STATISTICS.bin');
stats_rs_Up_1_1 = ...
    read_AIF_three_components_statistics(stats_fname_Up_1_1);
params_fname_Up_1_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_1_1_PARAMETERS.bin');
params_rs_Up_1_1 = ...
    read_AIF_three_components_parameters(params_fname_Up_1_1);

stats_fname_Up_1_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_1_2_STATISTICS.bin');
stats_rs_Up_1_2 = ...
    read_AIF_three_components_statistics(stats_fname_Up_1_2);
params_fname_Up_1_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_1_2_PARAMETERS.bin');
params_rs_Up_1_2 = ...
    read_AIF_three_components_parameters(params_fname_Up_1_2);

stats_fname_Up_2_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_2_1_STATISTICS.bin');
stats_rs_Up_2_1 = ...
    read_AIF_three_components_statistics(stats_fname_Up_2_1);
params_fname_Up_2_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_2_1_PARAMETERS.bin');
params_rs_Up_2_1 = ...
    read_AIF_three_components_parameters(params_fname_Up_2_1);

stats_fname_Up_2_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_2_2_STATISTICS.bin');
stats_rs_Up_2_2 = ...
    read_AIF_three_components_statistics(stats_fname_Up_2_2);
params_fname_Up_2_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_2_2_PARAMETERS.bin');
params_rs_Up_2_2 = ...
    read_AIF_three_components_parameters(params_fname_Up_2_2);

stats_fname_Up_3_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_3_1_STATISTICS.bin');
stats_rs_Up_3_1 = ...
    read_AIF_three_components_statistics(stats_fname_Up_3_1);
params_fname_Up_3_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_3_1_PARAMETERS.bin');
params_rs_Up_3_1 = ...
    read_AIF_three_components_parameters(params_fname_Up_3_1);

stats_fname_Up_3_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_3_2_STATISTICS.bin');
stats_rs_Up_3_2 = ...
    read_AIF_three_components_statistics(stats_fname_Up_3_2);
params_fname_Up_3_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_3_2_PARAMETERS.bin');
params_rs_Up_3_2 = ...
    read_AIF_three_components_parameters(params_fname_Up_3_2);

stats_fname_Up_4_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_4_1_STATISTICS.bin');
stats_rs_Up_4_1 = ...
    read_AIF_three_components_statistics(stats_fname_Up_4_1);
params_fname_Up_4_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_4_1_PARAMETERS.bin');
params_rs_Up_4_1 = ...
    read_AIF_three_components_parameters(params_fname_Up_4_1);

stats_fname_Up_4_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_4_2_STATISTICS.bin');
stats_rs_Up_4_2 = ...
    read_AIF_three_components_statistics(stats_fname_Up_4_2);
params_fname_Up_4_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_4_2_PARAMETERS.bin');
params_rs_Up_4_2 = ...
    read_AIF_three_components_parameters(params_fname_Up_4_2);

stats_fname_Up_5_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_5_1_STATISTICS.bin');
stats_rs_Up_5_1 = ...
    read_AIF_three_components_statistics(stats_fname_Up_5_1);
params_fname_Up_5_1 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_5_1_PARAMETERS.bin');
params_rs_Up_5_1 = ...
    read_AIF_three_components_parameters(params_fname_Up_5_1);

stats_fname_Up_5_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_5_2_STATISTICS.bin');
stats_rs_Up_5_2 = ...
    read_AIF_three_components_statistics(stats_fname_Up_5_2);
params_fname_Up_5_2 = strcat(data_path, ...
    'Fig3B_reseeds_BetaUp_seed_5_2_PARAMETERS.bin');
params_rs_Up_5_2 = ...
    read_AIF_three_components_parameters(params_fname_Up_5_2);

stats_fname_top10 = strcat(data_path, ...
    'Fig3B_top10_smallest_S_noisesupp_STATISTICS.bin');
stats_rs_top10 = ...
    read_AIF_three_components_statistics(stats_fname_top10);
params_fname_top10 = strcat(data_path, ...
    'Fig3B_top10_smallest_S_noisesupp_PARAMETERS.bin');
params_rs_top10 = ...
    read_AIF_three_components_parameters(params_fname_top10);

%% aggregate data
fn = fieldnames(params_rs_Down_1_1);
params = struct;
for j = 1:numel(fn)
    params.(fn{j}) = [params_rs_Down_1_1.(fn{j}); params_rs_Down_1_2.(fn{j});...
        params_rs_Down_2_1.(fn{j}); params_rs_Down_2_2.(fn{j});...
        params_rs_Down_3_1.(fn{j}); params_rs_Down_3_2.(fn{j});...
        params_rs_Down_4_1.(fn{j}); params_rs_Down_4_2.(fn{j});...
        params_rs_Down_5_1.(fn{j}); params_rs_Down_5_2.(fn{j});...
        params_rs_Up_1_1.(fn{j}); params_rs_Up_1_2.(fn{j});...
        params_rs_Up_2_1.(fn{j}); params_rs_Up_2_2.(fn{j});...
        params_rs_Up_3_1.(fn{j}); params_rs_Up_3_2.(fn{j});...
        params_rs_Up_4_1.(fn{j}); params_rs_Up_4_2.(fn{j});...
        params_rs_Up_5_1.(fn{j}); params_rs_Up_5_2.(fn{j});...
        params_rs_top10.(fn{j})];
end
fn = fieldnames(stats_rs_Down_1_1);
stats = struct;
for j = 1:numel(fn)
    stats.(fn{j}) = [stats_rs_Down_1_1.(fn{j}); stats_rs_Down_1_2.(fn{j});...
        stats_rs_Down_2_1.(fn{j}); stats_rs_Down_2_2.(fn{j});...
        stats_rs_Down_3_1.(fn{j}); stats_rs_Down_3_2.(fn{j});...
        stats_rs_Down_4_1.(fn{j}); stats_rs_Down_4_2.(fn{j});...
        stats_rs_Down_5_1.(fn{j}); stats_rs_Down_5_2.(fn{j});...
        stats_rs_Up_1_1.(fn{j}); stats_rs_Up_1_2.(fn{j});...
        stats_rs_Up_2_1.(fn{j}); stats_rs_Up_2_2.(fn{j});...
        stats_rs_Up_3_1.(fn{j}); stats_rs_Up_3_2.(fn{j});...
        stats_rs_Up_4_1.(fn{j}); stats_rs_Up_4_2.(fn{j});...
        stats_rs_Up_5_1.(fn{j}); stats_rs_Up_5_2.(fn{j});...
        stats_rs_top10.(fn{j})];
end

%% check flux and covariance balance 
% check flux and covariance balance
% 2% threshold
FB = check_flux_balance_AIF_three_components(stats, ...
    params, 2/100);
% 5% threshold
CB = check_covariance_balance_AIF_three_components(stats, ...
    params, 5/100); 
inds = FB & CB;

% subset data based on flux and covariance balance test
fn = fieldnames(params);
for j = 1:numel(fn)
    field_vals = params.(fn{j});
    params.(fn{j}) = field_vals(inds);
end
fn = fieldnames(stats);
for j = 1:numel(fn)
    field_vals = stats.(fn{j});
    stats.(fn{j}) = field_vals(inds);
end

%% calculate numerical sensitivity coefficients and fluctuations
[S, ExApprox, EyApprox, zAvgApprox,...
    zVarApprox, paramsa] ...
    = ProcessSensitivityData(stats, params);
Fz = zVarApprox./zAvgApprox;

%% find unique parameter sets
fn = fieldnames(paramsa);
param_sets = zeros(numel(paramsa.mu), numel(fn)-2);
for i = 1:numel(fn)
    if not(i==17) && not(i==18) % disregard iterations and prng seeds
        param_sets(:, i) = paramsa.(fn{i});
    end
end
unique_sets_inds = cell([1,1]);
unique_sets = unique(param_sets, 'rows', 'stable');
for i = 1:size(unique_sets, 1)
    inds = find(all(transpose(param_sets == unique_sets(i,:))));
    unique_sets_inds{i} = inds;
end

%% calculate averages and standard deviations 
S_avg = zeros([1,size(unique_sets, 1)]);
S_std = zeros([1,size(unique_sets, 1)]);
RelNoise_avg = zeros([1,size(unique_sets, 1)]);
RelNoise_std = zeros([1,size(unique_sets, 1)]);
N = zeros([1,size(unique_sets, 1)]);
for i = 1:size(unique_sets, 1)
    inds = unique_sets_inds{i};
    
    avg = mean(S(inds));
    stdev = std(S(inds));
    
    S_avg(i) = avg;
    S_std(i) = stdev;
    
    inds = unique_sets_inds{i};
    
    avg = mean(sqrt(Fz(inds)));
    stdev = std(sqrt(Fz(inds)));
    
    RelNoise_avg(i) = avg;
    RelNoise_std(i) = stdev;
    
    N(i) = numel(S(inds));
end

%% smallest relative CV reseed
% import data
stats_fname_rs_smallestCV = strcat(data_path, ...
    'Smallest_CV_reseed_STATISTICS.bin');
stats_rs_smallestCV = read_AIF_three_components_statistics(stats_fname_rs_smallestCV);
params_fname_rs_smallestCV = strcat(data_path, ...
    'Smallest_CV_reseed_PARAMETERS.bin');
params_rs_smallestCV = read_AIF_three_components_parameters(params_fname_rs_smallestCV);

% check flux and covariance balance
% 2% threshold
FB_rs_smallestCV = check_flux_balance_AIF_three_components(stats_rs_smallestCV, ...
    params_rs_smallestCV, 2/100);
% 5% threshold
CB_rs_smallestCV = check_covariance_balance_AIF_three_components(stats_rs_smallestCV, ...
    params_rs_smallestCV, 5/100); 
inds_rs_smallestCV = FB_rs_smallestCV & CB_rs_smallestCV;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_smallestCV);
for j = 1:numel(fn)
    field_vals = params_rs_smallestCV.(fn{j});
    params_rs_smallestCV.(fn{j}) = field_vals(inds_rs_smallestCV);
end
fn = fieldnames(stats_rs_smallestCV);
for j = 1:numel(fn)
    field_vals = stats_rs_smallestCV.(fn{j});
    stats_rs_smallestCV.(fn{j}) = field_vals(inds_rs_smallestCV);
end

% calculate numerical sensitivity coefficients
[S_rs_smallestCV, ExApprox_rs_smallestCV, EyApprox_rs_smallestCV, zAvgApprox_rs_smallestCV,...
    zVarApprox_rs_smallestCV, paramsa_rs_smallestCV] ...
    = ProcessSensitivityData(stats_rs_smallestCV, params_rs_smallestCV);
Fz_rs_smallestCV = zVarApprox_rs_smallestCV./zAvgApprox_rs_smallestCV;

S_avg_smallestCV = mean(S_rs_smallestCV);
S_std_smallestCV = std(S_rs_smallestCV);
CV_avg_smallestCV = mean(sqrt(Fz_rs_smallestCV));
CV_std_smallestCV = std(sqrt(Fz_rs_smallestCV));

N1_plus_N2 = (paramsa_rs_smallestCV.mu(1) +...
    paramsa_rs_smallestCV.theta(1)*mean(zAvgApprox_rs_smallestCV))/paramsa_rs_smallestCV.beta_z(1);

% add to other data
S_avg = [S_avg,S_avg_smallestCV];
S_std = [S_std,S_std_smallestCV];
RelNoise_avg = [RelNoise_avg,CV_avg_smallestCV];
RelNoise_std = [RelNoise_std,CV_std_smallestCV];
N = [N,numel(S_rs_smallestCV)];

%% point for caption 
% import data
stats_fname_rs_captionPT = strcat(data_path, ...
    'Fig3B_captionPT_STATISTICS.bin');
stats_rs_captionPT = read_AIF_three_components_statistics(stats_fname_rs_captionPT);
params_fname_rs_captionPT = strcat(data_path, ...
    'Fig3B_captionPT_PARAMETERS.bin');
params_rs_captionPT = read_AIF_three_components_parameters(params_fname_rs_captionPT);

% check flux and covariance balance
% 2% threshold
FB_rs_captionPT = check_flux_balance_AIF_three_components(stats_rs_captionPT, ...
    params_rs_captionPT, 2/100);
% 5% threshold
CB_rs_captionPT = check_covariance_balance_AIF_three_components(stats_rs_captionPT, ...
    params_rs_captionPT, 5/100); 
inds_rs_captionPT = FB_rs_captionPT & CB_rs_captionPT;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_captionPT);
for j = 1:numel(fn)
    field_vals = params_rs_captionPT.(fn{j});
    params_rs_captionPT.(fn{j}) = field_vals(inds_rs_captionPT);
end
fn = fieldnames(stats_rs_captionPT);
for j = 1:numel(fn)
    field_vals = stats_rs_captionPT.(fn{j});
    stats_rs_captionPT.(fn{j}) = field_vals(inds_rs_captionPT);
end

% calculate numerical sensitivity coefficients
[S_rs_captionPT, ExApprox_rs_captionPT, EyApprox_rs_captionPT, zAvgApprox_rs_captionPT,...
    zVarApprox_rs_captionPT, paramsa_rs_captionPT] ...
    = ProcessSensitivityData(stats_rs_captionPT, params_rs_captionPT);
Fz_rs_captionPT = zVarApprox_rs_captionPT./zAvgApprox_rs_captionPT;

S_avg_captionPT = mean(S_rs_captionPT(paramsa_rs_captionPT.C == 16500));
S_std_captionPT = std(S_rs_captionPT(paramsa_rs_captionPT.C == 16500));
CV_avg_captionPT = mean(sqrt(Fz_rs_captionPT(paramsa_rs_captionPT.C == 16500)));
CV_std_captionPT = std(sqrt(Fz_rs_captionPT(paramsa_rs_captionPT.C == 16500)));

% add to other data (note this was added post density adjustment hence
% needing to explicitely add it to the denisty adjustment data later but
% still needs to be added here retrospectively to find the std after!
S_avg = [S_avg,S_avg_captionPT];
S_std = [S_std,S_std_captionPT];
RelNoise_avg = [RelNoise_avg,CV_avg_captionPT];
RelNoise_std = [RelNoise_std,CV_std_captionPT];
N = [N,numel(S_rs_smallestCV)];

%{
%% define path where data for plotting will be saved
save_path = '.\DataForPlotting\';


%% save Fig. 3B data for density adjustment

fileID = fopen(strcat(save_path,'Fig3B_rsMeans_data.txt'),'w');
formatspec = '%.20f %.20f \r\n';
data = [S_avg(N>=3); RelNoise_avg(N>=3)]; % keep only points with at least 3 seeds
fprintf(fileID, formatspec, data);
fclose(fileID);
%}

%% load density adjusted data

% define path to data
data_path = strcat('C:\Users\brayd\PhD\HilfingerGroup\code\',...
    'ForPublications\Antithetic_Integral_Feedback_Control\',...
    'AnalysisClean\DataForPlotting\');

% load & extract data 
Fig3B_densADJ = readmatrix(strcat(data_path,'Fig3B_rsMeans_densADJ.txt'));
S_plot = Fig3B_densADJ(:,1);
RelNoise_plot = Fig3B_densADJ(:,2);

% add rounded parameter set point to other data
S_plot = [S_plot;S_avg_captionPT];
RelNoise_plot = [RelNoise_plot;CV_avg_captionPT];

% non rounded version
y = 0.371934;
[mm,ii]=min(abs(RelNoise_plot-y));
RelNoise_plot(ii) = [];
S_plot(ii) = [];

%% extract corresponding std values
M1 = zeros(1, numel(S_plot)-1);
M2 = zeros(1, numel(S_plot)-1);

S_std_plot = zeros(1, numel(S_plot)-1);
RelNoise_std_plot = zeros(1, numel(S_plot)-1);

for i = 1:numel(S_plot)
	[m1,j] = min(abs(S_avg - S_plot(i)));
	m2 = abs(RelNoise_plot(i) - RelNoise_avg(j));
	M1(i) = m1;
	M2(i) = m2;
	
	S_std_plot(i) = S_std(j);
	RelNoise_std_plot(i) = RelNoise_std(j);
end
%% make plot
% set up some basic objects 
close all

fs_ax = 18;
lw_plot = 3;
ms = 12;

Fig3B_ideal_densADJ = readmatrix(strcat(data_path,'Fig3B_densADJ_idealized.txt'));
znoiseIdeal = Fig3B_ideal_densADJ(:,1);
MINznoiseIdeal = min(znoiseIdeal);
sz = numel(znoiseIdeal);
znoiseIdeal = znoiseIdeal(randperm(sz,15)); 
znoiseIdeal = [MINznoiseIdeal; znoiseIdeal];

% make plot
x = linspace(0,1,1e5);
close all

figure;
scatter(-1,-1, 10*ms, 'pentagram', 'filled','red')
hold on
scatter(S_plot, RelNoise_plot, ms, 'filled', 'black')
plot(x, ones(size(x)), 'linewidth',lw_plot, 'color', 'red', 'linestyle','--')
scatter(zeros(size(znoiseIdeal)),znoiseIdeal, 10*ms, 'pentagram', 'filled','red')
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Sensitivity} \boldmath$S$', 'interpreter', 'latex', 'fontsize', fs_ax)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', fs_ax)
%[lgd,icons,plots,legend_text] = legend('Idealized systems', 'Systems with dilution', ...
%    'Open-loop noise', 'Location', 'northeast');
%icons(4).Children.MarkerSize = ms;
%lgd.FontSize = fs_ax - 4;
xlim([0,0.2])
ylim([0,2])
xticks([0 0.05 0.1 0.15 0.2])
yticks([0 0.5 1 1.5 2])
exportgraphics(gcf, '.\Figures\Fig3B_reseedmeans.pdf','ContentType','vector')

figure;
errorbar(S_plot, RelNoise_plot, ...
    RelNoise_std_plot, RelNoise_std_plot, S_std_plot, S_std_plot,...
    '.', 'MarkerSize', 12, 'color', 'black')
hold on
scatter(S_plot, RelNoise_plot, ms, 'filled', 'black')
plot(x, ones(size(x)), 'linewidth',lw_plot, 'color', 'red', 'linestyle','--')
scatter(zeros(size(znoiseIdeal)),znoiseIdeal, 10*ms, 'pentagram', 'filled','red')
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Sensitivity} \boldmath$S$', 'interpreter', 'latex', 'fontsize', fs_ax)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', fs_ax)
%[lgd,icons,plots,legend_text] = legend('Idealized systems', 'Systems with dilution', ...
%    'Open-loop noise', 'Location', 'northeast');
%icons(4).Children.MarkerSize = ms;
%lgd.FontSize = fs_ax - 4;
xlim([0,0.2])
ylim([0,2])
xticks([0 0.05 0.1 0.15 0.2])
yticks([0 0.5 1 1.5 2])
exportgraphics(gcf, '.\Figures\Fig3B_reseedmeans_with_errorbars.pdf','ContentType','vector')