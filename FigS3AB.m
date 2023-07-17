load('3comp_ref_actuated_dilution_data')

err = abs(1 - params.theta.*zAvgApprox'./params.mu);

figure;
loglog(err, S, 'o', 'MarkerSize', 3, 'MarkerFaceColor',[0 0.447 0.741])
xlim([0,0.01])
ylim([0,1])
xlabel('\textbf{Set-point tracking error} \boldmath$\mathcal{E}$',...
    'Interpreter', 'Latex', 'fontsize', 16)
ylabel('\textbf{Sensitivity} \boldmath$S$',...
    'Interpreter', 'Latex', 'fontsize', 16)
axis square
exportgraphics(gcf, ...
    './Figures/Fig_SI_Sensitivity_SPerr_loglog.pdf',...
    'ContentType','vector')


figure;
scatter(err, S, 12, 'filled')
xlim([0,1])
ylim([0,1])
xlabel('\textbf{Set-point tracking error} \boldmath$\mathcal{E}$',...
    'Interpreter', 'Latex', 'fontsize', 16)
ylabel('\textbf{Sensitivity} \boldmath$S$',...
    'Interpreter', 'Latex', 'fontsize', 16)
axis square
exportgraphics(gcf, ...
    './Figures/Fig_SI_Sensitivity_SPerr.pdf',...
    'ContentType','vector')
