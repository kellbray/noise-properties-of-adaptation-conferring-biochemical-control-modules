%% define data_path to data
data_path = '.\RawData\Reference_Actuated_System_with_Dilution\';

%% import initial parameter search
stats_fname_B1_1 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_1_STATISTICS.bin');
stats_B1_1 = read_AIF_three_components_statistics(stats_fname_B1_1);
params_fname_B1_1 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_1_PARAMETERS.bin');
params_B1_1 = read_AIF_three_components_parameters(params_fname_B1_1);

stats_fname_B1_2 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_2_STATISTICS.bin');
stats_B1_2 = read_AIF_three_components_statistics(stats_fname_B1_2);
params_fname_B1_2 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_2_PARAMETERS.bin');
params_B1_2 = read_AIF_three_components_parameters(params_fname_B1_2);

stats_fname_B1_3 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_3_STATISTICS.bin');
stats_B1_3 = read_AIF_three_components_statistics(stats_fname_B1_3);
params_fname_B1_3 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_3_PARAMETERS.bin');
params_B1_3 = read_AIF_three_components_parameters(params_fname_B1_3);

stats_fname_B1_4 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_4_STATISTICS.bin');
stats_B1_4 = read_AIF_three_components_statistics(stats_fname_B1_4);
params_fname_B1_4 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_4_PARAMETERS.bin');
params_B1_4 = read_AIF_three_components_parameters(params_fname_B1_4);

stats_fname_B1_5 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_5_STATISTICS.bin');
stats_B1_5 = read_AIF_three_components_statistics(stats_fname_B1_5);
params_fname_B1_5 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_5_PARAMETERS.bin');
params_B1_5 = read_AIF_three_components_parameters(params_fname_B1_5);

stats_fname_B1_6 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_6_STATISTICS.bin');
stats_B1_6 = read_AIF_three_components_statistics(stats_fname_B1_6);
params_fname_B1_6 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_6_PARAMETERS.bin');
params_B1_6 = read_AIF_three_components_parameters(params_fname_B1_6);

stats_fname_B1_7 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_7_STATISTICS.bin');
stats_B1_7 = read_AIF_three_components_statistics(stats_fname_B1_7);
params_fname_B1_7 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_7_PARAMETERS.bin');
params_B1_7 = read_AIF_three_components_parameters(params_fname_B1_7);
%{
stats_fname_B1_8 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_8_STATISTICS.bin');
stats_B1_8 = read_AIF_three_components_statistics(stats_fname_B1_8);
params_fname_B1_8 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_8_PARAMETERS.bin');
params_B1_8 = read_AIF_three_components_parameters(params_fname_B1_8);
%}
stats_fname_B1_9 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_9_STATISTICS.bin');
stats_B1_9 = read_AIF_three_components_statistics(stats_fname_B1_9);
params_fname_B1_9 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_9_PARAMETERS.bin');
params_B1_9 = read_AIF_three_components_parameters(params_fname_B1_9);

stats_fname_B1_10 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_10_STATISTICS.bin');
stats_B1_10 = read_AIF_three_components_statistics(stats_fname_B1_10);
params_fname_B1_10 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_10_PARAMETERS.bin');
params_B1_10 = read_AIF_three_components_parameters(params_fname_B1_10);

stats_fname_B1_11 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_11_STATISTICS.bin');
stats_B1_11 = read_AIF_three_components_statistics(stats_fname_B1_11);
params_fname_B1_11 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_11_PARAMETERS.bin');
params_B1_11 = read_AIF_three_components_parameters(params_fname_B1_11);

stats_fname_B1_12 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_12_STATISTICS.bin');
stats_B1_12 = read_AIF_three_components_statistics(stats_fname_B1_12);
params_fname_B1_12 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_12_PARAMETERS.bin');
params_B1_12 = read_AIF_three_components_parameters(params_fname_B1_12);

stats_fname_B1_13 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_13_STATISTICS.bin');
stats_B1_13 = read_AIF_three_components_statistics(stats_fname_B1_13);
params_fname_B1_13 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_13_PARAMETERS.bin');
params_B1_13 = read_AIF_three_components_parameters(params_fname_B1_13);

stats_fname_B1_14 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_14_STATISTICS.bin');
stats_B1_14 = read_AIF_three_components_statistics(stats_fname_B1_14);
params_fname_B1_14 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_14_PARAMETERS.bin');
params_B1_14 = read_AIF_three_components_parameters(params_fname_B1_14);

stats_fname_B1_15 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_15_STATISTICS.bin');
stats_B1_15 = read_AIF_three_components_statistics(stats_fname_B1_15);
params_fname_B1_15 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_15_PARAMETERS.bin');
params_B1_15 = read_AIF_three_components_parameters(params_fname_B1_15);

stats_fname_B1_16 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_16_STATISTICS.bin');
stats_B1_16 = read_AIF_three_components_statistics(stats_fname_B1_16);
params_fname_B1_16 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_16_PARAMETERS.bin');
params_B1_16 = read_AIF_three_components_parameters(params_fname_B1_16);

stats_fname_B1_17 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_17_STATISTICS.bin');
stats_B1_17 = read_AIF_three_components_statistics(stats_fname_B1_17);
params_fname_B1_17 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_17_PARAMETERS.bin');
params_B1_17 = read_AIF_three_components_parameters(params_fname_B1_17);

stats_fname_B1_18 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_18_STATISTICS.bin');
stats_B1_18 = read_AIF_three_components_statistics(stats_fname_B1_18);
params_fname_B1_18 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_18_PARAMETERS.bin');
params_B1_18 = read_AIF_three_components_parameters(params_fname_B1_18);

stats_fname_B1_19 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_19_STATISTICS.bin');
stats_B1_19 = read_AIF_three_components_statistics(stats_fname_B1_19);
params_fname_B1_19 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_19_PARAMETERS.bin');
params_B1_19 = read_AIF_three_components_parameters(params_fname_B1_19);

stats_fname_B1_20 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_20_STATISTICS.bin');
stats_B1_20 = read_AIF_three_components_statistics(stats_fname_B1_20);
params_fname_B1_20 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_20_PARAMETERS.bin');
params_B1_20 = read_AIF_three_components_parameters(params_fname_B1_20);

stats_fname_B1_21 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_21_STATISTICS.bin');
stats_B1_21 = read_AIF_three_components_statistics(stats_fname_B1_21);
params_fname_B1_21 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_21_PARAMETERS.bin');
params_B1_21 = read_AIF_three_components_parameters(params_fname_B1_21);

stats_fname_B1_22 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_22_STATISTICS.bin');
stats_B1_22 = read_AIF_three_components_statistics(stats_fname_B1_22);
params_fname_B1_22 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_22_PARAMETERS.bin');
params_B1_22 = read_AIF_three_components_parameters(params_fname_B1_22);

stats_fname_B1_23 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_23_STATISTICS.bin');
stats_B1_23 = read_AIF_three_components_statistics(stats_fname_B1_23);
params_fname_B1_23 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_23_PARAMETERS.bin');
params_B1_23 = read_AIF_three_components_parameters(params_fname_B1_23);

stats_fname_B1_24 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_24_STATISTICS.bin');
stats_B1_24 = read_AIF_three_components_statistics(stats_fname_B1_24);
params_fname_B1_24 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_24_PARAMETERS.bin');
params_B1_24 = read_AIF_three_components_parameters(params_fname_B1_24);

stats_fname_B1_25 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_25_STATISTICS.bin');
stats_B1_25 = read_AIF_three_components_statistics(stats_fname_B1_25);
params_fname_B1_25 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_25_PARAMETERS.bin');
params_B1_25 = read_AIF_three_components_parameters(params_fname_B1_25);

stats_fname_B1_26 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_26_STATISTICS.bin');
stats_B1_26 = read_AIF_three_components_statistics(stats_fname_B1_26);
params_fname_B1_26 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_26_PARAMETERS.bin');
params_B1_26 = read_AIF_three_components_parameters(params_fname_B1_26);

stats_fname_B1_27 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_27_STATISTICS.bin');
stats_B1_27 = read_AIF_three_components_statistics(stats_fname_B1_27);
params_fname_B1_27 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_27_PARAMETERS.bin');
params_B1_27 = read_AIF_three_components_parameters(params_fname_B1_27);

stats_fname_B1_28 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_28_STATISTICS.bin');
stats_B1_28 = read_AIF_three_components_statistics(stats_fname_B1_28);
params_fname_B1_28 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_28_PARAMETERS.bin');
params_B1_28 = read_AIF_three_components_parameters(params_fname_B1_28);

stats_fname_B1_29 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_29_STATISTICS.bin');
stats_B1_29 = read_AIF_three_components_statistics(stats_fname_B1_29);
params_fname_B1_29 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_29_PARAMETERS.bin');
params_B1_29 = read_AIF_three_components_parameters(params_fname_B1_29);

stats_fname_B1_30 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_30_STATISTICS.bin');
stats_B1_30 = read_AIF_three_components_statistics(stats_fname_B1_30);
params_fname_B1_30 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_30_PARAMETERS.bin');
params_B1_30 = read_AIF_three_components_parameters(params_fname_B1_30);

stats_fname_B1_31 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_31_STATISTICS.bin');
stats_B1_31 = read_AIF_three_components_statistics(stats_fname_B1_31);
params_fname_B1_31 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_31_PARAMETERS.bin');
params_B1_31 = read_AIF_three_components_parameters(params_fname_B1_31);

stats_fname_B1_32 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_32_STATISTICS.bin');
stats_B1_32 = read_AIF_three_components_statistics(stats_fname_B1_32);
params_fname_B1_32 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B1_32_PARAMETERS.bin');
params_B1_32 = read_AIF_three_components_parameters(params_fname_B1_32);

%% check flux and covariance balance
% 2% threshold
FB_B1_1 = check_flux_balance_AIF_three_components(stats_B1_1, params_B1_1,...
    2/100);
% 5% threshold
CB_B1_1 = check_covariance_balance_AIF_three_components(stats_B1_1, params_B1_1,...
    5/100); 
inds_B1_1 = FB_B1_1 & CB_B1_1;

% 2% threshold
FB_B1_2 = check_flux_balance_AIF_three_components(stats_B1_2, params_B1_2,...
    2/100);
% 5% threshold
CB_B1_2 = check_covariance_balance_AIF_three_components(stats_B1_2, params_B1_2,...
    5/100); 
inds_B1_2 = FB_B1_2 & CB_B1_2;

% 2% threshold
FB_B1_3 = check_flux_balance_AIF_three_components(stats_B1_3, params_B1_3,...
    2/100);
% 5% threshold
CB_B1_3 = check_covariance_balance_AIF_three_components(stats_B1_3, params_B1_3,...
    5/100); 
inds_B1_3 = FB_B1_3 & CB_B1_3;

% 2% threshold
FB_B1_4 = check_flux_balance_AIF_three_components(stats_B1_4, params_B1_4,...
    2/100);
% 5% threshold
CB_B1_4 = check_covariance_balance_AIF_three_components(stats_B1_4, params_B1_4,...
    5/100); 
inds_B1_4 = FB_B1_4 & CB_B1_4;

% 2% threshold
FB_B1_5 = check_flux_balance_AIF_three_components(stats_B1_5, params_B1_5,...
    2/100);
% 5% threshold
CB_B1_5 = check_covariance_balance_AIF_three_components(stats_B1_5, params_B1_5,...
    5/100); 
inds_B1_5 = FB_B1_5 & CB_B1_5;

% 2% threshold
FB_B1_6 = check_flux_balance_AIF_three_components(stats_B1_6, params_B1_6,...
    2/100);
% 5% threshold
CB_B1_6 = check_covariance_balance_AIF_three_components(stats_B1_6, params_B1_6,...
    5/100); 
inds_B1_6 = FB_B1_6 & CB_B1_6;

% 2% threshold
FB_B1_7 = check_flux_balance_AIF_three_components(stats_B1_7, params_B1_7,...
    2/100);
% 5% threshold
CB_B1_7 = check_covariance_balance_AIF_three_components(stats_B1_7, params_B1_7,...
    5/100); 
inds_B1_7 = FB_B1_7 & CB_B1_7;

% 2% threshold
FB_B1_9 = check_flux_balance_AIF_three_components(stats_B1_9, params_B1_9,...
    2/100);
% 5% threshold
CB_B1_9 = check_covariance_balance_AIF_three_components(stats_B1_9, params_B1_9,...
    5/100); 
inds_B1_9 = FB_B1_9 & CB_B1_9;

% 2% threshold
FB_B1_10 = check_flux_balance_AIF_three_components(stats_B1_10, params_B1_10,...
    2/100);
% 5% threshold
CB_B1_10 = check_covariance_balance_AIF_three_components(stats_B1_10, params_B1_10,...
    5/100); 
inds_B1_10 = FB_B1_10 & CB_B1_10;

% 2% threshold
FB_B1_11 = check_flux_balance_AIF_three_components(stats_B1_11, params_B1_11,...
    2/100);
% 5% threshold
CB_B1_11 = check_covariance_balance_AIF_three_components(stats_B1_11, params_B1_11,...
    5/100); 
inds_B1_11 = FB_B1_11 & CB_B1_11;

% 2% threshold
FB_B1_12 = check_flux_balance_AIF_three_components(stats_B1_12, params_B1_12,...
    2/100);
% 5% threshold
CB_B1_12 = check_covariance_balance_AIF_three_components(stats_B1_12, params_B1_12,...
    5/100); 
inds_B1_12 = FB_B1_12 & CB_B1_12;

% 2% threshold
FB_B1_13 = check_flux_balance_AIF_three_components(stats_B1_13, params_B1_13,...
    2/100);
% 5% threshold
CB_B1_13 = check_covariance_balance_AIF_three_components(stats_B1_13, params_B1_13,...
    5/100); 
inds_B1_13 = FB_B1_13 & CB_B1_13;

% 2% threshold
FB_B1_14 = check_flux_balance_AIF_three_components(stats_B1_14, params_B1_14,...
    2/100);
% 5% threshold
CB_B1_14 = check_covariance_balance_AIF_three_components(stats_B1_14, params_B1_14,...
    5/100); 
inds_B1_14 = FB_B1_14 & CB_B1_14;

% 2% threshold
FB_B1_15 = check_flux_balance_AIF_three_components(stats_B1_15, params_B1_15,...
    2/100);
% 5% threshold
CB_B1_15 = check_covariance_balance_AIF_three_components(stats_B1_15, params_B1_15,...
    5/100); 
inds_B1_15 = FB_B1_15 & CB_B1_15;

% 2% threshold
FB_B1_16 = check_flux_balance_AIF_three_components(stats_B1_16, params_B1_16,...
    2/100);
% 5% threshold
CB_B1_16 = check_covariance_balance_AIF_three_components(stats_B1_16, params_B1_16,...
    5/100); 
inds_B1_16 = FB_B1_16 & CB_B1_16;

% 2% threshold
FB_B1_17 = check_flux_balance_AIF_three_components(stats_B1_17, params_B1_17,...
    2/100);
% 5% threshold
CB_B1_17 = check_covariance_balance_AIF_three_components(stats_B1_17, params_B1_17,...
    5/100); 
inds_B1_17 = FB_B1_17 & CB_B1_17;

% 2% threshold
FB_B1_18 = check_flux_balance_AIF_three_components(stats_B1_18, params_B1_18,...
    2/100);
% 5% threshold
CB_B1_18 = check_covariance_balance_AIF_three_components(stats_B1_18, params_B1_18,...
    5/100); 
inds_B1_18 = FB_B1_18 & CB_B1_18;

% 2% threshold
FB_B1_19 = check_flux_balance_AIF_three_components(stats_B1_19, params_B1_19,...
    2/100);
% 5% threshold
CB_B1_19 = check_covariance_balance_AIF_three_components(stats_B1_19, params_B1_19,...
    5/100); 
inds_B1_19 = FB_B1_19 & CB_B1_19;

% 2% threshold
FB_B1_20 = check_flux_balance_AIF_three_components(stats_B1_20, params_B1_20,...
    2/100);
% 5% threshold
CB_B1_20 = check_covariance_balance_AIF_three_components(stats_B1_20, params_B1_20,...
    5/100); 
inds_B1_20 = FB_B1_20 & CB_B1_20;

% 2% threshold
FB_B1_21 = check_flux_balance_AIF_three_components(stats_B1_21, params_B1_21,...
    2/100);
% 5% threshold
CB_B1_21 = check_covariance_balance_AIF_three_components(stats_B1_21, params_B1_21,...
    5/100); 
inds_B1_21 = FB_B1_21 & CB_B1_21;

% 2% threshold
FB_B1_22 = check_flux_balance_AIF_three_components(stats_B1_22, params_B1_22,...
    2/100);
% 5% threshold
CB_B1_22 = check_covariance_balance_AIF_three_components(stats_B1_22, params_B1_22,...
    5/100); 
inds_B1_22 = FB_B1_22 & CB_B1_22;

% 2% threshold
FB_B1_23 = check_flux_balance_AIF_three_components(stats_B1_23, params_B1_23,...
    2/100);
% 5% threshold
CB_B1_23 = check_covariance_balance_AIF_three_components(stats_B1_23, params_B1_23,...
    5/100); 
inds_B1_23 = FB_B1_23 & CB_B1_23;

% 2% threshold
FB_B1_24 = check_flux_balance_AIF_three_components(stats_B1_24, params_B1_24,...
    2/100);
% 5% threshold
CB_B1_24 = check_covariance_balance_AIF_three_components(stats_B1_24, params_B1_24,...
    5/100); 
inds_B1_24 = FB_B1_24 & CB_B1_24;

% 2% threshold
FB_B1_25 = check_flux_balance_AIF_three_components(stats_B1_25, params_B1_25,...
    2/100);
% 5% threshold
CB_B1_25 = check_covariance_balance_AIF_three_components(stats_B1_25, params_B1_25,...
    5/100); 
inds_B1_25 = FB_B1_25 & CB_B1_25;

% 2% threshold
FB_B1_26 = check_flux_balance_AIF_three_components(stats_B1_26, params_B1_26,...
    2/100);
% 5% threshold
CB_B1_26 = check_covariance_balance_AIF_three_components(stats_B1_26, params_B1_26,...
    5/100); 
inds_B1_26 = FB_B1_26 & CB_B1_26;

