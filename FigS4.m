clear; close all; clc;

load('3comp_ref_actuated_dilution_data')
noise = sqrt(zVarApprox./zAvgApprox);

inds = (noise./0.9).^2 + (S./0.1).^2 <= 1;

inds_tight = (noise./0.9).^2 + (S./0.02).^2 <= 1;

noise_ss = noise(inds);
S_ss = S(inds);

noise_ss_tight = noise(inds_tight);
S_ss_tight = S(inds_tight);

figure;
scatter(S, noise, 12, 'filled')
hold on
scatter(S_ss, noise_ss, 12, 'filled')
scatter(S_ss_tight, noise_ss_tight, 12, 'filled')
xlim([0,0.2])
ylim([0,1])
xlabel('Sensitivity \boldmath$S$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_A.pdf','ContentType','vector')

figure;
loglog(stats.Y_avg, stats.X_avg,...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741])
hold on
loglog(stats.Y_avg(inds), stats.X_avg(inds),...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0.8500 0.3250 0.0980])
loglog(stats.Y_avg(inds_tight), stats.X_avg(inds_tight),...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\langle z_1 \rangle$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\langle z_2 \rangle$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_B.pdf','ContentType','vector')

figure;
loglog(params.beta_y.*stats.Y_avg, params.beta_x.*stats.X_avg,...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741])
hold on
loglog(stats.Y_avg(inds), stats.X_avg(inds),...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0.8500 0.3250 0.0980])
loglog(stats.Y_avg(inds_tight), stats.X_avg(inds_tight),...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\beta_2\langle z_1 \rangle$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\beta_2\langle z_2 \rangle$',...
    'Interpreter', 'Latex', 'fontsize', 18)

figure;
loglog(params.C./params.beta_y, ...
    params.C.*stats.XY_avg./params.beta_y.*stats.Y_avg,...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741])
hold on
loglog(params.C(inds)./params.beta_y(inds), ...
    params.C(inds).*stats.XY_avg(inds)./...
    params.beta_y(inds).*stats.Y_avg(inds),...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0.8500 0.3250 0.0980])
loglog(params.C(inds_tight)./params.beta_y(inds_tight), ...
    params.C(inds_tight).*stats.XY_avg(inds_tight)./...
    params.beta_y(inds_tight).*stats.Y_avg(inds_tight),...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\gamma/\beta_1$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$(\gamma \langle z_1 z_2 \rangle)/(\beta_1 \langle z_1 \rangle)$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_C.pdf','ContentType','vector')

figure;
loglog(params.C./params.beta_x, ...
    params.C.*stats.XY_avg./params.beta_x.*stats.X_avg,...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741])
hold on
loglog(params.C(inds)./params.beta_x(inds), ...
    params.C(inds).*stats.XY_avg(inds)./...
    params.beta_x(inds).*stats.X_avg(inds),...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0.8500 0.3250 0.0980])
loglog(params.C(inds_tight)./params.beta_x(inds_tight), ...
    params.C(inds_tight).*stats.XY_avg(inds_tight)./...
    params.beta_x(inds_tight).*stats.X_avg(inds_tight),...
    'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\gamma/\beta_2$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$(\gamma \langle z_1 z_2 \rangle)/(\beta_2 \langle z_2 \rangle)$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_D.pdf','ContentType','vector')

figure;
loglog(params.mu, params.theta, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.mu(inds), params.theta(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])

loglog(params.mu(inds_tight), params.theta(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\mu$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\theta$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_E.pdf','ContentType','vector')

figure;
loglog(params.mu, params.k, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.mu(inds), params.k(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.mu(inds_tight), params.k(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\mu$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$k$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_F.pdf','ContentType','vector')

figure;
loglog(params.mu, params.C, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.mu(inds), params.C(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.mu(inds_tight), params.C(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\mu$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\gamma$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, '.\Figures\SI_params_G.pdf','ContentType','vector')
figure;
loglog(params.mu, params.beta_y, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.mu(inds), params.beta_y(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.mu(inds_tight), params.beta_y(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\mu$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\beta_1$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_H.pdf','ContentType','vector')

figure;
loglog(params.mu, params.beta_x, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.mu(inds), params.beta_x(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.mu(inds_tight), params.beta_x(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\mu$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\beta_2$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_I.pdf','ContentType','vector')

figure;
loglog(params.C, params.theta, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.C(inds), params.theta(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.C(inds_tight), params.theta(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\gamma$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\theta$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_J.pdf','ContentType','vector')

figure;
loglog(params.k, params.theta, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.k(inds), params.theta(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.k(inds_tight), params.theta(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$k$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\theta$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_K.pdf','ContentType','vector')

figure;
loglog(params.beta_y, params.theta, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.beta_y(inds), params.theta(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.beta_y(inds_tight), params.theta(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\beta_1$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\theta$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_L.pdf','ContentType','vector')

figure;
loglog(params.beta_x, params.theta, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.beta_x(inds), params.theta(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.beta_x(inds_tight), params.theta(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\beta_2$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\theta$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_M.pdf','ContentType','vector')

figure;
loglog(params.k, params.C, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.k(inds), params.C(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.k(inds_tight), params.C(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$k$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\gamma$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_N.pdf','ContentType','vector')

figure;
loglog(params.beta_y, params.C, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.beta_y(inds), params.C(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.beta_y(inds_tight), params.C(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\beta_1$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\gamma$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_O.pdf','ContentType','vector')

figure;
loglog(params.beta_x, params.C, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.beta_x(inds), params.C(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.beta_x(inds_tight), params.C(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\beta_2$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\gamma$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_O.pdf','ContentType','vector')

figure;
loglog(params.beta_y, params.k, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.beta_y(inds), params.k(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.beta_y(inds_tight), params.k(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\beta_1$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$k$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_P.pdf','ContentType','vector')

figure;
loglog(params.beta_x, params.k, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.beta_x(inds), params.k(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.beta_x(inds_tight), params.k(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\beta_2$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$k$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_Q.pdf','ContentType','vector')

figure;
loglog(params.beta_y, params.beta_x, 'o','MarkerSize', 3, 'MarkerFaceColor', [0.8500 0.3250 0.0980], 'MarkerEdgeColor', [0.8500 0.3250 0.0980])
hold on
loglog(params.beta_y(inds), params.beta_x(inds), 'o','MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741], 'MarkerEdgeColor',[0 0.447 0.741])
loglog(params.beta_y(inds_tight), params.beta_x(inds_tight), 'o','MarkerSize', 3, 'MarkerFaceColor',[0.9290 0.6940 0.1250], 'MarkerEdgeColor',[0.9290 0.6940 0.1250])
xlabel('\boldmath$\beta_1$',...
    'Interpreter', 'Latex', 'fontsize', 18)
ylabel('\boldmath$\beta_2$',...
    'Interpreter', 'Latex', 'fontsize', 18)
exportgraphics(gcf, './Figures/SI_params_R.pdf','ContentType','vector')

