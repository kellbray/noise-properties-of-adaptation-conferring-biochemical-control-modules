%% define data_path to data
clear; close all; clc;

data_path = '.\RawData\Reference_Actuated_System_with_Dilution_4comp\';

%% import initial parameter search
stats_fname_betaX = strcat(data_path, ...
    'Sensitivity_betaX_4comp_RS_STATISTICS.bin');
stats_betaX = read_AIF_four_components_statistics(stats_fname_betaX);
params_fname_betaX = strcat(data_path, ...
    'Sensitivity_betaX_4comp_RS_PARAMETERS.bin');
params_betaX = read_AIF_four_components_parameters(params_fname_betaX);

stats_fname_betaW = strcat(data_path, ...
    'Sensitivity_betaW_4comp_RS_STATISTICS.bin');
stats_betaW = read_AIF_four_components_statistics(stats_fname_betaW);
params_fname_betaW = strcat(data_path, ...
    'Sensitivity_betaW_4comp_RS_PARAMETERS.bin');
params_betaW = read_AIF_four_components_parameters(params_fname_betaW);

stats_fname_phi = strcat(data_path, ...
    'Sensitivity_phi_4comp_RS_STATISTICS.bin');
stats_phi = read_AIF_four_components_statistics(stats_fname_phi);
params_fname_phi = strcat(data_path, ...
    'Sensitivity_phi_4comp_RS_PARAMETERS.bin');
params_phi = read_AIF_four_components_parameters(params_fname_phi);

%% check flux and covariance balance
% 2% threshold
FB = check_flux_balance_AIF_four_components(stats_betaX, params_betaX,...
    2/100);
% 5% threshold
CB = check_covariance_balance_AIF_four_components(stats_betaX, params_betaX,...
    5/100); 
inds_betaX = FB & CB;

% 2% threshold
FB = check_flux_balance_AIF_four_components(stats_betaW, params_betaW,...
    2/100);
% 5% threshold
CB = check_covariance_balance_AIF_four_components(stats_betaW, params_betaW,...
    5/100); 
inds_betaW = FB & CB;

% 2% threshold
FB = check_flux_balance_AIF_four_components(stats_phi, params_phi,...
    2/100);
% 5% threshold
CB = check_covariance_balance_AIF_four_components(stats_phi, params_phi,...
    5/100); 
inds_phi = FB & CB;

%% subset data based on flux and covariance balance tests 
fn = fieldnames(params_betaX);
for j = 1:numel(fn)
    field_vals = params_betaX.(fn{j});
    params_betaX.(fn{j}) = field_vals(inds_betaX);
    field_vals = params_betaW.(fn{j});
    params_betaW.(fn{j}) = field_vals(inds_betaW);
    field_vals = params_phi.(fn{j});
    params_phi.(fn{j}) = field_vals(inds_phi);
end

fn = fieldnames(stats_betaX);
for j = 1:numel(fn)
    field_vals = stats_betaX.(fn{j});
    stats_betaX.(fn{j}) = field_vals(inds_betaX);
    field_vals = stats_betaW.(fn{j});
    stats_betaW.(fn{j}) = field_vals(inds_betaW);
    field_vals = stats_phi.(fn{j});
    stats_phi.(fn{j}) = field_vals(inds_phi);
end

%% Calculate numerical sensitivity coefficient and corresponding CV
[S_betaX, ExApprox_betaX, EyApprox_betaX, zAvgApprox_betaX, zVarApprox_betaX,...
    paramsa_betaX, statsa_betaX] ...
    = ProcessSensitivityData_4comp(stats_betaX, params_betaX);

[S_betaW, ExApprox_betaW, EyApprox_betaW, zAvgApprox_betaW, zVarApprox_betaW,...
    paramsa_betaW, statsa_betaW] ...
    = ProcessSensitivityData_4comp_betaW(stats_betaW, params_betaW);

[S_phi, ExApprox_phi, EyApprox_phi, zAvgApprox_phi, zVarApprox_phi,...
    paramsa_phi, statsa_phi] ...
    = ProcessSensitivityData_4comp_phi(stats_phi, params_phi);