% 2% threshold
FB_B1_27 = check_flux_balance_AIF_three_components(stats_B1_27, params_B1_27,...
    2/100);
% 5% threshold
CB_B1_27 = check_covariance_balance_AIF_three_components(stats_B1_27, params_B1_27,...
    5/100); 
inds_B1_27 = FB_B1_27 & CB_B1_27;

% 2% threshold
FB_B1_28 = check_flux_balance_AIF_three_components(stats_B1_28, params_B1_28,...
    2/100);
% 5% threshold
CB_B1_28 = check_covariance_balance_AIF_three_components(stats_B1_28, params_B1_28,...
    5/100); 
inds_B1_28 = FB_B1_28 & CB_B1_28;

% 2% threshold
FB_B1_29 = check_flux_balance_AIF_three_components(stats_B1_29, params_B1_29,...
    2/100);
% 5% threshold
CB_B1_29 = check_covariance_balance_AIF_three_components(stats_B1_29, params_B1_29,...
    5/100); 
inds_B1_29 = FB_B1_29 & CB_B1_29;

% 2% threshold
FB_B1_30 = check_flux_balance_AIF_three_components(stats_B1_30, params_B1_30,...
    2/100);
% 5% threshold
CB_B1_30 = check_covariance_balance_AIF_three_components(stats_B1_30, params_B1_30,...
    5/100); 
inds_B1_30 = FB_B1_30 & CB_B1_30;

% 2% threshold
FB_B1_31 = check_flux_balance_AIF_three_components(stats_B1_31, params_B1_31,...
    2/100);
% 5% threshold
CB_B1_31 = check_covariance_balance_AIF_three_components(stats_B1_31, params_B1_31,...
    5/100); 
inds_B1_31 = FB_B1_31 & CB_B1_31;

% 2% threshold
FB_B1_32 = check_flux_balance_AIF_three_components(stats_B1_32, params_B1_32,...
    2/100);
% 5% threshold
CB_B1_32 = check_covariance_balance_AIF_three_components(stats_B1_32, params_B1_32,...
    5/100); 
inds_B1_32 = FB_B1_32 & CB_B1_32;
%% subset data based on flux and covariance balance tests 
fn = fieldnames(params_B1_1);
for j = 1:numel(fn)
    field_vals = params_B1_1.(fn{j});
    params_B1_1.(fn{j}) = field_vals(inds_B1_1);

    field_vals = params_B1_2.(fn{j});
    params_B1_2.(fn{j}) = field_vals(inds_B1_2);
    
    field_vals = params_B1_3.(fn{j});
    params_B1_3.(fn{j}) = field_vals(inds_B1_3);
    
    field_vals = params_B1_4.(fn{j});
    params_B1_4.(fn{j}) = field_vals(inds_B1_4);

	field_vals = params_B1_5.(fn{j});
	params_B1_5.(fn{j}) = field_vals(inds_B1_5);
    
    field_vals = params_B1_6.(fn{j});
	params_B1_6.(fn{j}) = field_vals(inds_B1_6);
    
	field_vals = params_B1_7.(fn{j});
	params_B1_7.(fn{j}) = field_vals(inds_B1_7);
    
	field_vals = params_B1_9.(fn{j});
	params_B1_9.(fn{j}) = field_vals(inds_B1_9);
    
	field_vals = params_B1_10.(fn{j});
	params_B1_10.(fn{j}) = field_vals(inds_B1_10);

    field_vals = params_B1_11.(fn{j});
    params_B1_11.(fn{j}) = field_vals(inds_B1_11);

    field_vals = params_B1_12.(fn{j});
    params_B1_12.(fn{j}) = field_vals(inds_B1_12);
    
    field_vals = params_B1_13.(fn{j});
    params_B1_13.(fn{j}) = field_vals(inds_B1_13);
    
    field_vals = params_B1_14.(fn{j});
    params_B1_14.(fn{j}) = field_vals(inds_B1_14);

	field_vals = params_B1_15.(fn{j});
	params_B1_15.(fn{j}) = field_vals(inds_B1_15);
    
    field_vals = params_B1_16.(fn{j});
	params_B1_16.(fn{j}) = field_vals(inds_B1_16);
    
	field_vals = params_B1_17.(fn{j});
	params_B1_17.(fn{j}) = field_vals(inds_B1_17);
    
	field_vals = params_B1_18.(fn{j});
	params_B1_18.(fn{j}) = field_vals(inds_B1_18);
    
	field_vals = params_B1_19.(fn{j});
	params_B1_19.(fn{j}) = field_vals(inds_B1_19);
    
    field_vals = params_B1_20.(fn{j});
    params_B1_20.(fn{j}) = field_vals(inds_B1_20);
    
    field_vals = params_B1_21.(fn{j});
    params_B1_21.(fn{j}) = field_vals(inds_B1_21);

    field_vals = params_B1_22.(fn{j});
    params_B1_22.(fn{j}) = field_vals(inds_B1_22);
    
    field_vals = params_B1_23.(fn{j});
    params_B1_23.(fn{j}) = field_vals(inds_B1_23);
    
    field_vals = params_B1_24.(fn{j});
    params_B1_24.(fn{j}) = field_vals(inds_B1_24);

	field_vals = params_B1_25.(fn{j});
	params_B1_25.(fn{j}) = field_vals(inds_B1_25);
    
    field_vals = params_B1_26.(fn{j});
	params_B1_26.(fn{j}) = field_vals(inds_B1_26);
    
	field_vals = params_B1_27.(fn{j});
	params_B1_27.(fn{j}) = field_vals(inds_B1_27);
    
	field_vals = params_B1_28.(fn{j});
	params_B1_28.(fn{j}) = field_vals(inds_B1_28);
    
	field_vals = params_B1_29.(fn{j});
	params_B1_29.(fn{j}) = field_vals(inds_B1_29);

    field_vals = params_B1_30.(fn{j});
    params_B1_30.(fn{j}) = field_vals(inds_B1_30);
    
    field_vals = params_B1_31.(fn{j});
    params_B1_31.(fn{j}) = field_vals(inds_B1_31);
    
    field_vals = params_B1_32.(fn{j});
    params_B1_32.(fn{j}) = field_vals(inds_B1_32);
end
fn = fieldnames(stats_B1_1);
for j = 1:numel(fn)
    field_vals = stats_B1_1.(fn{j});
    stats_B1_1.(fn{j}) = field_vals(inds_B1_1);

    field_vals = stats_B1_2.(fn{j});
    stats_B1_2.(fn{j}) = field_vals(inds_B1_2);
    
    field_vals = stats_B1_3.(fn{j});
    stats_B1_3.(fn{j}) = field_vals(inds_B1_3);
    
    field_vals = stats_B1_4.(fn{j});
    stats_B1_4.(fn{j}) = field_vals(inds_B1_4);

	field_vals = stats_B1_5.(fn{j});
	stats_B1_5.(fn{j}) = field_vals(inds_B1_5);
    
    field_vals = stats_B1_6.(fn{j});
	stats_B1_6.(fn{j}) = field_vals(inds_B1_6);
    
	field_vals = stats_B1_7.(fn{j});
	stats_B1_7.(fn{j}) = field_vals(inds_B1_7);
    
	field_vals = stats_B1_9.(fn{j});
	stats_B1_9.(fn{j}) = field_vals(inds_B1_9);
    
	field_vals = stats_B1_10.(fn{j});
	stats_B1_10.(fn{j}) = field_vals(inds_B1_10);

    field_vals = stats_B1_11.(fn{j});
    stats_B1_11.(fn{j}) = field_vals(inds_B1_11);

    field_vals = stats_B1_12.(fn{j});
    stats_B1_12.(fn{j}) = field_vals(inds_B1_12);
    
    field_vals = stats_B1_13.(fn{j});
    stats_B1_13.(fn{j}) = field_vals(inds_B1_13);
    
    field_vals = stats_B1_14.(fn{j});
    stats_B1_14.(fn{j}) = field_vals(inds_B1_14);

	field_vals = stats_B1_15.(fn{j});
	stats_B1_15.(fn{j}) = field_vals(inds_B1_15);
    
    field_vals = stats_B1_16.(fn{j});
	stats_B1_16.(fn{j}) = field_vals(inds_B1_16);
    
	field_vals = stats_B1_17.(fn{j});
	stats_B1_17.(fn{j}) = field_vals(inds_B1_17);
    
	field_vals = stats_B1_18.(fn{j});
	stats_B1_18.(fn{j}) = field_vals(inds_B1_18);
    
	field_vals = stats_B1_19.(fn{j});
	stats_B1_19.(fn{j}) = field_vals(inds_B1_19);
    
    field_vals = stats_B1_20.(fn{j});
    stats_B1_20.(fn{j}) = field_vals(inds_B1_20);
    
    field_vals = stats_B1_21.(fn{j});
    stats_B1_21.(fn{j}) = field_vals(inds_B1_21);

    field_vals = stats_B1_22.(fn{j});
    stats_B1_22.(fn{j}) = field_vals(inds_B1_22);
    
    field_vals = stats_B1_23.(fn{j});
    stats_B1_23.(fn{j}) = field_vals(inds_B1_23);
    
    field_vals = stats_B1_24.(fn{j});
    stats_B1_24.(fn{j}) = field_vals(inds_B1_24);

	field_vals = stats_B1_25.(fn{j});
	stats_B1_25.(fn{j}) = field_vals(inds_B1_25);
    
    field_vals = stats_B1_26.(fn{j});
	stats_B1_26.(fn{j}) = field_vals(inds_B1_26);
    
	field_vals = stats_B1_27.(fn{j});
	stats_B1_27.(fn{j}) = field_vals(inds_B1_27);
    
	field_vals = stats_B1_28.(fn{j});
	stats_B1_28.(fn{j}) = field_vals(inds_B1_28);
    
	field_vals = stats_B1_29.(fn{j});
	stats_B1_29.(fn{j}) = field_vals(inds_B1_29);

    field_vals = stats_B1_30.(fn{j});
    stats_B1_30.(fn{j}) = field_vals(inds_B1_30);
    
    field_vals = stats_B1_31.(fn{j});
    stats_B1_31.(fn{j}) = field_vals(inds_B1_31);
    
    field_vals = stats_B1_32.(fn{j});
    stats_B1_32.(fn{j}) = field_vals(inds_B1_32);
end

%% Calculate numerical sensitivity coefficient and corresponding CV
[S_B1_1, ExApprox_B1_1, EyApprox_B1_1, zAvgApprox_B1_1, zVarApprox_B1_1,...
    paramsa_B1_1, statsa_B1_1] ...
    = ProcessSensitivityData(stats_B1_1, params_B1_1);

[S_B1_2, ExApprox_B1_2, EyApprox_B1_2, zAvgApprox_B1_2, zVarApprox_B1_2,...
    paramsa_B1_2, statsa_B1_2] ...
    = ProcessSensitivityData(stats_B1_2, params_B1_2);

[S_B1_3, ExApprox_B1_3, EyApprox_B1_3, zAvgApprox_B1_3, zVarApprox_B1_3,...
    paramsa_B1_3, statsa_B1_3] ...
    = ProcessSensitivityData(stats_B1_3, params_B1_3);

[S_B1_4, ExApprox_B1_4, EyApprox_B1_4, zAvgApprox_B1_4, zVarApprox_B1_4,...
    paramsa_B1_4, statsa_B1_4] ...
    = ProcessSensitivityData(stats_B1_4, params_B1_4);

[S_B1_5, ExApprox_B1_5, EyApprox_B1_5, zAvgApprox_B1_5, zVarApprox_B1_5,...
    paramsa_B1_5, statsa_B1_5] ...
    = ProcessSensitivityData(stats_B1_5, params_B1_5);

[S_B1_6, ExApprox_B1_6, EyApprox_B1_6, zAvgApprox_B1_6, zVarApprox_B1_6,...
    paramsa_B1_6, statsa_B1_6] ...
    = ProcessSensitivityData(stats_B1_6, params_B1_6);

[S_B1_7, ExApprox_B1_7, EyApprox_B1_7, zAvgApprox_B1_7, zVarApprox_B1_7,...
    paramsa_B1_7, statsa_B1_7] ...
    = ProcessSensitivityData(stats_B1_7, params_B1_7);
	
[S_B1_9, ExApprox_B1_9, EyApprox_B1_9, zAvgApprox_B1_9, zVarApprox_B1_9,...
    paramsa_B1_9, statsa_B1_9] ...
    = ProcessSensitivityData(stats_B1_9, params_B1_9);

[S_B1_10, ExApprox_B1_10, EyApprox_B1_10, zAvgApprox_B1_10, ...
    zVarApprox_B1_10, paramsa_B1_10, statsa_B1_10] ...
    = ProcessSensitivityData(stats_B1_10, params_B1_10);

[S_B1_11, ExApprox_B1_11, EyApprox_B1_11, zAvgApprox_B1_11, ...
    zVarApprox_B1_11, paramsa_B1_11, statsa_B1_11] ...
    = ProcessSensitivityData(stats_B1_11, params_B1_11);

[S_B1_12, ExApprox_B1_12, EyApprox_B1_12, zAvgApprox_B1_12, ...
    zVarApprox_B1_12, paramsa_B1_12, statsa_B1_12] ...
    = ProcessSensitivityData(stats_B1_12, params_B1_12);

[S_B1_13, ExApprox_B1_13, EyApprox_B1_13, zAvgApprox_B1_13, ...
    zVarApprox_B1_13, paramsa_B1_13, statsa_B1_13] ...
    = ProcessSensitivityData(stats_B1_13, params_B1_13);

[S_B1_14, ExApprox_B1_14, EyApprox_B1_14, zAvgApprox_B1_14, ...
    zVarApprox_B1_14, paramsa_B1_14, statsa_B1_14] ...
    = ProcessSensitivityData(stats_B1_14, params_B1_14);

[S_B1_15, ExApprox_B1_15, EyApprox_B1_15, zAvgApprox_B1_15, ...
    zVarApprox_B1_15, paramsa_B1_15, statsa_B1_15] ...
    = ProcessSensitivityData(stats_B1_15, params_B1_15);

[S_B1_16, ExApprox_B1_16, EyApprox_B1_16, zAvgApprox_B1_16, ...
    zVarApprox_B1_16, paramsa_B1_16, statsa_B1_16] ...
    = ProcessSensitivityData(stats_B1_16, params_B1_16);

[S_B1_17, ExApprox_B1_17, EyApprox_B1_17, zAvgApprox_B1_17, ...
    zVarApprox_B1_17, paramsa_B1_17, statsa_B1_17] ...
    = ProcessSensitivityData(stats_B1_17, params_B1_17);

[S_B1_18, ExApprox_B1_18, EyApprox_B1_18, zAvgApprox_B1_18, ...
    zVarApprox_B1_18, paramsa_B1_18, statsa_B1_18] ...
    = ProcessSensitivityData(stats_B1_18, params_B1_18);

[S_B1_19, ExApprox_B1_19, EyApprox_B1_19, zAvgApprox_B1_19, ...
    zVarApprox_B1_19, paramsa_B1_19, statsa_B1_19] ...
    = ProcessSensitivityData(stats_B1_19, params_B1_19);

[S_B1_20, ExApprox_B1_20, EyApprox_B1_20, zAvgApprox_B1_20, ...
    zVarApprox_B1_20, paramsa_B1_20, statsa_B1_20] ...
    = ProcessSensitivityData(stats_B1_20, params_B1_20);

[S_B1_21, ExApprox_B1_21, EyApprox_B1_21, zAvgApprox_B1_21, ...
    zVarApprox_B1_21, paramsa_B1_21, statsa_B1_21] ...
    = ProcessSensitivityData(stats_B1_21, params_B1_21);

[S_B1_22, ExApprox_B1_22, EyApprox_B1_22, zAvgApprox_B1_22, ...
    zVarApprox_B1_22, paramsa_B1_22, statsa_B1_22] ...
    = ProcessSensitivityData(stats_B1_22, params_B1_22);

[S_B1_23, ExApprox_B1_23, EyApprox_B1_23, zAvgApprox_B1_23, ...
    zVarApprox_B1_23, paramsa_B1_23, statsa_B1_23] ...
    = ProcessSensitivityData(stats_B1_23, params_B1_23);

[S_B1_24, ExApprox_B1_24, EyApprox_B1_24, zAvgApprox_B1_24, ...
    zVarApprox_B1_24, paramsa_B1_24, statsa_B1_24] ...
    = ProcessSensitivityData(stats_B1_24, params_B1_24);

[S_B1_25, ExApprox_B1_25, EyApprox_B1_25, zAvgApprox_B1_25, ...
    zVarApprox_B1_25, paramsa_B1_25, statsa_B1_25] ...
    = ProcessSensitivityData(stats_B1_25, params_B1_25);

[S_B1_26, ExApprox_B1_26, EyApprox_B1_26, zAvgApprox_B1_26, ...
    zVarApprox_B1_26, paramsa_B1_26, statsa_B1_26] ...
    = ProcessSensitivityData(stats_B1_26, params_B1_26);

[S_B1_27, ExApprox_B1_27, EyApprox_B1_27, zAvgApprox_B1_27, ...
    zVarApprox_B1_27, paramsa_B1_27, statsa_B1_27] ...
    = ProcessSensitivityData(stats_B1_27, params_B1_27);

[S_B1_28, ExApprox_B1_28, EyApprox_B1_28, zAvgApprox_B1_28, ...
    zVarApprox_B1_28, paramsa_B1_28, statsa_B1_28] ...
    = ProcessSensitivityData(stats_B1_28, params_B1_28);

[S_B1_29, ExApprox_B1_29, EyApprox_B1_29, zAvgApprox_B1_29, ...
    zVarApprox_B1_29, paramsa_B1_29, statsa_B1_29] ...
    = ProcessSensitivityData(stats_B1_29, params_B1_29);

[S_B1_30, ExApprox_B1_30, EyApprox_B1_30, zAvgApprox_B1_30, ...
    zVarApprox_B1_30, paramsa_B1_30, statsa_B1_30] ...
    = ProcessSensitivityData(stats_B1_30, params_B1_30);

[S_B1_31, ExApprox_B1_31, EyApprox_B1_31, zAvgApprox_B1_31, ...
    zVarApprox_B1_31, paramsa_B1_31, statsa_B1_31] ...
    = ProcessSensitivityData(stats_B1_31, params_B1_31);

