%% define data_path to data
clear; close all; clc;

data_path = './RawData/Reference_Actuated_System_with_Dilution_4comp/';

%% import initial parameter search
%stats_fname = strcat(data_path, ...
%    'Reference_Actuated_System_with_Dilution_4comp_STATISTICS.bin');
stats_fname_betaX = strcat(data_path, ...
    'Sensitivity_4comp1_STATISTICS.bin');
stats_betaX = read_AIF_four_components_statistics(stats_fname_betaX);
%params_fname = strcat(data_path, ...
%    'Reference_Actuated_System_with_Dilution_4comp_PARAMETERS.bin');
params_fname_betaX = strcat(data_path, ...
    'Sensitivity_4comp1_PARAMETERS.bin');
params_betaX = read_AIF_four_components_parameters(params_fname_betaX);

%stats_fname = strcat(data_path, ...
%    'Reference_Actuated_System_with_Dilution_4comp_STATISTICS.bin');
stats_fname_betaW = strcat(data_path, ...
    'Sensitivity_4comp_betaW1_STATISTICS.bin');
stats_betaW = read_AIF_four_components_statistics(stats_fname_betaW);
%params_fname = strcat(data_path, ...
%    'Reference_Actuated_System_with_Dilution_4comp_PARAMETERS.bin');
params_fname_betaW = strcat(data_path, ...
    'Sensitivity_4comp_betaW1_PARAMETERS.bin');
params_betaW = read_AIF_four_components_parameters(params_fname_betaW);

%stats_fname = strcat(data_path, ...
%    'Reference_Actuated_System_with_Dilution_4comp_STATISTICS.bin');
stats_fname_phi = strcat(data_path, ...
    'Sensitivity_4comp_phi1_STATISTICS.bin');
stats_phi = read_AIF_four_components_statistics(stats_fname_phi);
%params_fname = strcat(data_path, ...
%    'Reference_Actuated_System_with_Dilution_4comp_PARAMETERS.bin');
params_fname_phi = strcat(data_path, ...
    'Sensitivity_4comp_phi1_PARAMETERS.bin');
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

%% make figures for betaX pert
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

noise_betaX = sqrt(CVsq_CL_betaX./CVsq_OL_betaX);
noise_betaW = sqrt(CVsq_CL_betaW./CVsq_OL_betaW);
noise_phi = sqrt(CVsq_CL_phi./CVsq_OL_phi);

%% plot noise against total sensitivity 

% find unique parameter sets
fn = fieldnames(params_betaX);
param_sets_betaX = zeros(numel(paramsa_betaX.mu), numel(fn)-2);
param_sets_betaW = zeros(numel(paramsa_betaW.mu), numel(fn)-2);
param_sets_phi = zeros(numel(paramsa_phi.mu), numel(fn)-2);

ii = 0;
for i = 1:numel(fn)
    if not(i==19) && not(i==20) % disregard iterations and prng seeds
        ii = ii + 1;
        param_sets_betaX(:,ii) = paramsa_betaX.(fn{i});
        param_sets_betaW(:,ii) = paramsa_betaW.(fn{i});
        param_sets_phi(:,ii) = paramsa_phi.(fn{i});
    end
end

Stotal = [];
S_betaX_sorted = [];
S_betaW_sorted = [];
S_phi_sorted = [];
noiseAvg = [];
jj = 0;
params_sorted = struct;
for i = 1:size(param_sets_betaX,1)
    inds_1 = find(all(transpose(abs(param_sets_betaW - param_sets_betaX(i,:))<1e-3)));
    inds_2 = find(all(transpose(abs(param_sets_phi - param_sets_betaX(i,:))<1e-3)));
    
    if numel(inds_1) > 0 && numel(inds_2) > 0
        jj = jj + 1;
        Stotal(jj) = S_betaX(i) + S_betaW(inds_1) + S_phi(inds_2);
        S_betaX_sorted(jj) = S_betaX(i);
        S_betaW_sorted(jj) = S_betaW(inds_1);
        S_phi_sorted(jj) = S_phi(inds_2);
        noiseAvg(jj) = (1/3)*(noise_betaX(i) + noise_betaW(inds_1) + noise_phi(inds_2));
        params_sorted.phi(jj) = paramsa_betaX.phi(i);
        params_sorted.beta_w(jj) = paramsa_betaX.beta_w(i);
    end
end
x = linspace(0,1,1e5);

Stotal = Stotal/3;
 
figure;
scatter(Stotal, noiseAvg, 20, 'filled', 'black')
hold on
plot(x, ones(size(x)), 'linewidth',3, 'color', 'red', 'linestyle','--')
xlabel('\textbf{Sensitivity} \boldmath$S = (1/3)(S_{\beta_x} + S_{\beta_w} + S_{\lambda})$',...
    'interpreter', 'latex', 'fontsize', 18)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', 18)
xlim([0,0.5])
ylim([0,2])
exportgraphics(gcf, './Figures/4comp_sensitivity_A.pdf','ContentType','vector')

figure;
scatter(S_betaX_sorted, noiseAvg, 20, 'filled', 'black')
hold on
plot(x, ones(size(x)), 'linewidth',3, 'color', 'red', 'linestyle','--')
xlabel('\boldmath$\beta_x$ \textbf{Sensitivity} \boldmath$S_{\beta_x}$',...
    'interpreter', 'latex', 'fontsize', 18)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', 18)
xlim([0,0.26])
ylim([0,2])
exportgraphics(gcf, './Figures/4comp_sensitivity_B.pdf','ContentType','vector')

figure;
scatter(S_betaW_sorted, noiseAvg, 20, 'filled', 'black')
hold on
plot(x, ones(size(x)), 'linewidth',3, 'color', 'red', 'linestyle','--')
xlabel('\boldmath$\beta_w$ \textbf{Sensitivity} \boldmath$S_{\beta_w}$',...
    'interpreter', 'latex', 'fontsize', 18)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', 18)
xlim([0,0.2])
ylim([0,2])
exportgraphics(gcf, './Figures/4comp_sensitivity_C.pdf','ContentType','vector')

figure;
scatter(S_phi_sorted, noiseAvg, 20, 'filled', 'black')
hold on
plot(x, ones(size(x)), 'linewidth',3, 'color', 'red', 'linestyle','--')
xlabel('\boldmath$\lambda$ \textbf{Sensitivity} \boldmath$S_{\lambda}$',...
    'interpreter', 'latex', 'fontsize', 18)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', 18)
xlim([0,1])
ylim([0,2])
exportgraphics(gcf, './Figures/4comp_sensitivity_D.pdf','ContentType','vector')

%%
[m,i] = min(abs(noiseAvg - 0.374521))
Stotal(i)

S_betaX_sorted(i)
S_betaW_sorted(i)
S_phi_sorted(i)


(1/3)*(S_betaX_sorted(i) + S_betaW_sorted(i) + S_phi_sorted(i))