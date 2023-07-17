% make final figure panels for Fig 2
%% set up some basic objects 
close all

fs_ax = 18;
lw_plot = 3;
ms = 12;

%% define path to data
data_path = './DataForPlotting/';

%% Panel B
% load & extract data 
Fig2B_densADJ = readmatrix(strcat(data_path, 'Fig2B_densADJ.txt'));
zavg = Fig2B_densADJ(:,1);
znoise = Fig2B_densADJ(:,2);

% make figure
x = linspace(0,100,1e6);

figure;
scatter(zavg, znoise, ms, 'filled', 'black')
hold on
plot(x, sqrt(1./x), 'linewidth', lw_plot, 'color', 'red')
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{ Controlled species average} \boldmath$\langle x \rangle$', 'Interpreter', 'Latex', 'fontsize', fs_ax)
ylabel('\textbf{Controlled species noise} \boldmath$\mathrm{CV}_x$', 'Interpreter', 'Latex', 'fontsize', fs_ax)
xlim([0,100])
ylim([0,0.5])
lgd = legend('Numerical closed-loop simulations', 'Open-loop noise', ...
    'Location', 'southwest');
lgd.FontSize = fs_ax - 4;
xticks([0 25 50 75 100])
yticks([0 0.25 0.5])
exportgraphics(gcf, './Figures/Fig2C.pdf','ContentType','vector')

%% Panel C
% load & extract data 
Fig2C_densADJ_1 = readmatrix(strcat(data_path, 'Fig2C_densADJ_1.txt'));
x1 = Fig2C_densADJ_1(:,1);
y1 = Fig2C_densADJ_1(:,2);

Fig2C_densADJ_2 = readmatrix(strcat(data_path, 'Fig2C_densADJ_2.txt'));
x2 = Fig2C_densADJ_2(:,1);
y2 = Fig2C_densADJ_2(:,2);

Fig2C_densADJ_3 = readmatrix(strcat(data_path, 'Fig2C_densADJ_3.txt'));
x3 = Fig2C_densADJ_3(:,1);
y3 = Fig2C_densADJ_3(:,2);

% make figure
N2_Nx = linspace(0,10,1e6);
k1 = 5;
k2 = 1;
k3 = 1/5;

figure;
scatter(x3, y3-1, ms, 'MarkerEdgeColor', '#f4c869','MarkerFaceColor', '#f4c869')
hold on
scatter(x2, y2-1, ms, 'MarkerEdgeColor', '#ff7d38','MarkerFaceColor', '#ff7d38')
scatter(x1, y1-1, ms, 'MarkerEdgeColor', '#492715','MarkerFaceColor', '#492715')
plot(N2_Nx, sqrt(1 + 1./(N2_Nx.*((1./k1).*(1./N2_Nx) + 1)))-1,...
    'linewidth', lw_plot, 'color', '#492715')
plot(N2_Nx, sqrt(1 + 1./(N2_Nx.*((1./k2).*(1./N2_Nx) + 1)))-1,...
    'linewidth', lw_plot, 'color', '#ff7d38')
plot(N2_Nx, sqrt(1 + 1./(N2_Nx.*((1./k3).*(1./N2_Nx) + 1)))-1,...
    'linewidth', lw_plot, 'color', '#f4c869')
xticks([0 5 10])
yticks([0 0.25 0.5 0.75 1])
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Relative sensor burden} \boldmath$N_2/N_x$', 'interpreter', 'latex', 'fontsize', fs_ax)
ylabel('\textbf{Noise penalty} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}} - 1$',...
    'interpreter', 'latex', 'fontsize', fs_ax)
lgd = legend('$0.2 \leq k\tau_x < 1$', '$1 \leq k\tau_x < 5$', '$5 \leq k\tau_x$',...
     'interpreter','latex');%'Poisson limit', 
lgd.FontSize = fs_ax;
ylim([0,1])
xlim([0,10])
exportgraphics(gcf, './Figures/Fig2C.pdf','ContentType','vector')