[S_B1_32, ExApprox_B1_32, EyApprox_B1_32, zAvgApprox_B1_32, ...
    zVarApprox_B1_32, paramsa_B1_32, statsa_B1_32] ...
    = ProcessSensitivityData(stats_B1_32, params_B1_32);

%% import additional data 
stats_fname_B2_1 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_1_STATISTICS.bin');
stats_B2_1 = read_AIF_three_components_statistics(stats_fname_B2_1);
params_fname_B2_1 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_1_PARAMETERS.bin');
params_B2_1 = read_AIF_three_components_parameters(params_fname_B2_1);

stats_fname_B2_2 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_2_STATISTICS.bin');
stats_B2_2 = read_AIF_three_components_statistics(stats_fname_B2_2);
params_fname_B2_2 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_2_PARAMETERS.bin');
params_B2_2 = read_AIF_three_components_parameters(params_fname_B2_2);

stats_fname_B2_3 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_3_STATISTICS.bin');
stats_B2_3 = read_AIF_three_components_statistics(stats_fname_B2_3);
params_fname_B2_3 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_3_PARAMETERS.bin');
params_B2_3 = read_AIF_three_components_parameters(params_fname_B2_3);

stats_fname_B2_4 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_4_STATISTICS.bin');
stats_B2_4 = read_AIF_three_components_statistics(stats_fname_B2_4);
params_fname_B2_4 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_4_PARAMETERS.bin');
params_B2_4 = read_AIF_three_components_parameters(params_fname_B2_4);

stats_fname_B2_5 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_5_STATISTICS.bin');
stats_B2_5 = read_AIF_three_components_statistics(stats_fname_B2_5);
params_fname_B2_5 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_5_PARAMETERS.bin');
params_B2_5 = read_AIF_three_components_parameters(params_fname_B2_5);

stats_fname_B2_6 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_6_STATISTICS.bin');
stats_B2_6 = read_AIF_three_components_statistics(stats_fname_B2_6);
params_fname_B2_6 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_6_PARAMETERS.bin');
params_B2_6 = read_AIF_three_components_parameters(params_fname_B2_6);

stats_fname_B2_7 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_7_STATISTICS.bin');
stats_B2_7 = read_AIF_three_components_statistics(stats_fname_B2_7);
params_fname_B2_7 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_7_PARAMETERS.bin');
params_B2_7 = read_AIF_three_components_parameters(params_fname_B2_7);

stats_fname_B2_8 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_8_STATISTICS.bin');
stats_B2_8 = read_AIF_three_components_statistics(stats_fname_B2_8);
params_fname_B2_8 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_8_PARAMETERS.bin');
params_B2_8 = read_AIF_three_components_parameters(params_fname_B2_8);

stats_fname_B2_9 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_9_STATISTICS.bin');
stats_B2_9 = read_AIF_three_components_statistics(stats_fname_B2_9);
params_fname_B2_9 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_9_PARAMETERS.bin');
params_B2_9 = read_AIF_three_components_parameters(params_fname_B2_9);

stats_fname_B2_10 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_10_STATISTICS.bin');
stats_B2_10 = read_AIF_three_components_statistics(stats_fname_B2_10);
params_fname_B2_10 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_10_PARAMETERS.bin');
params_B2_10 = read_AIF_three_components_parameters(params_fname_B2_10);

stats_fname_B2_11 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_11_STATISTICS.bin');
stats_B2_11 = read_AIF_three_components_statistics(stats_fname_B2_11);
params_fname_B2_11 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_11_PARAMETERS.bin');
params_B2_11 = read_AIF_three_components_parameters(params_fname_B2_11);

stats_fname_B2_12 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_12_STATISTICS.bin');
stats_B2_12 = read_AIF_three_components_statistics(stats_fname_B2_12);
params_fname_B2_12 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_12_PARAMETERS.bin');
params_B2_12 = read_AIF_three_components_parameters(params_fname_B2_12);

stats_fname_B2_13 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_13_STATISTICS.bin');
stats_B2_13 = read_AIF_three_components_statistics(stats_fname_B2_13);
params_fname_B2_13 = strcat(data_path, ...
'Reference_Actuated_System_with_Dilution_B2_13_PARAMETERS.bin');
params_B2_13 = read_AIF_three_components_parameters(params_fname_B2_13);

stats_fname_B2_14 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_14_STATISTICS.bin');
stats_B2_14 = read_AIF_three_components_statistics(stats_fname_B2_14);
params_fname_B2_14 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_14_PARAMETERS.bin');
params_B2_14 = read_AIF_three_components_parameters(params_fname_B2_14);

stats_fname_B2_15 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_15_STATISTICS.bin');
stats_B2_15 = read_AIF_three_components_statistics(stats_fname_B2_15);
params_fname_B2_15 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_15_PARAMETERS.bin');
params_B2_15 = read_AIF_three_components_parameters(params_fname_B2_15);

stats_fname_B2_16 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_16_STATISTICS.bin');
stats_B2_16 = read_AIF_three_components_statistics(stats_fname_B2_16);
params_fname_B2_16 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_16_PARAMETERS.bin');
params_B2_16 = read_AIF_three_components_parameters(params_fname_B2_16);

stats_fname_B2_17 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_17_STATISTICS.bin');
stats_B2_17 = read_AIF_three_components_statistics(stats_fname_B2_17);
params_fname_B2_17 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_17_PARAMETERS.bin');
params_B2_17 = read_AIF_three_components_parameters(params_fname_B2_17);

stats_fname_B2_18 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_18_STATISTICS.bin');
stats_B2_18 = read_AIF_three_components_statistics(stats_fname_B2_18);
params_fname_B2_18 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_18_PARAMETERS.bin');
params_B2_18 = read_AIF_three_components_parameters(params_fname_B2_18);

stats_fname_B2_19 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_19_STATISTICS.bin');
stats_B2_19 = read_AIF_three_components_statistics(stats_fname_B2_19);
params_fname_B2_19 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_19_PARAMETERS.bin');
params_B2_19 = read_AIF_three_components_parameters(params_fname_B2_19);

stats_fname_B2_20 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_20_STATISTICS.bin');
stats_B2_20 = read_AIF_three_components_statistics(stats_fname_B2_20);
params_fname_B2_20 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_20_PARAMETERS.bin');
params_B2_20 = read_AIF_three_components_parameters(params_fname_B2_20);

stats_fname_B2_21 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_21_STATISTICS.bin');
stats_B2_21 = read_AIF_three_components_statistics(stats_fname_B2_21);
params_fname_B2_21 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_21_PARAMETERS.bin');
params_B2_21 = read_AIF_three_components_parameters(params_fname_B2_21);

stats_fname_B2_22 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_22_STATISTICS.bin');
stats_B2_22 = read_AIF_three_components_statistics(stats_fname_B2_22);
params_fname_B2_22 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_22_PARAMETERS.bin');
params_B2_22 = read_AIF_three_components_parameters(params_fname_B2_22);

stats_fname_B2_23 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_23_STATISTICS.bin');
stats_B2_23 = read_AIF_three_components_statistics(stats_fname_B2_23);
params_fname_B2_23 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_23_PARAMETERS.bin');
params_B2_23 = read_AIF_three_components_parameters(params_fname_B2_23);

stats_fname_B2_24 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_24_STATISTICS.bin');
stats_B2_24 = read_AIF_three_components_statistics(stats_fname_B2_24);
params_fname_B2_24 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_24_PARAMETERS.bin');
params_B2_24 = read_AIF_three_components_parameters(params_fname_B2_24);

stats_fname_B2_25 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_25_STATISTICS.bin');
stats_B2_25 = read_AIF_three_components_statistics(stats_fname_B2_25);
params_fname_B2_25 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_25_PARAMETERS.bin');
params_B2_25 = read_AIF_three_components_parameters(params_fname_B2_25);

stats_fname_B2_26 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_26_STATISTICS.bin');
stats_B2_26 = read_AIF_three_components_statistics(stats_fname_B2_26);
params_fname_B2_26 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_26_PARAMETERS.bin');
params_B2_26 = read_AIF_three_components_parameters(params_fname_B2_26);

stats_fname_B2_27 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_27_STATISTICS.bin');
stats_B2_27 = read_AIF_three_components_statistics(stats_fname_B2_27);
params_fname_B2_27 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_27_PARAMETERS.bin');
params_B2_27 = read_AIF_three_components_parameters(params_fname_B2_27);

stats_fname_B2_28 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_28_STATISTICS.bin');
stats_B2_28 = read_AIF_three_components_statistics(stats_fname_B2_28);
params_fname_B2_28 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_28_PARAMETERS.bin');
params_B2_28 = read_AIF_three_components_parameters(params_fname_B2_28);

stats_fname_B2_29 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_29_STATISTICS.bin');
stats_B2_29 = read_AIF_three_components_statistics(stats_fname_B2_29);
params_fname_B2_29 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B2_29_PARAMETERS.bin');
params_B2_29 = read_AIF_three_components_parameters(params_fname_B2_29);

%% check flux and covariance balance

% 2% threshold
FB_B2_1 = check_flux_balance_AIF_three_components(stats_B2_1, params_B2_1,...
    2/100);
% 5% threshold
CB_B2_1 = check_covariance_balance_AIF_three_components(stats_B2_1,...
    params_B2_1, 5/100); 
inds_B2_1 = FB_B2_1 & CB_B2_1;
fprintf(strcat(num2str(sum(inds_B2_1)/numel(params_B2_1.theta)),'\n'))

% 2% threshold
FB_B2_2 = check_flux_balance_AIF_three_components(stats_B2_2,...
    params_B2_2, 2/100);
% 5% threshold
CB_B2_2 = check_covariance_balance_AIF_three_components(stats_B2_2,...
    params_B2_2, 5/100); 
inds_B2_2 = FB_B2_2 & CB_B2_2;
fprintf(strcat(num2str(sum(inds_B2_2)/numel(params_B2_2.theta)),'\n'))

% 2% threshold
FB_B2_3 = check_flux_balance_AIF_three_components(stats_B2_3,...
    params_B2_3, 2/100);
% 5% threshold
CB_B2_3 = check_covariance_balance_AIF_three_components(stats_B2_3,...
    params_B2_3, 5/100); 
inds_B2_3 = FB_B2_3 & CB_B2_3;
fprintf(strcat(num2str(sum(inds_B2_3)/numel(params_B2_3.theta)),'\n'))

% 2% threshold
FB_B2_4 = check_flux_balance_AIF_three_components(stats_B2_4,...
    params_B2_4, 2/100);
% 5% threshold
CB_B2_4 = check_covariance_balance_AIF_three_components(stats_B2_4,...
    params_B2_4, 5/100); 
inds_B2_4 = FB_B2_4 & CB_B2_4;
fprintf(strcat(num2str(sum(inds_B2_4)/numel(params_B2_4.theta)),'\n'))

% 2% threshold
FB_B2_5 = check_flux_balance_AIF_three_components(stats_B2_5, params_B2_5,...
    2/100);
% 5% threshold
CB_B2_5 = check_covariance_balance_AIF_three_components(stats_B2_5,...
    params_B2_5, 5/100); 
inds_B2_5 = FB_B2_5 & CB_B2_5;
fprintf(strcat(num2str(sum(inds_B2_5)/numel(params_B2_5.theta)),'\n'))

% 2% threshold
FB_B2_6 = check_flux_balance_AIF_three_components(stats_B2_6, params_B2_6,...
    2/100);
% 5% threshold
CB_B2_6 = check_covariance_balance_AIF_three_components(stats_B2_6,...
    params_B2_6, 5/100); 
inds_B2_6 = FB_B2_6 & CB_B2_6;
fprintf(strcat(num2str(sum(inds_B2_6)/numel(params_B2_6.theta)),'\n'))

% 2% threshold
FB_B2_7 = check_flux_balance_AIF_three_components(stats_B2_7, params_B2_7,...
    2/100);
% 5% threshold
CB_B2_7 = check_covariance_balance_AIF_three_components(stats_B2_7,...
    params_B2_7, 5/100); 
inds_B2_7 = FB_B2_7 & CB_B2_7;
fprintf(strcat(num2str(sum(inds_B2_7)/numel(params_B2_7.theta)),'\n'))

% 2% threshold
FB_B2_8 = check_flux_balance_AIF_three_components(stats_B2_8, params_B2_8,...
    2/100);
% 5% threshold
CB_B2_8 = check_covariance_balance_AIF_three_components(stats_B2_8,...
    params_B2_8, 5/100); 
inds_B2_8 = FB_B2_8 & CB_B2_8;
fprintf(strcat(num2str(sum(inds_B2_8)/numel(params_B2_8.theta)),'\n'))

% 2% threshold
FB_B2_9 = check_flux_balance_AIF_three_components(stats_B2_9, params_B2_9,...
    2/100);
% 5% threshold
CB_B2_9 = check_covariance_balance_AIF_three_components(stats_B2_9,...
    params_B2_9, 5/100); 
inds_B2_9 = FB_B2_9 & CB_B2_9;
fprintf(strcat(num2str(sum(inds_B2_9)/numel(params_B2_9.theta)),'\n'))

% 2% threshold
FB_B2_10 = check_flux_balance_AIF_three_components(stats_B2_10,...
    params_B2_10, 2/100);
% 5% threshold
CB_B2_10 = check_covariance_balance_AIF_three_components(stats_B2_10,...
    params_B2_10, 5/100); 
inds_B2_10 = FB_B2_10 & CB_B2_10;
fprintf(strcat(num2str(sum(inds_B2_10)/numel(params_B2_10.theta)),'\n'))

% 2% threshold
FB_B2_11 = check_flux_balance_AIF_three_components(stats_B2_11,...
    params_B2_11, 2/100);
% 5% threshold
CB_B2_11 = check_covariance_balance_AIF_three_components(stats_B2_11,...
    params_B2_11, 5/100); 
inds_B2_11 = FB_B2_11 & CB_B2_11;
fprintf(strcat(num2str(sum(inds_B2_11)/numel(params_B2_11.theta)),'\n'))

% 2% threshold
FB_B2_12 = check_flux_balance_AIF_three_components(stats_B2_12,...
    params_B2_12, 2/100);
% 5% threshold
CB_B2_12 = check_covariance_balance_AIF_three_components(stats_B2_12,...
    params_B2_12, 5/100); 
inds_B2_12 = FB_B2_12 & CB_B2_12;
fprintf(strcat(num2str(sum(inds_B2_12)/numel(params_B2_12.theta)),'\n'))

% 2% threshold
FB_B2_13 = check_flux_balance_AIF_three_components(stats_B2_13,...
    params_B2_13, 2/100);
% 5% threshold
CB_B2_13 = check_covariance_balance_AIF_three_components(stats_B2_13,...
    params_B2_13, 5/100); 
inds_B2_13 = FB_B2_13 & CB_B2_13;
fprintf(strcat(num2str(sum(inds_B2_13)/numel(params_B2_13.theta)),'\n'))

% 2% threshold
FB_B2_14 = check_flux_balance_AIF_three_components(stats_B2_14,...
    params_B2_14, 2/100);
% 5% threshold
CB_B2_14 = check_covariance_balance_AIF_three_components(stats_B2_14,...
    params_B2_14, 5/100); 
inds_B2_14 = FB_B2_14 & CB_B2_14;
fprintf(strcat(num2str(sum(inds_B2_14)/numel(params_B2_14.theta)),'\n'))

% 2% threshold
FB_B2_15 = check_flux_balance_AIF_three_components(stats_B2_15,...
    params_B2_15, 2/100);
% 5% threshold
CB_B2_15 = check_covariance_balance_AIF_three_components(stats_B2_15,...
    params_B2_15, 5/100); 
inds_B2_15 = FB_B2_15 & CB_B2_15;
fprintf(strcat(num2str(sum(inds_B2_15)/numel(params_B2_15.theta)),'\n'))

% 2% threshold
FB_B2_16 = check_flux_balance_AIF_three_components(stats_B2_16,...
    params_B2_16, 2/100);
% 5% threshold
CB_B2_16 = check_covariance_balance_AIF_three_components(stats_B2_16,...
    params_B2_16, 5/100); 
inds_B2_16 = FB_B2_16 & CB_B2_16;
fprintf(strcat(num2str(sum(inds_B2_16)/numel(params_B2_16.theta)),'\n'))

% 2% threshold
FB_B2_17 = check_flux_balance_AIF_three_components(stats_B2_17,...
    params_B2_17, 2/100);
% 5% threshold
CB_B2_17 = check_covariance_balance_AIF_three_components(stats_B2_17,...
    params_B2_17, 5/100); 
inds_B2_17 = FB_B2_17 & CB_B2_17;
fprintf(strcat(num2str(sum(inds_B2_17)/numel(params_B2_17.theta)),'\n'))

% 2% threshold
FB_B2_18 = check_flux_balance_AIF_three_components(stats_B2_18,...
    params_B2_18, 2/100);
% 5% threshold
CB_B2_18 = check_covariance_balance_AIF_three_components(stats_B2_18,...
    params_B2_18, 5/100); 
inds_B2_18 = FB_B2_18 & CB_B2_18;
fprintf(strcat(num2str(sum(inds_B2_18)/numel(params_B2_18.theta)),'\n'))

% 2% threshold
FB_B2_19 = check_flux_balance_AIF_three_components(stats_B2_19,...
    params_B2_19, 2/100);
% 5% threshold
CB_B2_19 = check_covariance_balance_AIF_three_components(stats_B2_19,...
    params_B2_19, 5/100); 
inds_B2_19 = FB_B2_19 & CB_B2_19;
fprintf(strcat(num2str(sum(inds_B2_19)/numel(params_B2_19.theta)),'\n'))

% 2% threshold
FB_B2_20 = check_flux_balance_AIF_three_components(stats_B2_20,...
    params_B2_20, 2/100);
% 5% threshold
CB_B2_20 = check_covariance_balance_AIF_three_components(stats_B2_20,...
    params_B2_20, 5/100); 
inds_B2_20 = FB_B2_20 & CB_B2_20;
fprintf(strcat(num2str(sum(inds_B2_20)/numel(params_B2_20.theta)),'\n'))

% 2% threshold
FB_B2_21 = check_flux_balance_AIF_three_components(stats_B2_21,...
    params_B2_21, 2/100);
% 5% threshold
CB_B2_21 = check_covariance_balance_AIF_three_components(stats_B2_21,...
    params_B2_21, 5/100); 
