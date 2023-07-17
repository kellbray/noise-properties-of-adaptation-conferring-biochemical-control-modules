%% define path to data
data_path = './RawData/Idealized_Sensor_Actuated_System_4comp/';

%% import data 
stats_fname = strcat(data_path, 'Idealized_sensor_Actuated_STATISTICS.bin');
stats = read_AIF_four_components_statistics(stats_fname);
params_fname = strcat(data_path, 'Idealized_sensor_Actuated_PARAMETERS.bin');
params = read_AIF_four_components_parameters(params_fname);


%% check flux and covariance balance 

% 2% threshold
FB = check_flux_balance_AIF_four_components(stats, params, 3/100); 
% 5% threshold
CB = check_covariance_balance_AIF_four_components(stats, params, 5/100); 
inds_1 = FB & CB;
fprintf(strcat(num2str(sum(inds_1)),...
    ' parameter sets pass flux and covariance balance',...
    ' in first data file. \n'))



%% subset data based on flux and covariance balance tests
fn = fieldnames(params);
for i = 1:numel(fn)
    field_vals = params.(fn{i});
    params.(fn{i}) = field_vals(inds_1);
end
fn = fieldnames(stats);
for i = 1:numel(fn)
    field_vals = stats.(fn{i});
    stats.(fn{i}) = field_vals(inds_1);
end

%%

fs_ax = 18;
lw_plot = 3;
ms = 20;

OL_CV = sqrt((1./stats.Z_avg) + (1./stats.W_avg)...
    .*(1./params.beta_w)./((1./params.beta_w) + (1./params.beta_z)));

CL_CV = sqrt(stats.Z_var./(stats.Z_avg.^2));

x = linspace(0, max(OL_CV)+0.1, 1e5);
figure;
scatter(OL_CV, CL_CV, ms, 'filled', 'black')
hold on
plot(x,x, 'LineWidth', lw_plot, 'Color','Red')
xlim([0,0.8])
xlabel('\textbf{Open-loop noise} \boldmath$\sqrt{\frac{1}{\langle x \rangle} + \frac{\tau_w}{\tau_x + \tau_w}\frac{1}{\langle w \rangle}}$',...
    'Interpreter', 'Latex', 'fontsize', fs_ax)
ylabel('\textbf{Closed-loop noise} \boldmath$\mathrm{CV}_x$',...
    'Interpreter', 'Latex', 'fontsize', fs_ax)
exportgraphics(gcf, './Figures/SI_4comp_sAIF_noisesupp.pdf','ContentType','vector')

%%
[m,i] = min((OL_CV - CL_CV)./OL_CV)

max((OL_CV - CL_CV)./OL_CV)