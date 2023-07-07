% read_AIF_three_components_statistics.m
function data = read_AIF_four_components_statistics(filename)

data_array = read_binary_to_double_array(filename, 51);

% extract data into struct with fields with meaningful names
data = struct;
data.W_avg = data_array(:,1); % <w>
data.X_avg = data_array(:,2); % <x>
data.Y_avg = data_array(:,3); % <y>
data.Z_avg = data_array(:,4); % <z>
data.Complex_avg = data_array(:,5); % <complex>
data.PR_avg = data_array(:,6); % <pr>, pr = passive reporter
data.XY_avg = data_array(:,7); % <xy>
data.W_var = data_array(:,8); % Var(w)
data.X_var = data_array(:,9); % Var(x)
data.Y_var = data_array(:,10); % Var(y)
data.Z_var = data_array(:,11); % Var(z)
data.Complex_var = data_array(:,12); % Var(complex)
data.PR_var = data_array(:,13); % Var(pr)
data.XY_var = data_array(:,14); % Var(xy)
data.cov_W_X = data_array(:,15); % Cov(w,x)
data.cov_W_Y = data_array(:,16); % Cov(w,y)
data.cov_W_Z = data_array(:,17); % Cov(w,z)
data.cov_X_Y = data_array(:,18); % Cov(x,y)
data.cov_X_Z = data_array(:,19); % Cov(x,z)
data.cov_Y_Z = data_array(:,20); % Cov(y,z)
data.cov_Complex_W = data_array(:,21); % Cov(complex,w)
data.cov_Complex_X = data_array(:,22); % Cov(complex,x)
data.cov_Complex_Y = data_array(:,23); % Cov(complex,y)
data.cov_Complex_Z = data_array(:,24); % Cov(complex,z)
data.cov_PR_W = data_array(:,25); % Cov(pr,w)
data.cov_PR_X = data_array(:,26); % Cov(pr,x)
data.cov_PR_Y = data_array(:,27); % Cov(pr,y)
data.cov_PR_Z = data_array(:,28); % Cov(pr,z)
data.cov_PR_Complex = data_array(:,29); % Cov(pr,complex)
data.cov_XY_W = data_array(:,30); % Cov(xy,w)
data.cov_XY_X = data_array(:,31); % Cov(xy,x)
data.cov_XY_Y = data_array(:,32); % Cov(xy,y)
data.cov_XY_Z = data_array(:,33); % Cov(xy,z)
data.cov_XY_Complex = data_array(:,34); % Cov(xy,complex)
data.cov_XY_PR = data_array(:,35); % Cov(xy,pr)
data.HFx_avg = data_array(:, 36); % <f(x)>, repressing Hill function (when relevent)
data.HFy_avg = data_array(:, 37); % <g(y)>, activating Hill function (when relevent)
data.HFx_var = data_array(:, 38); % Var(f(x)) 
data.HFy_var = data_array(:, 39); % Var(g(y))
data.cov_HFx_W = data_array(:, 40); % Cov(f(x),w)
data.cov_HFy_W = data_array(:, 41); % Cov(g(y),w)
data.cov_HFx_X = data_array(:, 42); % Cov(f(x),x)
data.cov_HFy_X = data_array(:, 43); % Cov(g(y),x)
data.cov_HFx_Y = data_array(:, 44); % Cov(f(x),y)
data.cov_HFy_Y = data_array(:, 45); % Cov(g(y),y)
data.cov_HFx_Z = data_array(:, 46); % Cov(f(x),z)
data.cov_HFy_Z = data_array(:, 47); % Cov(g(y),z)
data.cov_HFx_Complex = data_array(:, 48); % Cov(f(x),complex)
data.cov_HFy_Complex = data_array(:, 49); % Cov(g(y),complex)
data.cov_HFx_PR = data_array(:, 50); % Cov(f(x),pr)
data.cov_HFy_PR = data_array(:, 51); % Cov(g(y),pr)

end