inds_B2_21 = FB_B2_21 & CB_B2_21;
fprintf(strcat(num2str(sum(inds_B2_21)/numel(params_B2_21.theta)),'\n'))

% 2% threshold
FB_B2_22 = check_flux_balance_AIF_three_components(stats_B2_22,...
    params_B2_22, 2/100);
% 5% threshold
CB_B2_22 = check_covariance_balance_AIF_three_components(stats_B2_22,...
    params_B2_22, 5/100); 
inds_B2_22 = FB_B2_22 & CB_B2_22;
fprintf(strcat(num2str(sum(inds_B2_22)/numel(params_B2_22.theta)),'\n'))

% 2% threshold
FB_B2_23 = check_flux_balance_AIF_three_components(stats_B2_23,...
    params_B2_23, 2/100);
% 5% threshold
CB_B2_23 = check_covariance_balance_AIF_three_components(stats_B2_23,...
    params_B2_23, 5/100); 
inds_B2_23 = FB_B2_23 & CB_B2_23;
fprintf(strcat(num2str(sum(inds_B2_23)/numel(params_B2_23.theta)),'\n'))

% 2% threshold
FB_B2_24 = check_flux_balance_AIF_three_components(stats_B2_24,...
    params_B2_24, 2/100);
% 5% threshold
CB_B2_24 = check_covariance_balance_AIF_three_components(stats_B2_24,...
    params_B2_24, 5/100); 
inds_B2_24 = FB_B2_24 & CB_B2_24;
fprintf(strcat(num2str(sum(inds_B2_24)/numel(params_B2_24.theta)),'\n'))

% 2% threshold
FB_B2_25 = check_flux_balance_AIF_three_components(stats_B2_25,...
    params_B2_25, 2/100);
% 5% threshold
CB_B2_25 = check_covariance_balance_AIF_three_components(stats_B2_25,...
    params_B2_25, 5/100); 
inds_B2_25 = FB_B2_25 & CB_B2_25;
fprintf(strcat(num2str(sum(inds_B2_25)/numel(params_B2_25.theta)),'\n'))

% 2% threshold
FB_B2_26 = check_flux_balance_AIF_three_components(stats_B2_26,...
    params_B2_26, 2/100);
% 5% threshold
CB_B2_26 = check_covariance_balance_AIF_three_components(stats_B2_26,...
    params_B2_26, 5/100); 
inds_B2_26 = FB_B2_26 & CB_B2_26;
fprintf(strcat(num2str(sum(inds_B2_26)/numel(params_B2_26.theta)),'\n'))

% 2% threshold
FB_B2_27 = check_flux_balance_AIF_three_components(stats_B2_27,...
    params_B2_27, 2/100);
% 5% threshold
CB_B2_27 = check_covariance_balance_AIF_three_components(stats_B2_27,...
    params_B2_27, 5/100); 
inds_B2_27 = FB_B2_27 & CB_B2_27;
fprintf(strcat(num2str(sum(inds_B2_27)/numel(params_B2_27.theta)),'\n'))

% 2% threshold
FB_B2_28 = check_flux_balance_AIF_three_components(stats_B2_28,...
    params_B2_28, 2/100);
% 5% threshold
CB_B2_28 = check_covariance_balance_AIF_three_components(stats_B2_28,...
    params_B2_28, 5/100); 
inds_B2_28 = FB_B2_28 & CB_B2_28;
fprintf(strcat(num2str(sum(inds_B2_28)/numel(params_B2_28.theta)),'\n'))

% 2% threshold
FB_B2_29 = check_flux_balance_AIF_three_components(stats_B2_29,...
    params_B2_29, 2/100);
% 5% threshold
CB_B2_29 = check_covariance_balance_AIF_three_components(stats_B2_29,...
    params_B2_29, 5/100); 
inds_B2_29 = FB_B2_29 & CB_B2_29;
fprintf(strcat(num2str(sum(inds_B2_29)/numel(params_B2_29.theta)),'\n'))

%% subset data based on flux and covariance balance tests 
fn = fieldnames(params_B2_1);
for j = 1:numel(fn)
    field_vals = params_B2_1.(fn{j});
    params_B2_1.(fn{j}) = field_vals(inds_B2_1);
    
    field_vals = params_B2_2.(fn{j});
    params_B2_2.(fn{j}) = field_vals(inds_B2_2);
    
    field_vals = params_B2_3.(fn{j});
    params_B2_3.(fn{j}) = field_vals(inds_B2_3);
    
    field_vals = params_B2_4.(fn{j});
    params_B2_4.(fn{j}) = field_vals(inds_B2_4);
    
    field_vals = params_B2_5.(fn{j});
    params_B2_5.(fn{j}) = field_vals(inds_B2_5);
    
    field_vals = params_B2_6.(fn{j});
    params_B2_6.(fn{j}) = field_vals(inds_B2_6);
    
    field_vals = params_B2_7.(fn{j});
    params_B2_7.(fn{j}) = field_vals(inds_B2_7);
    
    field_vals = params_B2_8.(fn{j});
    params_B2_8.(fn{j}) = field_vals(inds_B2_8);
    
    field_vals = params_B2_9.(fn{j});
    params_B2_9.(fn{j}) = field_vals(inds_B2_9);
    
    field_vals = params_B2_10.(fn{j});
    params_B2_10.(fn{j}) = field_vals(inds_B2_10);
    
    field_vals = params_B2_11.(fn{j});
    params_B2_11.(fn{j}) = field_vals(inds_B2_11);
    
    field_vals = params_B2_12.(fn{j});
    params_B2_12.(fn{j}) = field_vals(inds_B2_12);
    
    field_vals = params_B2_13.(fn{j});
    params_B2_13.(fn{j}) = field_vals(inds_B2_13);
    
    field_vals = params_B2_14.(fn{j});
    params_B2_14.(fn{j}) = field_vals(inds_B2_14);
    
    field_vals = params_B2_15.(fn{j});
    params_B2_15.(fn{j}) = field_vals(inds_B2_15);
    
    field_vals = params_B2_16.(fn{j});
    params_B2_16.(fn{j}) = field_vals(inds_B2_16);
    
    field_vals = params_B2_17.(fn{j});
    params_B2_17.(fn{j}) = field_vals(inds_B2_17);
    
    field_vals = params_B2_18.(fn{j});
    params_B2_18.(fn{j}) = field_vals(inds_B2_18);
    
    field_vals = params_B2_19.(fn{j});
    params_B2_19.(fn{j}) = field_vals(inds_B2_19);
    
    field_vals = params_B2_20.(fn{j});
    params_B2_20.(fn{j}) = field_vals(inds_B2_20);
    
    field_vals = params_B2_2.(fn{j});
    params_B2_21.(fn{j}) = field_vals(inds_B2_21);
    
    field_vals = params_B2_22.(fn{j});
    params_B2_22.(fn{j}) = field_vals(inds_B2_22);
    
    field_vals = params_B2_23.(fn{j});
    params_B2_23.(fn{j}) = field_vals(inds_B2_23);
    
    field_vals = params_B2_24.(fn{j});
    params_B2_24.(fn{j}) = field_vals(inds_B2_24);
    
    field_vals = params_B2_25.(fn{j});
    params_B2_25.(fn{j}) = field_vals(inds_B2_25);
    
    field_vals = params_B2_26.(fn{j});
    params_B2_26.(fn{j}) = field_vals(inds_B2_26);
    
    field_vals = params_B2_27.(fn{j});
    params_B2_27.(fn{j}) = field_vals(inds_B2_27);
    
    field_vals = params_B2_28.(fn{j});
    params_B2_28.(fn{j}) = field_vals(inds_B2_28);
    
    field_vals = params_B2_29.(fn{j});
    params_B2_29.(fn{j}) = field_vals(inds_B2_29);
end
fn = fieldnames(stats_B2_1);
for j = 1:numel(fn)
    field_vals = stats_B2_1.(fn{j});
    stats_B2_1.(fn{j}) = field_vals(inds_B2_1);
    
    field_vals = stats_B2_2.(fn{j});
    stats_B2_2.(fn{j}) = field_vals(inds_B2_2);
    
    field_vals = stats_B2_3.(fn{j});
    stats_B2_3.(fn{j}) = field_vals(inds_B2_3);
    
    field_vals = stats_B2_4.(fn{j});
    stats_B2_4.(fn{j}) = field_vals(inds_B2_4);
    
    field_vals = stats_B2_5.(fn{j});
    stats_B2_5.(fn{j}) = field_vals(inds_B2_5);
    
    field_vals = stats_B2_6.(fn{j});
    stats_B2_6.(fn{j}) = field_vals(inds_B2_6);
    
    field_vals = stats_B2_7.(fn{j});
    stats_B2_7.(fn{j}) = field_vals(inds_B2_7);
    
    field_vals = stats_B2_8.(fn{j});
    stats_B2_8.(fn{j}) = field_vals(inds_B2_8);
    
    field_vals = stats_B2_9.(fn{j});
    stats_B2_9.(fn{j}) = field_vals(inds_B2_9);
    
    field_vals = stats_B2_10.(fn{j});
    stats_B2_10.(fn{j}) = field_vals(inds_B2_10);
    
    field_vals = stats_B2_11.(fn{j});
    stats_B2_11.(fn{j}) = field_vals(inds_B2_11);
    
    field_vals = stats_B2_12.(fn{j});
    stats_B2_12.(fn{j}) = field_vals(inds_B2_12);
    
    field_vals = stats_B2_13.(fn{j});
    stats_B2_13.(fn{j}) = field_vals(inds_B2_13);
    
    field_vals = stats_B2_14.(fn{j});
    stats_B2_14.(fn{j}) = field_vals(inds_B2_14);
    
    field_vals = stats_B2_15.(fn{j});
    stats_B2_15.(fn{j}) = field_vals(inds_B2_15);
    
    field_vals = stats_B2_16.(fn{j});
    stats_B2_16.(fn{j}) = field_vals(inds_B2_16);
    
    field_vals = stats_B2_17.(fn{j});
    stats_B2_17.(fn{j}) = field_vals(inds_B2_17);
    
    field_vals = stats_B2_18.(fn{j});
    stats_B2_18.(fn{j}) = field_vals(inds_B2_18);
    
    field_vals = stats_B2_19.(fn{j});
    stats_B2_19.(fn{j}) = field_vals(inds_B2_19);
    
    field_vals = stats_B2_20.(fn{j});
    stats_B2_20.(fn{j}) = field_vals(inds_B2_20);
    
    field_vals = stats_B2_2.(fn{j});
    stats_B2_21.(fn{j}) = field_vals(inds_B2_21);
    
    field_vals = stats_B2_22.(fn{j});
    stats_B2_22.(fn{j}) = field_vals(inds_B2_22);
    
    field_vals = stats_B2_23.(fn{j});
    stats_B2_23.(fn{j}) = field_vals(inds_B2_23);
    
    field_vals = stats_B2_24.(fn{j});
    stats_B2_24.(fn{j}) = field_vals(inds_B2_24);
    
    field_vals = stats_B2_25.(fn{j});
    stats_B2_25.(fn{j}) = field_vals(inds_B2_25);
    
    field_vals = stats_B2_26.(fn{j});
    stats_B2_26.(fn{j}) = field_vals(inds_B2_26);
    
    field_vals = stats_B2_27.(fn{j});
    stats_B2_27.(fn{j}) = field_vals(inds_B2_27);
    
    field_vals = stats_B2_28.(fn{j});
    stats_B2_28.(fn{j}) = field_vals(inds_B2_28);
    
    field_vals = stats_B2_29.(fn{j});
    stats_B2_29.(fn{j}) = field_vals(inds_B2_29);
end

%% Calculate numerical sensitivity coefficients 
[S_B2_1, ExApprox_B2_1, EyApprox_B2_1, zAvgApprox_B2_1, zVarApprox_B2_1,...
    paramsa_B2_1, statsa_B2_1] ...
    = ProcessSensitivityData(stats_B2_1, params_B2_1);

[S_B2_2, ExApprox_B2_2, EyApprox_B2_2, zAvgApprox_B2_2, zVarApprox_B2_2,...
    paramsa_B2_2, statsa_B2_2] ...
    = ProcessSensitivityData(stats_B2_2, params_B2_2);

[S_B2_3, ExApprox_B2_3, EyApprox_B2_3, zAvgApprox_B2_3, zVarApprox_B2_3,...
    paramsa_B2_3, statsa_B2_3] ...
    = ProcessSensitivityData(stats_B2_3, params_B2_3);

[S_B2_4, ExApprox_B2_4, EyApprox_B2_4, zAvgApprox_B2_4, zVarApprox_B2_4,...
    paramsa_B2_4, statsa_B2_4] ...
    = ProcessSensitivityData(stats_B2_4, params_B2_4);

[S_B2_5, ExApprox_B2_5, EyApprox_B2_5, zAvgApprox_B2_5, zVarApprox_B2_5,...
    paramsa_B2_5, statsa_B2_5] ...
    = ProcessSensitivityData(stats_B2_5, params_B2_5);

[S_B2_6, ExApprox_B2_6, EyApprox_B2_6, zAvgApprox_B2_6, zVarApprox_B2_6,...
    paramsa_B2_6, statsa_B2_6] ...
    = ProcessSensitivityData(stats_B2_6, params_B2_6);

[S_B2_7, ExApprox_B2_7, EyApprox_B2_7, zAvgApprox_B2_7, zVarApprox_B2_7,...
    paramsa_B2_7, statsa_B2_7] ...
    = ProcessSensitivityData(stats_B2_7, params_B2_7);

[S_B2_8, ExApprox_B2_8, EyApprox_B2_8, zAvgApprox_B2_8, zVarApprox_B2_8,...
    paramsa_B2_8, statsa_B2_8] ...
    = ProcessSensitivityData(stats_B2_8, params_B2_8);

[S_B2_9, ExApprox_B2_9, EyApprox_B2_9, zAvgApprox_B2_9, zVarApprox_B2_9,...
    paramsa_B2_9, statsa_B2_9] ...
    = ProcessSensitivityData(stats_B2_9, params_B2_9);

[S_B2_10, ExApprox_B2_10, EyApprox_B2_10, zAvgApprox_B2_10, ...
    zVarApprox_B2_10, paramsa_B2_10, statsa_B2_10] ...
    = ProcessSensitivityData(stats_B2_10, params_B2_10);

[S_B2_11, ExApprox_B2_11, EyApprox_B2_11, zAvgApprox_B2_11, ...
    zVarApprox_B2_11, paramsa_B2_11, statsa_B2_11] ...
    = ProcessSensitivityData(stats_B2_11, params_B2_11);

[S_B2_12, ExApprox_B2_12, EyApprox_B2_12, zAvgApprox_B2_12, ...
    zVarApprox_B2_12, paramsa_B2_12, statsa_B2_12] ...
    = ProcessSensitivityData(stats_B2_12, params_B2_12);

[S_B2_13, ExApprox_B2_13, EyApprox_B2_13, zAvgApprox_B2_13, ...
    zVarApprox_B2_13, paramsa_B2_13, statsa_B2_13] ...
    = ProcessSensitivityData(stats_B2_13, params_B2_13);

[S_B2_14, ExApprox_B2_14, EyApprox_B2_14, zAvgApprox_B2_14, ...
    zVarApprox_B2_14, paramsa_B2_14, statsa_B2_14] ...
    = ProcessSensitivityData(stats_B2_14, params_B2_14);

[S_B2_15, ExApprox_B2_15, EyApprox_B2_15, zAvgApprox_B2_15, ...
    zVarApprox_B2_15, paramsa_B2_15, statsa_B2_15] ...
    = ProcessSensitivityData(stats_B2_15, params_B2_15);

[S_B2_16, ExApprox_B2_16, EyApprox_B2_16, zAvgApprox_B2_16, ...
    zVarApprox_B2_16, paramsa_B2_16, statsa_B2_16] ...
    = ProcessSensitivityData(stats_B2_16, params_B2_16);

[S_B2_17, ExApprox_B2_17, EyApprox_B2_17, zAvgApprox_B2_17, ...
    zVarApprox_B2_17, paramsa_B2_17, statsa_B2_17] ...
    = ProcessSensitivityData(stats_B2_17, params_B2_17);

[S_B2_18, ExApprox_B2_18, EyApprox_B2_18, zAvgApprox_B2_18, ...
    zVarApprox_B2_18, paramsa_B2_18, statsa_B2_18] ...
    = ProcessSensitivityData(stats_B2_18, params_B2_18);

[S_B2_19, ExApprox_B2_19, EyApprox_B2_19, zAvgApprox_B2_19, ...
    zVarApprox_B2_19, paramsa_B2_19, statsa_B2_19] ...
    = ProcessSensitivityData(stats_B2_19, params_B2_19);

[S_B2_20, ExApprox_B2_20, EyApprox_B2_20, zAvgApprox_B2_20, ...
    zVarApprox_B2_20, paramsa_B2_20, statsa_B2_20] ...
    = ProcessSensitivityData(stats_B2_20, params_B2_20);

[S_B2_21, ExApprox_B2_21, EyApprox_B2_21, zAvgApprox_B2_21, ...
    zVarApprox_B2_21, paramsa_B2_21, statsa_B2_21] ...
    = ProcessSensitivityData(stats_B2_21, params_B2_21);

[S_B2_22, ExApprox_B2_22, EyApprox_B2_22, zAvgApprox_B2_22, ...
    zVarApprox_B2_22, paramsa_B2_22, statsa_B2_22] ...
    = ProcessSensitivityData(stats_B2_22, params_B2_22);

[S_B2_23, ExApprox_B2_23, EyApprox_B2_23, zAvgApprox_B2_23, ...
    zVarApprox_B2_23, paramsa_B2_23, statsa_B2_23] ...
    = ProcessSensitivityData(stats_B2_23, params_B2_23);

[S_B2_24, ExApprox_B2_24, EyApprox_B2_24, zAvgApprox_B2_24, ...
    zVarApprox_B2_24, paramsa_B2_24, statsa_B2_24] ...
    = ProcessSensitivityData(stats_B2_24, params_B2_24);

[S_B2_25, ExApprox_B2_25, EyApprox_B2_25, zAvgApprox_B2_25, ...
    zVarApprox_B2_25, paramsa_B2_25, statsa_B2_25] ...
    = ProcessSensitivityData(stats_B2_25, params_B2_25);

