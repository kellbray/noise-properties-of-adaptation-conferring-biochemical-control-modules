% make final figure panels for Fig 3
%% set up some basic objects 
close all

fs_ax = 18;
lw_plot = 3;
ms = 12;

%% define path to data
data_path = '.\DataForPlotting\';

%% Panel B
% load & extract data 
Fig3B_densADJ = readmatrix(strcat(data_path,'Fig3B_densADJ.txt'));
S = Fig3B_densADJ(:,1);
znoise = Fig3B_densADJ(:,2);

% remove a point we've reseeded whose mean sensitivity across seeds is
% much larger
S = S(~(znoise == 0.340485));
znoise = znoise(~(znoise == 0.340485));

Fig3B_ideal_densADJ = readmatrix(strcat(data_path,'Fig3B_densADJ_idealized.txt'));
znoiseIdeal = Fig3B_ideal_densADJ(:,1);
MINznoiseIdeal = min(znoiseIdeal);
sz = numel(znoiseIdeal);
znoiseIdeal = znoiseIdeal(randperm(sz,15)); 
znoiseIdeal = [MINznoiseIdeal; znoiseIdeal];
% make plot
close all
x = linspace(0,1,1e5);
figure;
scatter(-1,-1, 10*ms, 'pentagram', 'filled','red')
hold on
scatter(S, znoise, ms, 'filled', 'black')
plot(x, ones(size(x)), 'linewidth',lw_plot, 'color', 'red', 'linestyle','--')
scatter(zeros(size(znoiseIdeal)),znoiseIdeal, 10*ms, 'pentagram', 'filled','red')
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Sensitivity} \boldmath$S$', 'interpreter', 'latex', 'fontsize', fs_ax)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', fs_ax)
%[lgd,icons,plots,legend_text] = legend('Idealized systems', 'Systems with dilution', ...
%    'Open-loop noise', 'Location', 'northeast');
%icons(4).Children.MarkerSize = ms;
%lgd.FontSize = fs_ax - 4;
xlim([0,0.2])
ylim([0,2])
xticks([0 0.05 0.1 0.15 0.2])
yticks([0 0.5 1 1.5 2])
exportgraphics(gcf, '.\Figures\Fig3B.pdf','ContentType','vector')

figure;
scatter(-1,-1, 10*ms, 'pentagram', 'filled','red')
hold on
scatter(-1, -1, ms, 'filled', 'black')
plot(x, -ones(size(x)), 'linewidth',lw_plot, 'color', 'red', 'linestyle','--')
scatter(-1,-1, 10*ms, 'pentagram', 'filled','red')
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Sensitivity} \boldmath$S$', 'interpreter', 'latex', 'fontsize', fs_ax)
ylabel('\textbf{Relative noise} \boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}$',...
    'interpreter', 'latex', 'fontsize', fs_ax)
[lgd,icons,plots,legend_text] = legend('Idealized systems', 'Systems with dilution', ...
    'Open-loop noise', 'Location', 'northeast');
icons(4).Children.MarkerSize = ms;
lgd.FontSize = fs_ax - 2;
xlim([0,0.2])
ylim([0,2])
xticks([0 0.05 0.1 0.15 0.2])
yticks([0 0.5 1 1.5 2])
exportgraphics(gcf, '.\Figures\Fig3B_legend.pdf','ContentType','vector')