% make noise vs N1 plot for SI
%% set up some basic objects 
close all

fs_ax = 18;
lw_plot = 3;
ms = 12;

%% define path to data
data_path = '.\DataForPlotting\';

%% Panel B
% load & extract data 
densADJ_1 = readmatrix(strcat(data_path,'SI_CV_vs_N1_data_densADJ_1.txt'));
N1_1 = densADJ_1(:,1);
znoise_1 = densADJ_1(:,2);

densADJ_2 = readmatrix(strcat(data_path,'SI_CV_vs_N1_data_densADJ_2.txt'));
N1_2 = densADJ_2(:,1);
znoise_2 = densADJ_2(:,2);

densADJ_3 = readmatrix(strcat(data_path,'SI_CV_vs_N1_data_densADJ_3.txt'));
N1_3 = densADJ_3(:,1);
znoise_3 = densADJ_3(:,2);

densADJ_4 = readmatrix(strcat(data_path,'SI_CV_vs_N1_data_densADJ_4.txt'));
N1_4 = densADJ_4(:,1);
znoise_4 = densADJ_4(:,2);

x = 0:0.01:5000;
figure;
scatter(N1_4, znoise_4, ms,'filled', 'MarkerFaceColor', "#0072BD")
hold on
scatter(N1_3, znoise_3, ms,'filled','MarkerFaceColor', "#D95319")
scatter(N1_2, znoise_2, ms,'filled','MarkerFaceColor', "#EDB120")
scatter(N1_1, znoise_1, ms,'filled','MarkerFaceColor', "#7E2F8E")
plot(x, ones(size(x))*sqrt((2*sqrt(40)-1)/40), '--', 'color', "#0072BD", 'linewidth', 3)
plot(x, ones(size(x))*sqrt((2*sqrt(20)-1)/20), '--','color', "#D95319", 'linewidth', 3)
plot(x, ones(size(x))*sqrt((2*sqrt(10)-1)/10), '--', 'color', "#EDB120", 'linewidth', 3)
plot(x, ones(size(x))*sqrt((2*sqrt(5)-1)/5), '--', 'color', "#7E2F8E", 'linewidth', 3)
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel({'\textbf{Average} \boldmath$Z_1$ \textbf{birth events per average}';'\textbf{lifetime of $X$ molecules} \boldmath$N_1$'},...
    'interpreter', 'latex', 'fontsize', fs_ax)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', fs_ax)
xlim([0,5000])
ylim([0,1])
lgd = legend('\boldmath$N_2/N_x = 40$', '\boldmath$N_2/N_x = 20$',...
    '\boldmath$N_2/N_x = 10$', '\boldmath$N_2/N_x = 5$', ...
    'interpreter','latex','Location', 'southwest');
lgd.FontSize = fs_ax-2;
exportgraphics(gcf, '.\Figures\Fig_SI_CV_N1.pdf','ContentType','vector')