[S_B2_26, ExApprox_B2_26, EyApprox_B2_26, zAvgApprox_B2_26, ...
    zVarApprox_B2_26, paramsa_B2_26, statsa_B2_26] ...
    = ProcessSensitivityData(stats_B2_26, params_B2_26);

[S_B2_27, ExApprox_B2_27, EyApprox_B2_27, zAvgApprox_B2_27, ...
    zVarApprox_B2_27, paramsa_B2_27, statsa_B2_27] ...
    = ProcessSensitivityData(stats_B2_27, params_B2_27);

[S_B2_28, ExApprox_B2_28, EyApprox_B2_28, zAvgApprox_B2_28, ...
    zVarApprox_B2_28, paramsa_B2_28, statsa_B2_28] ...
    = ProcessSensitivityData(stats_B2_28, params_B2_28);

[S_B2_29, ExApprox_B2_29, EyApprox_B2_29, zAvgApprox_B2_29, ...
    zVarApprox_B2_29, paramsa_B2_29, statsa_B2_29] ...
    = ProcessSensitivityData(stats_B2_29, params_B2_29);

%% import more additional data 
stats_fname_B3_1 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_1_STATISTICS.bin');
stats_B3_1 = read_AIF_three_components_statistics(stats_fname_B3_1);
params_fname_B3_1 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_1_PARAMETERS.bin');
params_B3_1 = read_AIF_three_components_parameters(params_fname_B3_1);

stats_fname_B3_2 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_2_STATISTICS.bin');
stats_B3_2 = read_AIF_three_components_statistics(stats_fname_B3_2);
params_fname_B3_2 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_2_PARAMETERS.bin');
params_B3_2 = read_AIF_three_components_parameters(params_fname_B3_2);

stats_fname_B3_3 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_3_STATISTICS.bin');
stats_B3_3 = read_AIF_three_components_statistics(stats_fname_B3_3);
params_fname_B3_3 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_3_PARAMETERS.bin');
params_B3_3 = read_AIF_three_components_parameters(params_fname_B3_3);

stats_fname_B3_4 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_4_STATISTICS.bin');
stats_B3_4 = read_AIF_three_components_statistics(stats_fname_B3_4);
params_fname_B3_4 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_4_PARAMETERS.bin');
params_B3_4 = read_AIF_three_components_parameters(params_fname_B3_4);

stats_fname_B3_5 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_5_STATISTICS.bin');
stats_B3_5 = read_AIF_three_components_statistics(stats_fname_B3_5);
params_fname_B3_5 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_5_PARAMETERS.bin');
params_B3_5 = read_AIF_three_components_parameters(params_fname_B3_5);

stats_fname_B3_6 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_6_STATISTICS.bin');
stats_B3_6 = read_AIF_three_components_statistics(stats_fname_B3_6);
params_fname_B3_6 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_6_PARAMETERS.bin');
params_B3_6 = read_AIF_three_components_parameters(params_fname_B3_6);

stats_fname_B3_7 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_7_STATISTICS.bin');
stats_B3_7 = read_AIF_three_components_statistics(stats_fname_B3_7);
params_fname_B3_7 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_7_PARAMETERS.bin');
params_B3_7 = read_AIF_three_components_parameters(params_fname_B3_7);

stats_fname_B3_8 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_8_STATISTICS.bin');
stats_B3_8 = read_AIF_three_components_statistics(stats_fname_B3_8);
params_fname_B3_8 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_8_PARAMETERS.bin');
params_B3_8 = read_AIF_three_components_parameters(params_fname_B3_8);

stats_fname_B3_9 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_9_STATISTICS.bin');
stats_B3_9 = read_AIF_three_components_statistics(stats_fname_B3_9);
params_fname_B3_9 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_9_PARAMETERS.bin');
params_B3_9 = read_AIF_three_components_parameters(params_fname_B3_9);

stats_fname_B3_10 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_10_STATISTICS.bin');
stats_B3_10 = read_AIF_three_components_statistics(stats_fname_B3_10);
params_fname_B3_10 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_10_PARAMETERS.bin');
params_B3_10 = read_AIF_three_components_parameters(params_fname_B3_10);

stats_fname_B3_11 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_11_STATISTICS.bin');
stats_B3_11 = read_AIF_three_components_statistics(stats_fname_B3_11);
params_fname_B3_11 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_11_PARAMETERS.bin');
params_B3_11 = read_AIF_three_components_parameters(params_fname_B3_11);

stats_fname_B3_12 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_12_STATISTICS.bin');
stats_B3_12 = read_AIF_three_components_statistics(stats_fname_B3_12);
params_fname_B3_12 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_12_PARAMETERS.bin');
params_B3_12 = read_AIF_three_components_parameters(params_fname_B3_12);

stats_fname_B3_13 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_13_STATISTICS.bin');
stats_B3_13 = read_AIF_three_components_statistics(stats_fname_B3_13);
params_fname_B3_13 = strcat(data_path, ...
'Reference_Actuated_System_with_Dilution_B3_13_PARAMETERS.bin');
params_B3_13 = read_AIF_three_components_parameters(params_fname_B3_13);

stats_fname_B3_14 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_14_STATISTICS.bin');
stats_B3_14 = read_AIF_three_components_statistics(stats_fname_B3_14);
params_fname_B3_14 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_14_PARAMETERS.bin');
params_B3_14 = read_AIF_three_components_parameters(params_fname_B3_14);

stats_fname_B3_15 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_15_STATISTICS.bin');
stats_B3_15 = read_AIF_three_components_statistics(stats_fname_B3_15);
params_fname_B3_15 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_15_PARAMETERS.bin');
params_B3_15 = read_AIF_three_components_parameters(params_fname_B3_15);

stats_fname_B3_16 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_16_STATISTICS.bin');
stats_B3_16 = read_AIF_three_components_statistics(stats_fname_B3_16);
params_fname_B3_16 = strcat(data_path, ...
    'Reference_Actuated_System_with_Dilution_B3_16_PARAMETERS.bin');
params_B3_16 = read_AIF_three_components_parameters(params_fname_B3_16);

%% check flux and covariance balance

% 2% threshold
FB_B3_1 = check_flux_balance_AIF_three_components(stats_B3_1, ...
    params_B3_1, 2/100);
% 5% threshold
CB_B3_1 = check_covariance_balance_AIF_three_components(stats_B3_1, ...
    params_B3_1, 5/100); 
inds_B3_1 = FB_B3_1 & CB_B3_1;

% 2% threshold
FB_B3_2 = check_flux_balance_AIF_three_components(stats_B3_2, ...
    params_B3_2, 2/100);
% 5% threshold
CB_B3_2 = check_covariance_balance_AIF_three_components(stats_B3_2, ...
    params_B3_2, 5/100); 
inds_B3_2 = FB_B3_2 & CB_B3_2;

% 2% threshold
FB_B3_3 = check_flux_balance_AIF_three_components(stats_B3_3, ...
    params_B3_3, 2/100);
% 5% threshold
CB_B3_3 = check_covariance_balance_AIF_three_components(stats_B3_3, ...
    params_B3_3, 5/100); 
inds_B3_3 = FB_B3_3 & CB_B3_3;

% 2% threshold
FB_B3_4 = check_flux_balance_AIF_three_components(stats_B3_4, ...
    params_B3_4, 2/100);
% 5% threshold
CB_B3_4 = check_covariance_balance_AIF_three_components(stats_B3_4, ...
    params_B3_4, 5/100); 
inds_B3_4 = FB_B3_4 & CB_B3_4;

% 2% threshold
FB_B3_5 = check_flux_balance_AIF_three_components(stats_B3_5, ...
    params_B3_5, 2/100);
% 5% threshold
CB_B3_5 = check_covariance_balance_AIF_three_components(stats_B3_5, ...
    params_B3_5, 5/100); 
inds_B3_5 = FB_B3_5 & CB_B3_5;

% 2% threshold
FB_B3_6 = check_flux_balance_AIF_three_components(stats_B3_6, ...
    params_B3_6, 2/100);
% 5% threshold
CB_B3_6 = check_covariance_balance_AIF_three_components(stats_B3_6, ...
    params_B3_6, 5/100); 
inds_B3_6 = FB_B3_6 & CB_B3_6;

% 2% threshold
FB_B3_7 = check_flux_balance_AIF_three_components(stats_B3_7, ...
    params_B3_7, 2/100);
% 5% threshold
CB_B3_7 = check_covariance_balance_AIF_three_components(stats_B3_7, ...
    params_B3_7, 5/100); 
inds_B3_7 = FB_B3_7 & CB_B3_7;

% 2% threshold
FB_B3_8 = check_flux_balance_AIF_three_components(stats_B3_8, ...
    params_B3_8, 2/100);
% 5% threshold
CB_B3_8 = check_covariance_balance_AIF_three_components(stats_B3_8, ...
    params_B3_8, 5/100); 
inds_B3_8 = FB_B3_8 & CB_B3_8;

% 2% threshold
FB_B3_9 = check_flux_balance_AIF_three_components(stats_B3_9, ...
    params_B3_9, 2/100);
% 5% threshold
CB_B3_9 = check_covariance_balance_AIF_three_components(stats_B3_9, ...
    params_B3_9, 5/100); 
inds_B3_9 = FB_B3_9 & CB_B3_9;

% 2% threshold
FB_B3_10 = check_flux_balance_AIF_three_components(stats_B3_10, ...
    params_B3_10, 2/100);
% 5% threshold
CB_B3_10 = check_covariance_balance_AIF_three_components(stats_B3_10, ...
    params_B3_10, 5/100); 
inds_B3_10 = FB_B3_10 & CB_B3_10;

% 2% threshold
FB_B3_11 = check_flux_balance_AIF_three_components(stats_B3_11, ...
    params_B3_11, 2/100);
% 5% threshold
CB_B3_11 = check_covariance_balance_AIF_three_components(stats_B3_11, ...
    params_B3_11, 5/100); 
inds_B3_11 = FB_B3_11 & CB_B3_11;

% 2% threshold
FB_B3_12 = check_flux_balance_AIF_three_components(stats_B3_12, ...
    params_B3_12, 2/100);
% 5% threshold
CB_B3_12 = check_covariance_balance_AIF_three_components(stats_B3_12, ...
    params_B3_12, 5/100); 
inds_B3_12 = FB_B3_12 & CB_B3_12;

% 2% threshold
FB_B3_13 = check_flux_balance_AIF_three_components(stats_B3_13, ...
    params_B3_13, 2/100);
% 5% threshold
CB_B3_13 = check_covariance_balance_AIF_three_components(stats_B3_13, ...
    params_B3_13, 5/100); 
inds_B3_13 = FB_B3_13 & CB_B3_13;

% 2% threshold
FB_B3_14 = check_flux_balance_AIF_three_components(stats_B3_14, ...
    params_B3_14, 2/100);
% 5% threshold
CB_B3_14 = check_covariance_balance_AIF_three_components(stats_B3_14, ...
    params_B3_14, 5/100); 
inds_B3_14 = FB_B3_14 & CB_B3_14;

% 2% threshold
FB_B3_15 = check_flux_balance_AIF_three_components(stats_B3_15, ...
    params_B3_15, 2/100);
% 5% threshold
CB_B3_15 = check_covariance_balance_AIF_three_components(stats_B3_15, ...
    params_B3_15, 5/100); 
inds_B3_15 = FB_B3_15 & CB_B3_15;

% 2% threshold
FB_B3_16 = check_flux_balance_AIF_three_components(stats_B3_16, ...
    params_B3_16, 2/100);
% 5% threshold
CB_B3_16 = check_covariance_balance_AIF_three_components(stats_B3_16, ...
    params_B3_16, 5/100); 
inds_B3_16 = FB_B3_16 & CB_B3_16;

%% subset data based on flux and covariance balance tests 
fn = fieldnames(params_B3_1);
for j = 1:numel(fn)
    field_vals = params_B3_1.(fn{j});
    params_B3_1.(fn{j}) = field_vals(inds_B3_1);
    
    field_vals = params_B3_2.(fn{j});
    params_B3_2.(fn{j}) = field_vals(inds_B3_2);
    
    field_vals = params_B3_3.(fn{j});
    params_B3_3.(fn{j}) = field_vals(inds_B3_3);
    
    field_vals = params_B3_4.(fn{j});
    params_B3_4.(fn{j}) = field_vals(inds_B3_4);
    
    field_vals = params_B3_5.(fn{j});
    params_B3_5.(fn{j}) = field_vals(inds_B3_5);
    
    field_vals = params_B3_6.(fn{j});
    params_B3_6.(fn{j}) = field_vals(inds_B3_6);
    
    field_vals = params_B3_7.(fn{j});
    params_B3_7.(fn{j}) = field_vals(inds_B3_7);
    
    field_vals = params_B3_8.(fn{j});
    params_B3_8.(fn{j}) = field_vals(inds_B3_8);
    
    field_vals = params_B3_9.(fn{j});
    params_B3_9.(fn{j}) = field_vals(inds_B3_9);
    
    field_vals = params_B3_10.(fn{j});
    params_B3_10.(fn{j}) = field_vals(inds_B3_10);
    
    field_vals = params_B3_11.(fn{j});
    params_B3_11.(fn{j}) = field_vals(inds_B3_11);
    
    field_vals = params_B3_12.(fn{j});
    params_B3_12.(fn{j}) = field_vals(inds_B3_12);
    
    field_vals = params_B3_13.(fn{j});
    params_B3_13.(fn{j}) = field_vals(inds_B3_13);
    
    field_vals = params_B3_14.(fn{j});
    params_B3_14.(fn{j}) = field_vals(inds_B3_14);
    
    field_vals = params_B3_15.(fn{j});
    params_B3_15.(fn{j}) = field_vals(inds_B3_15);
    
    field_vals = params_B3_16.(fn{j});
    params_B3_16.(fn{j}) = field_vals(inds_B3_16);
end
fn = fieldnames(stats_B3_1);
for j = 1:numel(fn)
    field_vals = stats_B3_1.(fn{j});
    stats_B3_1.(fn{j}) = field_vals(inds_B3_1);
    
    field_vals = stats_B3_2.(fn{j});
    stats_B3_2.(fn{j}) = field_vals(inds_B3_2);
    
    field_vals = stats_B3_3.(fn{j});
    stats_B3_3.(fn{j}) = field_vals(inds_B3_3);
    
    field_vals = stats_B3_4.(fn{j});
    stats_B3_4.(fn{j}) = field_vals(inds_B3_4);
    
    field_vals = stats_B3_5.(fn{j});
    stats_B3_5.(fn{j}) = field_vals(inds_B3_5);
    
    field_vals = stats_B3_6.(fn{j});
    stats_B3_6.(fn{j}) = field_vals(inds_B3_6);
    
    field_vals = stats_B3_7.(fn{j});
    stats_B3_7.(fn{j}) = field_vals(inds_B3_7);
    
    field_vals = stats_B3_8.(fn{j});
    stats_B3_8.(fn{j}) = field_vals(inds_B3_8);
    
    field_vals = stats_B3_9.(fn{j});
    stats_B3_9.(fn{j}) = field_vals(inds_B3_9);
    
    field_vals = stats_B3_10.(fn{j});
    stats_B3_10.(fn{j}) = field_vals(inds_B3_10);
    
    field_vals = stats_B3_11.(fn{j});
    stats_B3_11.(fn{j}) = field_vals(inds_B3_11);
    
    field_vals = stats_B3_12.(fn{j});
    stats_B3_12.(fn{j}) = field_vals(inds_B3_12);
    
    field_vals = stats_B3_13.(fn{j});
    stats_B3_13.(fn{j}) = field_vals(inds_B3_13);
   
    field_vals = stats_B3_14.(fn{j});
    stats_B3_14.(fn{j}) = field_vals(inds_B3_14);
    
    field_vals = stats_B3_15.(fn{j});
    stats_B3_15.(fn{j}) = field_vals(inds_B3_15);
    
    field_vals = stats_B3_16.(fn{j});
    stats_B3_16.(fn{j}) = field_vals(inds_B3_16);
end

%% Calculate numerical sensitivity coefficients 
[S_B3_1, ExApprox_B3_1, EyApprox_B3_1, zAvgApprox_B3_1, zVarApprox_B3_1,...
    paramsa_B3_1, statsa_B3_1] ...
    = ProcessSensitivityData(stats_B3_1, params_B3_1);

[S_B3_2, ExApprox_B3_2, EyApprox_B3_2, zAvgApprox_B3_2, zVarApprox_B3_2,...
    paramsa_B3_2, statsa_B3_2] ...
    = ProcessSensitivityData(stats_B3_2, params_B3_2);

[S_B3_3, ExApprox_B3_3, EyApprox_B3_3, zAvgApprox_B3_3, zVarApprox_B3_3,...
    paramsa_B3_3, statsa_B3_3] ...
    = ProcessSensitivityData(stats_B3_3, params_B3_3);

[S_B3_4, ExApprox_B3_4, EyApprox_B3_4, zAvgApprox_B3_4, zVarApprox_B3_4,...
    paramsa_B3_4, statsa_B3_4] ...
    = ProcessSensitivityData(stats_B3_4, params_B3_4);

[S_B3_5, ExApprox_B3_5, EyApprox_B3_5, zAvgApprox_B3_5, zVarApprox_B3_5,...
    paramsa_B3_5, statsa_B3_5] ...
    = ProcessSensitivityData(stats_B3_5, params_B3_5);

[S_B3_6, ExApprox_B3_6, EyApprox_B3_6, zAvgApprox_B3_6, zVarApprox_B3_6,...
    paramsa_B3_6, statsa_B3_6] ...
    = ProcessSensitivityData(stats_B3_6, params_B3_6);

[S_B3_7, ExApprox_B3_7, EyApprox_B3_7, zAvgApprox_B3_7, zVarApprox_B3_7,...
    paramsa_B3_7, statsa_B3_7] ...
    = ProcessSensitivityData(stats_B3_7, params_B3_7);

[S_B3_8, ExApprox_B3_8, EyApprox_B3_8, zAvgApprox_B3_8, zVarApprox_B3_8,...
    paramsa_B3_8, statsa_B3_8] ...
    = ProcessSensitivityData(stats_B3_8, params_B3_8);

[S_B3_9, ExApprox_B3_9, EyApprox_B3_9, zAvgApprox_B3_9, zVarApprox_B3_9,...
    paramsa_B3_9, statsa_B3_9] ...
    = ProcessSensitivityData(stats_B3_9, params_B3_9);

