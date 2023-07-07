% make noise vs S figure for SI
%% set up some basic objects 
close all

fs_ax = 18;
lw_plot = 3;
ms = 12;

%% define path to data
data_path = '.\DataForPlotting\';

%% Panel B
% load & extract data 
densADJ_1 = readmatrix(strcat(data_path,'SI_CV_vs_S_densADJ_1.txt'));
S_1 = densADJ_1(:,1);
znoise_1 = densADJ_1(:,2);

densADJ_2 = readmatrix(strcat(data_path,'SI_CV_vs_S_densADJ_2.txt'));
S_2 = densADJ_2(:,1);
znoise_2 = densADJ_2(:,2);

densADJ_3 = readmatrix(strcat(data_path,'SI_CV_vs_S_densADJ_3.txt'));
S_3 = densADJ_3(:,1);
znoise_3 = densADJ_3(:,2);

densADJ_4 = readmatrix(strcat(data_path,'SI_CV_vs_S_densADJ_4.txt'));
S_4 = densADJ_4(:,1);
znoise_4 = densADJ_4(:,2);

densADJ_5 = readmatrix(strcat(data_path,'SI_CV_vs_S_densADJ_5.txt'));
S_5 = densADJ_5(:,1);
znoise_5 = densADJ_5(:,2);

densADJ_6 = readmatrix(strcat(data_path,'SI_CV_vs_S_densADJ_6.txt'));
S_6 = densADJ_6(:,1);
znoise_6 = densADJ_6(:,2);

densADJ_7 = readmatrix(strcat(data_path,'SI_CV_vs_S_densADJ_7.txt'));
S_7 = densADJ_7(:,1);
znoise_7 = densADJ_7(:,2);

% make plot
max_N2Nx = 200000;
x = linspace(0,1,1e5);
figure;
h(1) = scatter(S_7, znoise_7, ms,'filled', 'MarkerFaceColor', "black",...
    'DisplayName', '\boldmath$N_2/N_x > 80$');
hold on
h(2) = scatter(S_6, znoise_6, ms,'filled', 'MarkerFaceColor', 	"#77AC30",...
    'DisplayName', '\boldmath$N_2/N_x = 80$');
h(3) = scatter(S_5, znoise_5, ms,'filled', 'MarkerFaceColor', "#0072BD",...
    'DisplayName', '\boldmath$N_2/N_x = 40$');
h(4) = scatter(S_4, znoise_4, ms,'filled', 'MarkerFaceColor', "#D95319",...
    'DisplayName', '\boldmath$N_2/N_x = 20$');
h(5) = scatter(S_3, znoise_3, ms,'filled', 'MarkerFaceColor', "#EDB120",...
    'DisplayName', '\boldmath$N_2/N_x = 10$');
h(6) = scatter(S_2, znoise_2, ms,'filled', 'MarkerFaceColor', "#7E2F8E",...
    'DisplayName', '\boldmath$N_2/N_x = 5$');
h(7) = scatter(S_1, znoise_1, ms,'filled', 'MarkerFaceColor', 	"#A2142F",...
    'DisplayName', '\boldmath$N_2/N_x = 1$');
plot(x, ones(size(x))*sqrt((2*sqrt(max_N2Nx)-1)/max_N2Nx), '--', 'color', "black", 'linewidth', 3)
plot(x, ones(size(x))*sqrt((2*sqrt(80)-1)/80), '--', 'color', "#77AC30", 'linewidth', 3)
plot(x, ones(size(x))*sqrt((2*sqrt(40)-1)/40), '--', 'color', "#0072BD", 'linewidth', 3)
plot(x, ones(size(x))*sqrt((2*sqrt(20)-1)/20), '--','color', "#D95319", 'linewidth', 3)
plot(x, ones(size(x))*sqrt((2*sqrt(10)-1)/10), '--', 'color', "#EDB120", 'linewidth', 3)
plot(x, ones(size(x))*sqrt((2*sqrt(5)-1)/5), '--', 'color', "#7E2F8E", 'linewidth', 3)
plot(x, ones(size(x))*sqrt((2*sqrt(1)-1)/1), '--', 'color', "#A2142F", 'linewidth', 3)
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Sensitivity} \boldmath$S$', 'interpreter', 'latex', 'fontsize', fs_ax)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', fs_ax)
xlim([0,1])
ylim([0,2])
xticks([0 0.25 0.5 0.75 1])
yticks([0 0.5 1 1.5 2])
lgd = legend(h([7 6 5 4 3 2 1]), 'interpreter','latex','orientation','horizontal');
lgd.FontSize = fs_ax-2;
lgd.NumColumns = 2;
exportgraphics(gcf, '.\Figures\Fig_SI_CV_S.pdf','ContentType','vector')