CVsq_CL_betaX = zVarApprox_betaX./(zAvgApprox_betaX.^2);
CVsq_CL_betaW = zVarApprox_betaW./(zAvgApprox_betaW.^2);
CVsq_CL_phi = zVarApprox_phi./(zAvgApprox_phi.^2);

CVsq_OL_betaX = (1./zAvgApprox_betaX') +...
    (paramsa_betaX.beta_x./(paramsa_betaX.beta_x+paramsa_betaX.beta_w)).*...
    (1./statsa_betaX.W_avg);
CVsq_OL_betaW = (1./zAvgApprox_betaW') +...
    (paramsa_betaW.beta_x./(paramsa_betaW.beta_x+paramsa_betaW.beta_w)).*...
    (1./statsa_betaW.W_avg);
CVsq_OL_phi = (1./zAvgApprox_phi') +...
    (paramsa_phi.beta_x./(paramsa_phi.beta_x+paramsa_phi.beta_w)).*...
    (1./statsa_phi.W_avg);
CVsq_OL_betaX = CVsq_OL_betaX';
CVsq_OL_betaW = CVsq_OL_betaW';
CVsq_OL_phi = CVsq_OL_phi';

%calculate averages and standard deviations 
S_betaX_avg = mean(S_betaX);
S_betaX_std = std(S_betaX);
RelNoise_betaX_avg = mean(sqrt(CVsq_CL_betaX./CVsq_OL_betaX));
RelNoise_betaX_std = std(sqrt(CVsq_CL_betaX./CVsq_OL_betaX));

S_betaW_avg = mean(S_betaW);
S_betaW_std = std(S_betaW);
RelNoise_betaW_avg = mean(sqrt(CVsq_CL_betaW./CVsq_OL_betaW));
RelNoise_betaW_std = std(sqrt(CVsq_CL_betaW./CVsq_OL_betaW));

S_phi_avg = mean(S_phi);
S_phi_std = std(S_phi);
RelNoise_phi_avg = mean(sqrt(CVsq_CL_phi./CVsq_OL_phi));
RelNoise_phi_std = std(sqrt(CVsq_CL_phi./CVsq_OL_phi));

S_total = (S_betaX_avg + S_betaW_avg + S_phi_avg)/3;
RelNoise_S_total = (RelNoise_betaX_avg + RelNoise_betaW_avg ...
    + RelNoise_phi_avg)/3;


%%
RelNoise_S_total_err = sqrt(RelNoise_betaX_std.^2 + RelNoise_betaW_std.^2 + RelNoise_phi_std.^2)/3;
S_total_err = sqrt(S_betaX_std.^2 + S_betaW_std.^2 + S_phi_std.^2)/3;
x = linspace(0,1,1e5);
figure;
errorbar(S_total, RelNoise_S_total, ...
    RelNoise_S_total_err, RelNoise_S_total_err, S_total_err, S_total_err,...
    '.', 'MarkerSize', 12)
hold on
errorbar(S_betaX_avg, RelNoise_betaX_avg, ...
    RelNoise_betaX_std, RelNoise_betaX_std, S_betaX_std, S_betaX_std,...
    '.', 'MarkerSize', 12)
errorbar(S_betaW_avg, RelNoise_betaW_avg, ...
    RelNoise_betaW_std, RelNoise_betaW_std, S_betaW_std, S_betaX_std,...
    '.', 'MarkerSize', 12)
errorbar(S_phi_avg, RelNoise_phi_avg, ...
    RelNoise_phi_std, RelNoise_phi_std, S_phi_std, S_phi_std,...
    '.', 'MarkerSize', 12)
plot(x, ones(size(x)), 'linewidth',3, 'color', 'red', 'linestyle','--')
xlabel('\textbf{Sensitivity}',...
    'interpreter', 'latex', 'fontsize', 18)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', 18)
xlim([0,0.2])
ylim([0,2])
lgd = legend('\boldmath$S = (S_{\beta_x} + S_{\beta_w} + S_{\lambda})/3$', ...
    '\boldmath$S_{\beta_x}$', '\boldmath$S_{\beta_w}$', '\boldmath$S_{\lambda}$', 'Interpreter', 'latex',...
    'Location', 'northeast');
lgd.FontSize = 14;
exportgraphics(gcf, '.\Figures\4_comp_sensitivity_RS.pdf','ContentType','vector')