[S_B3_10, ExApprox_B3_10, EyApprox_B3_10, zAvgApprox_B3_10,...
    zVarApprox_B3_10, paramsa_B3_10, statsa_B3_10] ...
    = ProcessSensitivityData(stats_B3_10, params_B3_10);

[S_B3_11, ExApprox_B3_11, EyApprox_B3_11, zAvgApprox_B3_11,...
    zVarApprox_B3_11, paramsa_B3_11, statsa_B3_11] ...
    = ProcessSensitivityData(stats_B3_11, params_B3_11);

[S_B3_12, ExApprox_B3_12, EyApprox_B3_12, zAvgApprox_B3_12,...
    zVarApprox_B3_12, paramsa_B3_12, statsa_B3_12] ...
    = ProcessSensitivityData(stats_B3_12, params_B3_12);

[S_B3_13, ExApprox_B3_13, EyApprox_B3_13, zAvgApprox_B3_13,...
    zVarApprox_B3_13, paramsa_B3_13, statsa_B3_13] ...
    = ProcessSensitivityData(stats_B3_13, params_B3_13);

[S_B3_14, ExApprox_B3_14, EyApprox_B3_14, zAvgApprox_B3_14,...
    zVarApprox_B3_14, paramsa_B3_14, statsa_B3_14] ...
    = ProcessSensitivityData(stats_B3_14, params_B3_14);

[S_B3_15, ExApprox_B3_15, EyApprox_B3_15, zAvgApprox_B3_15,...
    zVarApprox_B3_15, paramsa_B3_15, statsa_B3_15] ...
    = ProcessSensitivityData(stats_B3_15, params_B3_15);

[S_B3_16, ExApprox_B3_16, EyApprox_B3_16, zAvgApprox_B3_16,...
    zVarApprox_B3_16, paramsa_B3_16, statsa_B3_16] ...
    = ProcessSensitivityData(stats_B3_16, params_B3_16);

%%
clc
numel(S_B3_12(paramsa_B3_12.theta == 40)) 

%% aggregate processed data
S = [S_B1_1; S_B1_2; S_B1_3; S_B1_4; S_B1_5; S_B1_6; S_B1_7;...
    S_B1_9; S_B1_10; S_B1_11; S_B1_12; S_B1_13; S_B1_14; S_B1_15; S_B1_16;...
    S_B1_17; S_B1_18; S_B1_19; S_B1_20; S_B1_21; S_B1_22; S_B1_23; S_B1_24;...
    S_B1_25; S_B1_26; S_B1_27; S_B1_28; S_B1_29;S_B1_30; S_B1_31; S_B1_32;...
    S_B2_1; S_B2_2; S_B2_3; S_B2_4; S_B2_5; S_B2_6; S_B2_7; S_B2_8;...
    S_B2_9; S_B2_10; S_B2_11; S_B2_12; S_B2_13; S_B2_14; S_B2_15; S_B2_16;...
    S_B2_17; S_B2_18; S_B2_19; S_B2_20; S_B2_21; S_B2_22; S_B2_23; S_B2_24;...
    S_B2_25; S_B2_26; S_B2_27; S_B2_28; S_B2_29; S_B3_1; S_B3_2; S_B3_3;...
    S_B3_4; S_B3_5; S_B3_6; S_B3_7; S_B3_8; S_B3_9; S_B3_10; S_B3_11;...
    S_B3_12; S_B3_13; S_B3_14; S_B3_15; S_B3_16];
zAvgApprox = [zAvgApprox_B1_1; zAvgApprox_B1_2; zAvgApprox_B1_3;...
    zAvgApprox_B1_4; zAvgApprox_B1_5; zAvgApprox_B1_6; zAvgApprox_B1_7;...
    zAvgApprox_B1_9; zAvgApprox_B1_10; zAvgApprox_B1_11;...
    zAvgApprox_B1_12; zAvgApprox_B1_13; zAvgApprox_B1_14; zAvgApprox_B1_15;...
    zAvgApprox_B1_16; zAvgApprox_B1_17; zAvgApprox_B1_18; zAvgApprox_B1_19;...
    zAvgApprox_B1_20; zAvgApprox_B1_21; zAvgApprox_B1_22; zAvgApprox_B1_23;...
    zAvgApprox_B1_24; zAvgApprox_B1_25; zAvgApprox_B1_26; zAvgApprox_B1_27;...
    zAvgApprox_B1_28; zAvgApprox_B1_29; zAvgApprox_B1_30; zAvgApprox_B1_31;...
    zAvgApprox_B1_32; zAvgApprox_B2_1; zAvgApprox_B2_2; zAvgApprox_B2_3;...
    zAvgApprox_B2_4; zAvgApprox_B2_5; zAvgApprox_B2_6; zAvgApprox_B2_7;...
    zAvgApprox_B2_8; zAvgApprox_B2_9; zAvgApprox_B2_10; zAvgApprox_B2_11;...
    zAvgApprox_B2_12; zAvgApprox_B2_13; zAvgApprox_B2_14; zAvgApprox_B2_15;...
    zAvgApprox_B2_16; zAvgApprox_B2_17; zAvgApprox_B2_18; zAvgApprox_B2_19;...
    zAvgApprox_B2_20; zAvgApprox_B2_21; zAvgApprox_B2_22; zAvgApprox_B2_23;...
    zAvgApprox_B2_24; zAvgApprox_B2_25; zAvgApprox_B2_26; zAvgApprox_B2_27;...
    zAvgApprox_B2_28; zAvgApprox_B2_29; zAvgApprox_B3_1; zAvgApprox_B3_2;...
    zAvgApprox_B3_3; zAvgApprox_B3_4; zAvgApprox_B3_5; zAvgApprox_B3_6;...
    zAvgApprox_B3_7; zAvgApprox_B3_8; zAvgApprox_B3_9; zAvgApprox_B3_10;...
    zAvgApprox_B3_11; zAvgApprox_B3_12; zAvgApprox_B3_13; zAvgApprox_B3_14;...
    zAvgApprox_B3_15; zAvgApprox_B3_16];
zVarApprox = [zVarApprox_B1_1; zVarApprox_B1_2; zVarApprox_B1_3;...
    zVarApprox_B1_4; zVarApprox_B1_5; zVarApprox_B1_6; zVarApprox_B1_7;...
    zVarApprox_B1_9; zVarApprox_B1_10; zVarApprox_B1_11;...
    zVarApprox_B1_12; zVarApprox_B1_13; zVarApprox_B1_14; zVarApprox_B1_15;...
    zVarApprox_B1_16; zVarApprox_B1_17; zVarApprox_B1_18; zVarApprox_B1_19;...
    zVarApprox_B1_20; zVarApprox_B1_21; zVarApprox_B1_22; zVarApprox_B1_23;...
    zVarApprox_B1_24; zVarApprox_B1_25; zVarApprox_B1_26; zVarApprox_B1_27;...
    zVarApprox_B1_28; zVarApprox_B1_29; zVarApprox_B1_30; zVarApprox_B1_31;...
    zVarApprox_B1_32; zVarApprox_B2_1; zVarApprox_B2_2; zVarApprox_B2_3;...
    zVarApprox_B2_4; zVarApprox_B2_5; zVarApprox_B2_6; zVarApprox_B2_7;...
    zVarApprox_B2_8; zVarApprox_B2_9; zVarApprox_B2_10; zVarApprox_B2_11;...
    zVarApprox_B2_12; zVarApprox_B2_13; zVarApprox_B2_14; zVarApprox_B2_15;...
    zVarApprox_B2_16; zVarApprox_B2_17; zVarApprox_B2_18; zVarApprox_B2_19;...
    zVarApprox_B2_20; zVarApprox_B2_21; zVarApprox_B2_22; zVarApprox_B2_23;...
    zVarApprox_B2_24; zVarApprox_B2_25; zVarApprox_B2_26; zVarApprox_B2_27;...
    zVarApprox_B2_28; zVarApprox_B2_29; zVarApprox_B3_1; zVarApprox_B3_2;...
    zVarApprox_B3_3; zVarApprox_B3_4; zVarApprox_B3_5; zVarApprox_B3_6;...
    zVarApprox_B3_7; zVarApprox_B3_8; zVarApprox_B3_9; zVarApprox_B3_10;...
    zVarApprox_B3_11; zVarApprox_B3_12; zVarApprox_B3_13; zVarApprox_B3_14;...
    zVarApprox_B3_15; zVarApprox_B3_16];
ExApprox = [ExApprox_B1_1; ExApprox_B1_2; ExApprox_B1_3;...
    ExApprox_B1_4; ExApprox_B1_5; ExApprox_B1_6; ExApprox_B1_7;...
    ExApprox_B1_9; ExApprox_B1_10; ExApprox_B1_11;...
    ExApprox_B1_12; ExApprox_B1_13; ExApprox_B1_14; ExApprox_B1_15;...
    ExApprox_B1_16; ExApprox_B1_17; ExApprox_B1_18; ExApprox_B1_19;...
    ExApprox_B1_20; ExApprox_B1_21; ExApprox_B1_22; ExApprox_B1_23;...
    ExApprox_B1_24; ExApprox_B1_25; ExApprox_B1_26; ExApprox_B1_27;...
    ExApprox_B1_28; ExApprox_B1_29; ExApprox_B1_30; ExApprox_B1_31;...
    ExApprox_B1_32; ExApprox_B2_1; ExApprox_B2_2; ExApprox_B2_3;...
    ExApprox_B2_4; ExApprox_B2_5; ExApprox_B2_6; ExApprox_B2_7;...
    ExApprox_B2_8; ExApprox_B2_9; ExApprox_B2_10; ExApprox_B2_11;...
    ExApprox_B2_12; ExApprox_B2_13; ExApprox_B2_14; ExApprox_B2_15;...
    ExApprox_B2_16; ExApprox_B2_17; ExApprox_B2_18; ExApprox_B2_19;...
    ExApprox_B2_20; ExApprox_B2_21; ExApprox_B2_22; ExApprox_B2_23;...
    ExApprox_B2_24; ExApprox_B2_25; ExApprox_B2_26; ExApprox_B2_27;...
    ExApprox_B2_28; ExApprox_B2_29; ExApprox_B3_1; ExApprox_B3_2;...
    ExApprox_B3_3; ExApprox_B3_4; ExApprox_B3_5; ExApprox_B3_6;...
    ExApprox_B3_7; ExApprox_B3_8; ExApprox_B3_9; ExApprox_B3_10;...
    ExApprox_B3_11; ExApprox_B3_12; ExApprox_B3_13; ExApprox_B3_14;...
    ExApprox_B3_15; ExApprox_B3_16];
EyApprox = [EyApprox_B1_1; EyApprox_B1_2; EyApprox_B1_3;...
    EyApprox_B1_4; EyApprox_B1_5; EyApprox_B1_6; EyApprox_B1_7;...
    EyApprox_B1_9; EyApprox_B1_10; EyApprox_B1_11;...
    EyApprox_B1_12; EyApprox_B1_13; EyApprox_B1_14; EyApprox_B1_15;...
    EyApprox_B1_16; EyApprox_B1_17; EyApprox_B1_18; EyApprox_B1_19;...
    EyApprox_B1_20; EyApprox_B1_21; EyApprox_B1_22; EyApprox_B1_23;...
    EyApprox_B1_24; EyApprox_B1_25; EyApprox_B1_26; EyApprox_B1_27;...
    EyApprox_B1_28; EyApprox_B1_29; EyApprox_B1_30; EyApprox_B1_31;...
    EyApprox_B1_32; EyApprox_B2_1; EyApprox_B2_2; EyApprox_B2_3;...
    EyApprox_B2_4; EyApprox_B2_5; EyApprox_B2_6; EyApprox_B2_7;...
    EyApprox_B2_8; EyApprox_B2_9; EyApprox_B2_10; EyApprox_B2_11;...
    EyApprox_B2_12; EyApprox_B2_13; EyApprox_B2_14; EyApprox_B2_15;...
    EyApprox_B2_16; EyApprox_B2_17; EyApprox_B2_18; EyApprox_B2_19;...
    EyApprox_B2_20; EyApprox_B2_21; EyApprox_B2_22; EyApprox_B2_23;...
    EyApprox_B2_24; EyApprox_B2_25; EyApprox_B2_26; EyApprox_B2_27;...
    EyApprox_B2_28; EyApprox_B2_29; EyApprox_B3_1; EyApprox_B3_2;...
    EyApprox_B3_3; EyApprox_B3_4; EyApprox_B3_5; EyApprox_B3_6;...
    EyApprox_B3_7; EyApprox_B3_8; EyApprox_B3_9; EyApprox_B3_10;...
    EyApprox_B3_11; EyApprox_B3_12; EyApprox_B3_13; EyApprox_B3_14;...
    EyApprox_B3_15; EyApprox_B3_16];

Fz = zVarApprox./zAvgApprox; % Fano factor = CV^2/(1/average)

fn = fieldnames(params_B1_1);
params = struct;
for j = 1:numel(fn)
    params.(fn{j}) = [paramsa_B1_1.(fn{j}),...
        paramsa_B1_2.(fn{j}), paramsa_B1_3.(fn{j}), paramsa_B1_4.(fn{j}),...
        paramsa_B1_5.(fn{j}), paramsa_B1_6.(fn{j}), paramsa_B1_7.(fn{j}),...
        paramsa_B1_9.(fn{j}), paramsa_B1_10.(fn{j}),...
        paramsa_B1_11.(fn{j}), paramsa_B1_12.(fn{j}), paramsa_B1_13.(fn{j}),...
        paramsa_B1_14.(fn{j}), paramsa_B1_15.(fn{j}), paramsa_B1_16.(fn{j}),...
        paramsa_B1_17.(fn{j}), paramsa_B1_18.(fn{j}), paramsa_B1_19.(fn{j}),...
        paramsa_B1_20.(fn{j}), paramsa_B1_21.(fn{j}),paramsa_B1_22.(fn{j}),...
        paramsa_B1_23.(fn{j}), paramsa_B1_24.(fn{j}), paramsa_B1_25.(fn{j}),...
        paramsa_B1_26.(fn{j}), paramsa_B1_27.(fn{j}), paramsa_B1_28.(fn{j}),...
        paramsa_B1_29.(fn{j}), paramsa_B1_30.(fn{j}), paramsa_B1_31.(fn{j}),...
		paramsa_B1_32.(fn{j}), paramsa_B2_1.(fn{j}),...
        paramsa_B2_2.(fn{j}), paramsa_B2_3.(fn{j}), paramsa_B2_4.(fn{j}),...
        paramsa_B2_5.(fn{j}), paramsa_B2_6.(fn{j}), paramsa_B2_7.(fn{j}),...
        paramsa_B2_8.(fn{j}), paramsa_B2_9.(fn{j}), paramsa_B2_10.(fn{j}),...
        paramsa_B2_11.(fn{j}), paramsa_B2_12.(fn{j}), paramsa_B2_13.(fn{j}),...
        paramsa_B2_14.(fn{j}), paramsa_B2_15.(fn{j}), paramsa_B2_16.(fn{j}),...
        paramsa_B2_17.(fn{j}), paramsa_B2_18.(fn{j}), paramsa_B2_19.(fn{j}),...
        paramsa_B2_20.(fn{j}), paramsa_B2_21.(fn{j}),paramsa_B2_22.(fn{j}),...
        paramsa_B2_23.(fn{j}), paramsa_B2_24.(fn{j}), paramsa_B2_25.(fn{j}),...
        paramsa_B2_26.(fn{j}), paramsa_B2_27.(fn{j}), paramsa_B2_28.(fn{j}),...
        paramsa_B2_29.(fn{j}), paramsa_B3_1.(fn{j}),paramsa_B3_2.(fn{j}),...
        paramsa_B3_3.(fn{j}), paramsa_B3_4.(fn{j}), paramsa_B3_5.(fn{j}),...
        paramsa_B3_6.(fn{j}), paramsa_B3_7.(fn{j}), paramsa_B3_8.(fn{j}),...
        paramsa_B3_9.(fn{j}), paramsa_B3_10.(fn{j}), paramsa_B3_11.(fn{j}),...
        paramsa_B3_12.(fn{j}), paramsa_B3_13.(fn{j}), paramsa_B3_14.(fn{j}),...
        paramsa_B3_15.(fn{j}), paramsa_B3_16.(fn{j})];
end

fn = fieldnames(stats_B1_1);
stats = struct;
for j = 1:numel(fn)
    stats.(fn{j}) = [statsa_B1_1.(fn{j}),...
        statsa_B1_2.(fn{j}), statsa_B1_3.(fn{j}), statsa_B1_4.(fn{j}),...
        statsa_B1_5.(fn{j}), statsa_B1_6.(fn{j}), statsa_B1_7.(fn{j}),...
        statsa_B1_9.(fn{j}), statsa_B1_10.(fn{j}),...
        statsa_B1_11.(fn{j}), statsa_B1_12.(fn{j}), statsa_B1_13.(fn{j}),...
        statsa_B1_14.(fn{j}), statsa_B1_15.(fn{j}), statsa_B1_16.(fn{j}),...
        statsa_B1_17.(fn{j}), statsa_B1_18.(fn{j}), statsa_B1_19.(fn{j}),...
        statsa_B1_20.(fn{j}), statsa_B1_21.(fn{j}),statsa_B1_22.(fn{j}),...
        statsa_B1_23.(fn{j}), statsa_B1_24.(fn{j}), statsa_B1_25.(fn{j}),...
        statsa_B1_26.(fn{j}), statsa_B1_27.(fn{j}), statsa_B1_28.(fn{j}),...
        statsa_B1_29.(fn{j}), statsa_B1_30.(fn{j}), statsa_B1_31.(fn{j}),...
		statsa_B1_32.(fn{j}), statsa_B2_1.(fn{j}),...
        statsa_B2_2.(fn{j}), statsa_B2_3.(fn{j}), statsa_B2_4.(fn{j}),...
        statsa_B2_5.(fn{j}), statsa_B2_6.(fn{j}), statsa_B2_7.(fn{j}),...
        statsa_B2_8.(fn{j}), statsa_B2_9.(fn{j}), statsa_B2_10.(fn{j}),...
        statsa_B2_11.(fn{j}), statsa_B2_12.(fn{j}), statsa_B2_13.(fn{j}),...
        statsa_B2_14.(fn{j}), statsa_B2_15.(fn{j}), statsa_B2_16.(fn{j}),...
        statsa_B2_17.(fn{j}), statsa_B2_18.(fn{j}), statsa_B2_19.(fn{j}),...
        statsa_B2_20.(fn{j}), statsa_B2_21.(fn{j}),statsa_B2_22.(fn{j}),...
        statsa_B2_23.(fn{j}), statsa_B2_24.(fn{j}), statsa_B2_25.(fn{j}),...
        statsa_B2_26.(fn{j}), statsa_B2_27.(fn{j}), statsa_B2_28.(fn{j}),...
        statsa_B2_29.(fn{j}), statsa_B3_1.(fn{j}),statsa_B3_2.(fn{j}),...
        statsa_B3_3.(fn{j}), statsa_B3_4.(fn{j}), statsa_B3_5.(fn{j}),...
        statsa_B3_6.(fn{j}), statsa_B3_7.(fn{j}), statsa_B3_8.(fn{j}),...
        statsa_B3_9.(fn{j}), statsa_B3_10.(fn{j}), statsa_B3_11.(fn{j}),...
        statsa_B3_12.(fn{j}), statsa_B3_13.(fn{j}), statsa_B3_14.(fn{j}),...
        statsa_B3_15.(fn{j}), statsa_B3_16.(fn{j})];
