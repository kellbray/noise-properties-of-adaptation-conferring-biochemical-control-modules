% check_flux_balance_AIF_three_components.m
function logical_inds = ... 
    check_flux_balance_AIF_four_components(stats, params, tolerance)

Birth_W = params.alpha + params.k.*stats.Y_avg + stats.HFy_avg + stats.HFx_avg;
Death_W = params.beta_w.*stats.W_avg;
mean_flux_W = mean([Birth_W,Death_W],2);
err_W = abs(Birth_W - Death_W)./mean_flux_W;
inds_W = err_W <= tolerance;

Birth_X = params.theta.*stats.Z_avg + params.lambda.*stats.Complex_avg;
Death_X = params.C.*stats.XY_avg + params.beta_x.*stats.X_avg;
mean_flux_X = mean([Birth_X,Death_X],2);
err_X = abs(Birth_X - Death_X)./mean_flux_X;
inds_X = err_X <= tolerance;

Birth_Y = params.mu + params.lambda.*stats.Complex_avg;
Death_Y = params.C.*stats.XY_avg + params.beta_y.*stats.Y_avg;
mean_flux_Y = mean([Birth_Y,Death_Y],2);
err_Y = abs(Birth_Y - Death_Y)./mean_flux_Y;
inds_Y = err_Y <= tolerance;

Birth_Z = params.phi.*stats.W_avg;
Death_Z = params.beta_z.*stats.Z_avg;
mean_flux_Z = mean([Birth_Z,Death_Z],2);
err_Z = abs(Birth_Z - Death_Z)./mean_flux_Z;
inds_Z = err_Z <= tolerance;

if params.passive_reporter(1) == 1.0
    Birth_PR = params.alpha +params.k.*stats.Y_avg + stats.HFy_avg + stats.HFx_avg;
    Death_PR = params.beta_z.*stats.PR_avg;
else
   Birth_PR = ones(size(params.gamma));
   Death_PR = ones(size(params.gamma));
end
mean_flux_PR = mean([Birth_PR,Death_PR],2);
err_PR = abs(Birth_PR - Death_PR)./mean_flux_PR;
inds_PR = err_PR <= tolerance;

if (params.lambda(1) > 0 || params.gamma(1) > 0)
    Birth_Complex = params.C.*stats.XY_avg;
    Death_Complex = (params.gamma + params.lambda).*stats.Complex_avg;
else
    Birth_Complex = ones(size(params.gamma));
    Death_Complex = ones(size(params.gamma));
end

mean_flux_Complex = mean([Birth_Complex,Death_Complex],2);
err_Complex = abs(Birth_Complex - Death_Complex)./mean_flux_Complex;
inds_Complex = err_Complex <= tolerance;

logical_inds = inds_W & inds_X & inds_Y & inds_Z & inds_PR & inds_Complex;

end

