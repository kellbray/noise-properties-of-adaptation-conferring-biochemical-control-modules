% make final figure panels for SI sensor feedback figure
%% set up some basic objects 
close all

fs_ax = 18;
lw_plot = 3;
ms = 12;

%% define path to data
data_path = '.\DataForPlotting\';

%% Panel B
% load & extract data 
SI_sensorbound_densADJ = readmatrix(strcat(data_path,'SI_SensorBound_densADJ.txt'));
N2_Nx = SI_sensorbound_densADJ(:,1);
rnz = SI_sensorbound_densADJ(:,2);

% make plot
x = linspace(0, 100, 1e6);
figure;
scatter(N2_Nx, rnz, ms, 'filled', 'black')
hold on
plot(x, sqrt(2./(1+sqrt(1+x))), 'linewidth', lw_plot, 'color', 'red')
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Relative sensor burden} \boldmath$N_2/N_x$', 'interpreter', 'latex', 'fontsize', fs_ax)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$', 'Interpreter', 'Latex', 'fontsize', fs_ax)
xlim([0,100])
ylim([0,2])
xticks([0 25 50 75 100])
yticks([0 0.5 1 1.5 2])
lgd = legend('Numerical closed-loop simulations', 'Predicted bound');
lgd.FontSize = fs_ax-4;
exportgraphics(gcf, '.\Figures\SI_SensorBound.pdf','ContentType','vector')