end
%% Find numerical CVmin points and corresponding S values
Fz_theta1 = Fz(params.theta == 1.0);
[Fz_min_theta1,i_theta1] = min(Fz_theta1);
Fz_theta5 = Fz(params.theta == 5.0);
[Fz_min_theta5,i_theta5] = min(Fz_theta5);
Fz_theta10 = Fz(params.theta == 10.0);
[Fz_min_theta10,i_theta10] = min(Fz_theta10);
Fz_theta20 = Fz(params.theta == 20.0);
[Fz_min_theta20,i_theta20] = min(Fz_theta20);
Fz_theta40 = Fz(params.theta == 40.0);
[Fz_min_theta40,i_theta40] = min(Fz_theta40);
Fz_theta80 = Fz(params.theta == 80.0);
[Fz_min_theta80,i_theta80] = min(Fz_theta80);

S_theta1 = S(params.theta == 1.0);
Sstar_theta1 = S_theta1(i_theta1);
S_theta5 = S(params.theta == 5.0);
Sstar_theta5 = S_theta5(i_theta5);
S_theta10 = S(params.theta == 10.0);
Sstar_theta10 = S_theta10(i_theta10);
S_theta20 = S(params.theta == 20.0);
Sstar_theta20 = S_theta20(i_theta20);
S_theta40 = S(params.theta == 40.0);
Sstar_theta40 = S_theta40(i_theta40);
S_theta80 = S(params.theta == 80.0);
Sstar_theta80 = S_theta80(i_theta80);

x = linspace(1e-4,1,1e5);
fs_ax = 18;
lw_plot = 3;
ms = 10;
%close all
figure;
plot(-10:1:-1,-10:1:-1,'linewidth',lw_plot, 'color', 'black')
hold on
scatter([Sstar_theta1, Sstar_theta5, Sstar_theta10, Sstar_theta20, Sstar_theta40, Sstar_theta80],...
    sqrt([Fz_min_theta1, Fz_min_theta5, Fz_min_theta10, Fz_min_theta20, Fz_min_theta40, Fz_min_theta80]),...
    8*ms, 'filled','Black')
scatter(x, sqrt(((2./x) - 1)./((1./x).^2)),ms,1./(x.^2), 'fill')
scatter([Sstar_theta1, Sstar_theta5, Sstar_theta10, Sstar_theta20, Sstar_theta40, Sstar_theta80],...
    sqrt([Fz_min_theta1, Fz_min_theta5, Fz_min_theta10, Fz_min_theta20, Fz_min_theta40, Fz_min_theta80]),...
    8*ms,1./([Sstar_theta1, Sstar_theta5, Sstar_theta10, Sstar_theta20, Sstar_theta40, Sstar_theta80].^2),...
    'filled','MarkerEdgeColor','Black')
scatter(0, 0, 8*ms, 'yellow', 'LineWidth',2)
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Minimizing sensitivity} \boldmath$S^*$', 'interpreter', 'latex', 'fontsize', fs_ax)
ylabel({'\textbf{Minimum relative noise}';'\boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}\big|_\mathrm{min}$'},...
    'interpreter', 'latex', 'fontsize', fs_ax)
lgd = legend('Approximate theory', 'Numerical simulations', 'Location', 'southeast');
lgd.FontSize = fs_ax - 4;
xticks([0 0.25 0.5 0.75 1])
yticks([0 0.25 0.5 0.75 1])
set(gca,'ColorScale','log')
c = colorbar;
set(gca,'clim',[1,1e3])
% rotate label in Affinity designer
c.Label.Interpreter = 'latex';
c.Label.String = '\textbf{Relative sensor burden} \boldmath$N_2/N_x$';
c.Label.FontSize = fs_ax;
c.TickLabels = {'    10^0', '    10^1', '    10^2', '\geq 10^3'};
hColourbar.Label.Position(1) = 10;
xlim([0,1])
ylim([0,1])

figure;
plot(x, x)
hold on
scatter(sqrt(1./[1, 5, 10, 20, 40, 80]), ...
    [Sstar_theta1, Sstar_theta5, Sstar_theta10, Sstar_theta20, Sstar_theta40, Sstar_theta80])

figure;
plot(x, x)
hold on
scatter(sqrt((2*sqrt([1, 5, 10, 20, 40, 80]) - 1)./[1, 5, 10, 20, 40, 80]), ...
    sqrt([Fz_min_theta1, Fz_min_theta5, Fz_min_theta10, Fz_min_theta20, Fz_min_theta40, Fz_min_theta80]))

%% analyse reseeded numerical CVmin data for theta = 1 
% import data
stats_fname_rs_theta1 = strcat(data_path, ...
    'CVmin_theta1_reseed_STATISTICS.bin');
stats_rs_theta1 = read_AIF_three_components_statistics(stats_fname_rs_theta1);
params_fname_rs_theta1 = strcat(data_path, ...
    'CVmin_theta1_reseed_PARAMETERS.bin');
params_rs_theta1 = read_AIF_three_components_parameters(params_fname_rs_theta1);

% check flux and covariance balance
% 2% threshold
FB_rs_theta1 = check_flux_balance_AIF_three_components(stats_rs_theta1, ...
    params_rs_theta1, 2/100);
% 5% threshold
CB_B3_14 = check_covariance_balance_AIF_three_components(stats_rs_theta1, ...
    params_rs_theta1, 5/100); 
inds_rs_theta1 = FB_rs_theta1 & CB_B3_14;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_theta1);
for j = 1:numel(fn)
    field_vals = params_rs_theta1.(fn{j});
    params_rs_theta1.(fn{j}) = field_vals(inds_rs_theta1);
end
fn = fieldnames(stats_rs_theta1);
for j = 1:numel(fn)
    field_vals = stats_rs_theta1.(fn{j});
    stats_rs_theta1.(fn{j}) = field_vals(inds_rs_theta1);
end

% calculate numerical sensitivity coefficients
[S_rs_theta1, ExApprox_rs_theta1, EyApprox_rs_theta1, zAvgApprox_rs_theta1,...
    zVarApprox_rs_theta1, paramsa_rs_theta1] ...
    = ProcessSensitivityData(stats_rs_theta1, params_rs_theta1);
Fz_rs_theta1 = zVarApprox_rs_theta1./zAvgApprox_rs_theta1;

S_avg_theta1 = mean(S_rs_theta1(1:10));
S_std_theta1 = std(S_rs_theta1(1:10));
CV_avg_theta1 = mean(sqrt(Fz_rs_theta1(1:10)));
CV_std_theta1 = std(sqrt(Fz_rs_theta1(1:10)));

fprintf(strcat('theta=1\n',num2str(numel(S_rs_theta1)),'\n'))

%% analyse reseeded numerical CVmin data for theta = 5
% import data
stats_fname_rs_theta5 = strcat(data_path, ...
    'CVmin_theta5_reseed_STATISTICS.bin');
stats_rs_theta5 = read_AIF_three_components_statistics(stats_fname_rs_theta5);
params_fname_rs_theta5 = strcat(data_path, ...
    'CVmin_theta5_reseed_PARAMETERS.bin');
params_rs_theta5 = read_AIF_three_components_parameters(params_fname_rs_theta5);

% check flux and covariance balance
% 2% threshold
FB_rs_theta5 = check_flux_balance_AIF_three_components(stats_rs_theta5, ...
    params_rs_theta5, 2/100);
% 5% threshold
CB_B3_14 = check_covariance_balance_AIF_three_components(stats_rs_theta5, ...
    params_rs_theta5, 5/100); 
inds_rs_theta5 = FB_rs_theta5 & CB_B3_14;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_theta5);
for j = 1:numel(fn)
    field_vals = params_rs_theta5.(fn{j});
    params_rs_theta5.(fn{j}) = field_vals(inds_rs_theta5);
end
fn = fieldnames(stats_rs_theta5);
for j = 1:numel(fn)
    field_vals = stats_rs_theta5.(fn{j});
    stats_rs_theta5.(fn{j}) = field_vals(inds_rs_theta5);
end

% calculate numerical sensitivity coefficients
[S_rs_theta5, ExApprox_rs_theta5, EyApprox_rs_theta5, zAvgApprox_rs_theta5,...
    zVarApprox_rs_theta5, paramsa_rs_theta5] ...
    = ProcessSensitivityData(stats_rs_theta5, params_rs_theta5);
Fz_rs_theta5 = zVarApprox_rs_theta5./zAvgApprox_rs_theta5;

S_avg_theta5 = mean(S_rs_theta5(1:10));
S_std_theta5 = std(S_rs_theta5(1:10));
CV_avg_theta5 = mean(sqrt(Fz_rs_theta5(1:10)));
CV_std_theta5 = std(sqrt(Fz_rs_theta5(1:10)));

fprintf(strcat('theta=5\n',num2str(numel(S_rs_theta5)),'\n'))

%% analyse reseeded numerical CVmin data for theta = 10 
% import data
stats_fname_rs_theta10 = strcat(data_path, ...
    'CVmin_theta10_reseed_STATISTICS.bin');
stats_rs_theta10 = read_AIF_three_components_statistics(stats_fname_rs_theta10);
params_fname_rs_theta10 = strcat(data_path, ...
    'CVmin_theta10_reseed_PARAMETERS.bin');
params_rs_theta10 = read_AIF_three_components_parameters(params_fname_rs_theta10);

% check flux and covariance balance
% 2% threshold
FB_rs_theta10 = check_flux_balance_AIF_three_components(stats_rs_theta10, ...
    params_rs_theta10, 2/100);
% 5% threshold
CB_B3_14 = check_covariance_balance_AIF_three_components(stats_rs_theta10, ...
    params_rs_theta10, 5/100); 
inds_rs_theta10 = FB_rs_theta10 & CB_B3_14;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_theta10);
for j = 1:numel(fn)
    field_vals = params_rs_theta10.(fn{j});
    params_rs_theta10.(fn{j}) = field_vals(inds_rs_theta10);
end
fn = fieldnames(stats_rs_theta10);
for j = 1:numel(fn)
    field_vals = stats_rs_theta10.(fn{j});
    stats_rs_theta10.(fn{j}) = field_vals(inds_rs_theta10);
end

% calculate numerical sensitivity coefficients
[S_rs_theta10, ExApprox_rs_theta10, EyApprox_rs_theta10, zAvgApprox_rs_theta10,...
    zVarApprox_rs_theta10, paramsa_rs_theta10] ...
    = ProcessSensitivityData(stats_rs_theta10, params_rs_theta10);
Fz_rs_theta10 = zVarApprox_rs_theta10./zAvgApprox_rs_theta10;

S_avg_theta10 = mean(S_rs_theta10(1:10));
S_std_theta10 = std(S_rs_theta10(1:10));
CV_avg_theta10 = mean(sqrt(Fz_rs_theta10(1:10)));
CV_std_theta10 = std(sqrt(Fz_rs_theta10(1:10)));

fprintf(strcat('theta=10\n',num2str(numel(S_rs_theta10)),'\n'))

%% analyse reseeded numerical CVmin data for theta = 20 % TODO
% import data
stats_fname_rs_theta20 = strcat(data_path, ...
    'CVmin_theta20_reseed_STATISTICS.bin');
stats_rs_theta20 = read_AIF_three_components_statistics(stats_fname_rs_theta20);
params_fname_rs_theta20 = strcat(data_path, ...
    'CVmin_theta20_reseed_PARAMETERS.bin');
params_rs_theta20 = read_AIF_three_components_parameters(params_fname_rs_theta20);

% check flux and covariance balance
% 2% threshold
FB_rs_theta20 = check_flux_balance_AIF_three_components(stats_rs_theta20, ...
    params_rs_theta20, 2/100);
% 5% threshold
CB_B3_14 = check_covariance_balance_AIF_three_components(stats_rs_theta20, ...
    params_rs_theta20, 5/100); 
inds_rs_theta20 = FB_rs_theta20 & CB_B3_14;
fprintf(strcat(num2str(sum(inds_rs_theta20)/numel(params_rs_theta20.theta)),'\n'))

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_theta20);
for j = 1:numel(fn)
    field_vals = params_rs_theta20.(fn{j});
    params_rs_theta20.(fn{j}) = field_vals(inds_rs_theta20);
end
fn = fieldnames(stats_rs_theta20);
for j = 1:numel(fn)
    field_vals = stats_rs_theta20.(fn{j});
    stats_rs_theta20.(fn{j}) = field_vals(inds_rs_theta20);
end

% calculate numerical sensitivity coefficients
[S_rs_theta20, ExApprox_rs_theta20, EyApprox_rs_theta20, zAvgApprox_rs_theta20,...
    zVarApprox_rs_theta20, paramsa_rs_theta20] ...
    = ProcessSensitivityData(stats_rs_theta20, params_rs_theta20);
Fz_rs_theta20 = zVarApprox_rs_theta20./zAvgApprox_rs_theta20;

S_avg_theta20 = mean(S_rs_theta20(1:10));
S_std_theta20 = std(S_rs_theta20(1:10));
CV_avg_theta20 = mean(sqrt(Fz_rs_theta20(1:10)));
CV_std_theta20 = std(sqrt(Fz_rs_theta20(1:10)));

fprintf(strcat('theta=20\n',num2str(numel(S_rs_theta20)),'\n'))

%% analyse reseeded numerical CVmin data for theta = 40 
% import data
stats_fname_rs_theta40 = strcat(data_path, ...
    'CVmin_theta40_reseed_STATISTICS.bin');
stats_rs_theta40 = read_AIF_three_components_statistics(stats_fname_rs_theta40);
params_fname_rs_theta40 = strcat(data_path, ...
    'CVmin_theta40_reseed_PARAMETERS.bin');
params_rs_theta40 = read_AIF_three_components_parameters(params_fname_rs_theta40);

stats_fname_rs_theta40_1 = strcat(data_path, ...
    'CVmin_theta40_reseed_1_STATISTICS.bin');
stats_rs_theta40_1 = read_AIF_three_components_statistics(stats_fname_rs_theta40_1);
params_fname_rs_theta40_1 = strcat(data_path, ...
    'CVmin_theta40_reseed_1_PARAMETERS.bin');
params_rs_theta40_1 = read_AIF_three_components_parameters(params_fname_rs_theta40_1);

fn = fieldnames(params_rs_theta40);
for j = 1:numel(fn)
    params_rs_theta40.(fn{j}) = [params_rs_theta40.(fn{j});...
         params_rs_theta40_1.(fn{j})];
end
fn = fieldnames(stats_rs_theta40);
for j = 1:numel(fn)
    stats_rs_theta40.(fn{j}) = [stats_rs_theta40.(fn{j});...
         stats_rs_theta40_1.(fn{j})];
end

% check flux and covariance balance
% 2% threshold
FB_rs_theta40 = check_flux_balance_AIF_three_components(stats_rs_theta40, ...
    params_rs_theta40, 2/100);
% 5% threshold
CB_B3_14 = check_covariance_balance_AIF_three_components(stats_rs_theta40, ...
    params_rs_theta40, 5/100); 
inds_rs_theta40 = FB_rs_theta40 & CB_B3_14;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_theta40);
for j = 1:numel(fn)
    field_vals = params_rs_theta40.(fn{j});
    params_rs_theta40.(fn{j}) = field_vals(inds_rs_theta40);
end
fn = fieldnames(stats_rs_theta40);
for j = 1:numel(fn)
    field_vals = stats_rs_theta40.(fn{j});
    stats_rs_theta40.(fn{j}) = field_vals(inds_rs_theta40);
end

% calculate numerical sensitivity coefficients
[S_rs_theta40, ExApprox_rs_theta40, EyApprox_rs_theta40, zAvgApprox_rs_theta40,...
    zVarApprox_rs_theta40, paramsa_rs_theta40] ...
    = ProcessSensitivityData(stats_rs_theta40, params_rs_theta40);
Fz_rs_theta40 = zVarApprox_rs_theta40./zAvgApprox_rs_theta40;

S_avg_theta40 = mean(S_rs_theta40(1:10));
S_std_theta40 = std(S_rs_theta40(1:10));
CV_avg_theta40 = mean(sqrt(Fz_rs_theta40(1:10)));
CV_std_theta40 = std(sqrt(Fz_rs_theta40(1:10)));

fprintf(strcat('theta=40\n',num2str(numel(S_rs_theta40)),'\n'))

%% analyse reseeded numerical CVmin data for theta = 80 
% import data
stats_fname_rs_theta80 = strcat(data_path, ...
    'CVmin_theta80_reseed_STATISTICS.bin');
stats_rs_theta80 = read_AIF_three_components_statistics(stats_fname_rs_theta80);
params_fname_rs_theta80 = strcat(data_path, ...
    'CVmin_theta80_reseed_PARAMETERS.bin');
params_rs_theta80 = read_AIF_three_components_parameters(params_fname_rs_theta80);

% check flux and covariance balance
% 2% threshold
FB_rs_theta80 = check_flux_balance_AIF_three_components(stats_rs_theta80, ...
    params_rs_theta80, 2/100);
