% make final figure panels for Fig 4
%% set up some plottimng parameters 
close all

fs_ax = 18;
lw_plot = 3;
ms = 12;

%% define path to data
data_path = '.\DataForPlotting\';

%% Panel B
% load & extract data 
Fig4B_densADJ = readmatrix(strcat(data_path,'Fig4B_densADJ.txt'));
zavg = Fig4B_densADJ(:,1);
znoise = Fig4B_densADJ(:,2);

% make plot
x = linspace(0, 100, 1e6);
figure;
scatter(zavg, znoise, ms, 'filled', 'black')
hold on
plot(x, sqrt(1./x), 'linewidth', lw_plot, 'color', 'red')
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Controlled species average} \boldmath$\langle x \rangle$', 'Interpreter', 'Latex', 'fontsize', fs_ax)
ylabel('\textbf{Controlled species noise} \boldmath$\mathrm{\mathrm{CV}}_x$', 'Interpreter', 'Latex', 'fontsize', fs_ax)
xlim([0,100])
ylim([0,0.5])
xticks([0 25 50 75 100])
yticks([0 0.25 0.5])
lgd = legend('Numerical closed-loop simulations', 'Open-loop noise');
lgd.FontSize = fs_ax-4;
exportgraphics(gcf, '.\Figures\Fig4B.pdf','ContentType','vector')