% 5% threshold
CB_B3_14 = check_covariance_balance_AIF_three_components(stats_rs_theta80, ...
    params_rs_theta80, 5/100); 
inds_rs_theta80 = FB_rs_theta80 & CB_B3_14;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_theta80);
for j = 1:numel(fn)
    field_vals = params_rs_theta80.(fn{j});
    params_rs_theta80.(fn{j}) = field_vals(inds_rs_theta80);
end
fn = fieldnames(stats_rs_theta80);
for j = 1:numel(fn)
    field_vals = stats_rs_theta80.(fn{j});
    stats_rs_theta80.(fn{j}) = field_vals(inds_rs_theta80);
end

% calculate numerical sensitivity coefficients
[S_rs_theta80, ExApprox_rs_theta80, EyApprox_rs_theta80, zAvgApprox_rs_theta80,...
    zVarApprox_rs_theta80, paramsa_rs_theta80] ...
    = ProcessSensitivityData(stats_rs_theta80, params_rs_theta80);
Fz_rs_theta80 = zVarApprox_rs_theta80./zAvgApprox_rs_theta80;

S_avg_theta80 = mean(S_rs_theta80(1:10));
S_std_theta80 = std(S_rs_theta80(1:10));
CV_avg_theta80 = mean(sqrt(Fz_rs_theta80(1:10)));
CV_std_theta80 = std(sqrt(Fz_rs_theta80(1:10)));

fprintf(strcat('theta=80\n',num2str(numel(S_rs_theta80)),'\n'))

%% reseed smalled CV value observed in numerics
% import data
stats_fname_rs_smallestCV = strcat(data_path, ...
    'Smallest_CV_reseed_STATISTICS.bin');
stats_rs_smallestCV = read_AIF_three_components_statistics(stats_fname_rs_smallestCV);
params_fname_rs_smallestCV = strcat(data_path, ...
    'Smallest_CV_reseed_PARAMETERS.bin');
params_rs_smallestCV = read_AIF_three_components_parameters(params_fname_rs_smallestCV);

% check flux and covariance balance
% 2% threshold
FB_rs_smallestCV = check_flux_balance_AIF_three_components(stats_rs_smallestCV, ...
    params_rs_smallestCV, 2/100);
% 5% threshold
CB_rs_smallestCV = check_covariance_balance_AIF_three_components(stats_rs_smallestCV, ...
    params_rs_smallestCV, 5/100); 
inds_rs_smallestCV = FB_rs_smallestCV & CB_rs_smallestCV;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_smallestCV);
for j = 1:numel(fn)
    field_vals = params_rs_smallestCV.(fn{j});
    params_rs_smallestCV.(fn{j}) = field_vals(inds_rs_smallestCV);
end
fn = fieldnames(stats_rs_smallestCV);
for j = 1:numel(fn)
    field_vals = stats_rs_smallestCV.(fn{j});
    stats_rs_smallestCV.(fn{j}) = field_vals(inds_rs_smallestCV);
end

% calculate numerical sensitivity coefficients
[S_rs_smallestCV, ExApprox_rs_smallestCV, EyApprox_rs_smallestCV, zAvgApprox_rs_smallestCV,...
    zVarApprox_rs_smallestCV, paramsa_rs_smallestCV] ...
    = ProcessSensitivityData(stats_rs_smallestCV, params_rs_smallestCV);
Fz_rs_smallestCV = zVarApprox_rs_smallestCV./zAvgApprox_rs_smallestCV;

S_avg_smallestCV = mean(S_rs_smallestCV);
S_std_smallestCV = std(S_rs_smallestCV);
CV_avg_smallestCV = mean(sqrt(Fz_rs_smallestCV));
CV_std_smallestCV = std(sqrt(Fz_rs_smallestCV));

N1_plus_N2 = (paramsa_rs_smallestCV.mu(1) +...
    paramsa_rs_smallestCV.theta(1)*mean(zAvgApprox_rs_smallestCV))/paramsa_rs_smallestCV.beta_z(1);
%% Make Fig. 3C
fs_ax = 18;
lw_plot = 3;
ms = 10;

x = linspace(1e-4,1,1e5);
figure;
plot(-10:1:-1,-10:1:-1,'linewidth',lw_plot, 'color', 'black')
hold on
scatter([S_avg_theta1, S_avg_theta5, S_avg_theta10, S_avg_theta20, ...
    S_avg_theta40, S_avg_theta80],...
    [CV_avg_theta1, CV_avg_theta5, CV_avg_theta10, CV_avg_theta20, ...
    CV_avg_theta40, CV_avg_theta80],...
    8*ms, 'filled','Black')
scatter(x, sqrt(((2./x) - 1)./((1./x).^2)),ms,1./(x.^2), 'fill')
scatter([S_avg_theta1, S_avg_theta5, S_avg_theta10, S_avg_theta20, ...
    S_avg_theta40, S_avg_theta80],...
    [CV_avg_theta1, CV_avg_theta5, CV_avg_theta10, CV_avg_theta20, ...
    CV_avg_theta40, CV_avg_theta80],...
    8*ms, 1./([S_avg_theta1, S_avg_theta5, S_avg_theta10, S_avg_theta20, ...
    S_avg_theta40, S_avg_theta80].^2),...
    'filled','MarkerEdgeColor','Black')
scatter(0, 0, 8*ms, 'yellow', 'LineWidth',2)
ax = gca;
ax.FontSize = fs_ax - 4; 
xlabel('\textbf{Minimizing sensitivity} \boldmath$S^*$', 'interpreter', 'latex', 'fontsize', fs_ax)
ylabel({'\textbf{Minimum relative noise}';'\boldmath$\frac{\mathrm{CV}_x}{\sqrt{1/\langle x \rangle}}\big|_\mathrm{min}$'},...
    'interpreter', 'latex', 'fontsize', fs_ax)
lgd = legend('Approximate theory', 'Numerical simulations', 'Location', 'southeast');
lgd.FontSize = fs_ax - 4;
xticks([0 0.25 0.5 0.75 1])
yticks([0 0.25 0.5 0.75 1])
set(gca,'ColorScale','log')
c = colorbar;
set(gca,'clim',[1,1e3])
% rotate label in Affinity designer
c.Label.Interpreter = 'latex';
c.Label.String = '\textbf{Relative control burden} \boldmath$N_2/N_x$';
c.Label.FontSize = fs_ax;
c.TickLabels = {'    10^0', '    10^1', '    10^2', '\geq 10^3'};
hColourbar.Label.Position(1) = 10;
xlim([0,1])
ylim([0,1.01])
exportgraphics(gcf, '.\Figures\Fig3C.pdf','ContentType','vector')

%%  reseed parameters for largest value of (noise suppression)/sensitivty 
%       from the subset of data included in plot w/ params truncated to 3
%       sig figs
% import data
stats_fname_rs_singular = strcat(data_path, ...
    'noise_vs_S_singular_STATISTICS.bin');
stats_rs_singular = read_AIF_three_components_statistics(stats_fname_rs_singular);
params_fname_rs_singular = strcat(data_path, ...
    'noise_vs_S_singular_PARAMETERS.bin');
params_rs_singular = read_AIF_three_components_parameters(params_fname_rs_singular);

% check flux and covariance balance
% 2% threshold
FB_rs_singular = check_flux_balance_AIF_three_components(stats_rs_singular, ...
    params_rs_singular, 2/100);
% 5% threshold
CB_rs_singular = check_covariance_balance_AIF_three_components(stats_rs_singular, ...
    params_rs_singular, 5/100); 
inds_rs_singular = FB_rs_singular & CB_rs_singular;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_singular);
for j = 1:numel(fn)
    field_vals = params_rs_singular.(fn{j});
    params_rs_singular.(fn{j}) = field_vals(inds_rs_singular);
end
fn = fieldnames(stats_rs_singular);
for j = 1:numel(fn)
    field_vals = stats_rs_singular.(fn{j});
    stats_rs_singular.(fn{j}) = field_vals(inds_rs_singular);
end

% calculate numerical sensitivity coefficients
[S_rs_singular, ExApprox_rs_singular, EyApprox_rs_singular, zAvgApprox_rs_singular,...
    zVarApprox_rs_singular, paramsa_rs_singular] ...
    = ProcessSensitivityData(stats_rs_singular, params_rs_singular);
Fz_rs_singular = zVarApprox_rs_singular./zAvgApprox_rs_singular;

S_avg_singular = mean(S_rs_singular);
S_std_singular = std(S_rs_singular);
CV_avg_singular = mean(sqrt(Fz_rs_singular));
CV_std_singular = std(sqrt(Fz_rs_singular));

%%  reseed parameters for largest value of (noise suppression)/sensitivty 
%       from the subset of data included in plot w/ original params
% import data
stats_fname_rs_singular_orig = strcat(data_path, ...
    'noise_vs_S_singular_orig_STATISTICS.bin');
stats_rs_singular_orig = read_AIF_three_components_statistics(stats_fname_rs_singular_orig);
params_fname_rs_singular_orig = strcat(data_path, ...
    'noise_vs_S_singular_orig_PARAMETERS.bin');
params_rs_singular_orig = read_AIF_three_components_parameters(params_fname_rs_singular_orig);

% check flux and covariance balance
% 2% threshold
FB_rs_singular_orig = check_flux_balance_AIF_three_components(stats_rs_singular_orig, ...
    params_rs_singular_orig, 2/100);
% 5% threshold
CB_rs_singular_orig = check_covariance_balance_AIF_three_components(stats_rs_singular_orig, ...
    params_rs_singular_orig, 5/100); 
inds_rs_singular_orig = FB_rs_singular_orig & CB_rs_singular_orig;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_singular_orig);
for j = 1:numel(fn)
    field_vals = params_rs_singular_orig.(fn{j});
    params_rs_singular_orig.(fn{j}) = field_vals(inds_rs_singular_orig);
end
fn = fieldnames(stats_rs_singular_orig);
for j = 1:numel(fn)
    field_vals = stats_rs_singular_orig.(fn{j});
    stats_rs_singular_orig.(fn{j}) = field_vals(inds_rs_singular_orig);
end

% calculate numerical sensitivity coefficients
[S_rs_singular_orig, ExApprox_rs_singular_orig, EyApprox_rs_singular_orig, zAvgApprox_rs_singular_orig,...
    zVarApprox_rs_singular_orig, paramsa_rs_singular_orig] ...
    = ProcessSensitivityData(stats_rs_singular_orig, params_rs_singular_orig);
Fz_rs_singular_orig = zVarApprox_rs_singular_orig./zAvgApprox_rs_singular_orig;

S_avg_singular_orig = mean(S_rs_singular_orig);
S_std_singular_orig = std(S_rs_singular_orig);
CV_avg_singular_orig = mean(sqrt(Fz_rs_singular_orig));
CV_std_singular_orig = std(sqrt(Fz_rs_singular_orig));

%%  reseed parameters for another small S + significant noise suppression
% import data
stats_fname_rs_singular_1 = strcat(data_path, ...
    'noise_vs_S_singular_1_STATISTICS.bin');
stats_rs_singular_1 = read_AIF_three_components_statistics(stats_fname_rs_singular_1);
params_fname_rs_singular_1 = strcat(data_path, ...
    'noise_vs_S_singular_1_PARAMETERS.bin');
params_rs_singular_1 = read_AIF_three_components_parameters(params_fname_rs_singular_1);

% check flux and covariance balance
% 2% threshold
FB_rs_singular_1 = check_flux_balance_AIF_three_components(stats_rs_singular_1, ...
    params_rs_singular_1, 2/100);
% 5% threshold
CB_rs_singular_1 = check_covariance_balance_AIF_three_components(stats_rs_singular_1, ...
    params_rs_singular_1, 5/100); 
inds_rs_singular_1 = FB_rs_singular_1 & CB_rs_singular_1;

% subset data based on flux and covariance balance test
fn = fieldnames(params_rs_singular_1);
for j = 1:numel(fn)
    field_vals = params_rs_singular_1.(fn{j});
    params_rs_singular_1.(fn{j}) = field_vals(inds_rs_singular_1);
end
fn = fieldnames(stats_rs_singular_1);
for j = 1:numel(fn)
    field_vals = stats_rs_singular_1.(fn{j});
    stats_rs_singular_1.(fn{j}) = field_vals(inds_rs_singular_1);
end

% calculate numerical sensitivity coefficients
[S_rs_singular_1, ExApprox_rs_singular_1, EyApprox_rs_singular_1, zAvgApprox_rs_singular_1,...
    zVarApprox_rs_singular_1, paramsa_rs_singular_1] ...
    = ProcessSensitivityData(stats_rs_singular_1, params_rs_singular_1);
Fz_rs_singular_1 = zVarApprox_rs_singular_1./zAvgApprox_rs_singular_1;

S_avg_singular_1 = mean(S_rs_singular_1);
S_std_singular_1 = std(S_rs_singular_1);
CV_avg_singular_1 = mean(sqrt(Fz_rs_singular_1));
CV_std_singular_1 = std(sqrt(Fz_rs_singular_1));

%% make N1 corresponding to numerical CVmin vs N2/Nx plot
N1 = params.mu./params.beta_z;
figure;
scatter([5, 10, 20, 40, 80], [N1(Fz == Fz_min_theta5), ...
    N1(Fz == Fz_min_theta10), N1(Fz == Fz_min_theta20), ...
    N1(Fz == Fz_min_theta40), N1(Fz == Fz_min_theta80)], 24,'filled','black')
ylabel(strcat('\boldmath$N_1$ \textbf{for numerical }',...
    '\boldmath$\mathrm{CV}_x^{\mathrm{min}}$'),...
    'Interpreter', 'Latex', 'fontsize', 16)
xlabel('\textbf{Relative sensor burden} \boldmath$N_2/N_x$', 'interpreter', 'latex', 'fontsize', fs_ax)
exportgraphics(gcf, '.\Figures\SI_N1_vs_N2NX.pdf','ContentType','vector')
%%
figure;
plot(x, x)
hold on
scatter(sqrt(1./[1, 5, 10, 20, 40, 80]), ...
    [S_avg_theta1, S_avg_theta5, S_avg_theta10, S_avg_theta20, S_avg_theta40, S_avg_theta80])

figure;
plot(x, x)
hold on
scatter(sqrt((2*sqrt([1, 5, 10, 20, 40, 80]) - 1)./[1, 5, 10, 20, 40, 80]), ...
    [CV_avg_theta1, CV_avg_theta5, CV_avg_theta10, CV_avg_theta20, CV_avg_theta40, CV_avg_theta80])

[Sdev, iS]=max(abs([S_avg_theta1, S_avg_theta5, S_avg_theta10, S_avg_theta20, ...
    S_avg_theta40, S_avg_theta80] - sqrt(1./[1, 5, 10, 20, 40, 80]))./sqrt(1./[1, 5, 10, 20, 40, 80]))

[CVdev, iCV]=max(abs([CV_avg_theta1, CV_avg_theta5, CV_avg_theta10, CV_avg_theta20, ...
    CV_avg_theta40, CV_avg_theta80] - sqrt((2*sqrt([1, 5, 10, 20, 40, 80]) - 1)./[1, 5, 10, 20, 40, 80]))...
    ./sqrt((2*sqrt([1, 5, 10, 20, 40, 80]) - 1)./[1, 5, 10, 20, 40, 80]))

%%
save('3comp_ref_actuated_dilution_data')

%% define path where data for plotting will be saved
%{ 
save_path = '.\DataForPlotting\';

%% save Fig. 3B data for density adjustment
fileID = fopen(strcat(save_path,'Fig3B_data.txt'),'w');
formatspec = '%.20f %.20f \r\n';
data = [[S;S_avg_smallestCV]'; [sqrt(Fz);CV_avg_smallestCV]'];
fprintf(fileID, formatspec, data);
fclose(fileID);

    
%% save data for CV vs N1 figure for SI for density adjustment
N1 = params.mu./params.beta_z;

fileID = fopen(strcat(save_path,'SI_CV_vs_N1_data_1.txt'),'w');
formatspec = '%f %f \r\n';
data = [N1(params.theta==5.0); sqrt(Fz_theta5')];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'SI_CV_vs_N1_data_2.txt'),'w');
formatspec = '%f %f \r\n';
data = [N1(params.theta==10.0); sqrt(Fz_theta10')];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'SI_CV_vs_N1_data_3.txt'),'w');
formatspec = '%f %f \r\n';
data = [N1(params.theta==20.0); sqrt(Fz_theta20')];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'SI_CV_vs_N1_data_4.txt'),'w');
formatspec = '%f %f \r\n';
data = [N1(params.theta==40.0); sqrt(Fz_theta40')];
fprintf(fileID, formatspec, data);
fclose(fileID);
       %}
  
%% save data for CV vs S SI plot for density adjustment
%{
N2_Nx = params.theta./params.beta_z;

fileID = fopen(strcat(save_path,'SI_CV_vs_S_data_1.txt'),'w');
formatspec = '%f %f \r\n';
data = [S(N2_Nx == 1)'; sqrt(Fz(N2_Nx == 1)')];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'SI_CV_vs_S_data_2.txt'),'w');
formatspec = '%f %f \r\n';
data = [S(N2_Nx == 5)'; sqrt(Fz(N2_Nx == 5)')];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'SI_CV_vs_S_data_3.txt'),'w');
formatspec = '%f %f \r\n';
data = [S(N2_Nx == 10)'; sqrt(Fz(N2_Nx == 10)')];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'SI_CV_vs_S_data_4.txt'),'w');
formatspec = '%f %f \r\n';
data = [S(N2_Nx == 20)'; sqrt(Fz(N2_Nx == 20)')];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'SI_CV_vs_S_data_5.txt'),'w');
formatspec = '%f %f \r\n';
data = [S(N2_Nx == 40)'; sqrt(Fz(N2_Nx == 40)')];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'SI_CV_vs_S_data_6.txt'),'w');
formatspec = '%f %f \r\n';
data = [S(N2_Nx == 80)'; sqrt(Fz(N2_Nx == 80)')];
fprintf(fileID, formatspec, data);
fclose(fileID);

fileID = fopen(strcat(save_path,'SI_CV_vs_S_data_7.txt'),'w');
formatspec = '%f %f \r\n';
data = [S(N2_Nx > 80)'; sqrt(Fz(N2_Nx > 80)')];
fprintf(fileID, formatspec, data);
fclose(fileID);
%}
