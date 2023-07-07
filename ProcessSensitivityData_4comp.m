function [S, ExApprox, EyApprox, zAvgApprox, zVarApprox, paramsa, statsa] =...
    ProcessSensitivityData_4comp(stats, params)

    N = numel(params.mu);
    pairs = zeros(floor(N/2),2);
    found = zeros(N,1);
    nFoundPairs = 0;
    params1 = [params.phi';params.beta_w';...
            params.mu';params.theta';params.k';params.C';...
            params.beta_x';params.beta_y';params.beta_z';params.seed']';
    for i=1:N
        if found(i) == 0
            % if not found, find partner
            p = params1(i,:);
            %rows = cell(6,1);
            [r,~] = find(p(1)==params1(:,1) & p(2)==params1(:,2) &...
                p(3)==params1(:,3) & p(4)==params1(:,4) &...
                p(5)==params1(:,5) & p(6)==params1(:,6) &...
                p(7)==params1(:,7) & p(8)==params1(:,8) &...
                p(9)~=params1(:,9) & p(10)==params1(:,10));
            ind = r;
            if ~isempty(ind)
                % book keeping
                nFoundPairs = nFoundPairs+1;
                found(ind)=1;

                % store pair
                ind = min(ind); % handling repeat matches 
                pairs(nFoundPairs,:) = [i,ind];
            end
        end
    end
    % then, calculate
    h = abs(params1(pairs(1,1),9) - params1(pairs(1,2),9));
    der = zeros(nFoundPairs,1);
    zAvgApprox = zeros(nFoundPairs,1);
    zVarApprox = zeros(nFoundPairs,1);
    paramsa = struct;
    statsa = struct;
    ExApprox = zeros(nFoundPairs,1);
    EyApprox = zeros(nFoundPairs,1);
    Ex = params.C.*stats.XY_avg./...
        (params.theta.*stats.Z_avg);
    Ey = params.C.*stats.XY_avg./(params.mu);
    for i=1:nFoundPairs
        pair = pairs(i,:);
        [~,ii] = max([params1(pair(1),9),params1(pair(2),9)]);
        a = pair(ii);
        b = pair(pair~=a);
        der(i) = (stats.Z_avg(a) - stats.Z_avg(b))/h;
        zAvgApprox(i) = min([stats.Z_avg(a),stats.Z_avg(b)]) ...
            + 0.5*(max([stats.Z_avg(a),stats.Z_avg(b)]) ...
            - min([stats.Z_avg(a),stats.Z_avg(b)]));
        ExApprox(i) = min([Ex(a),Ex(b)]) ...
            + 0.5*(max([Ex(a),Ex(b)]) - min([Ex(a),Ex(b)]));
        EyApprox(i) = min([Ey(a),Ey(b)]) ...
            + 0.5*(max([Ey(a),Ey(b)]) - min([Ey(a),Ey(b)]));
        zVarApprox(i) = min([stats.Z_var(a),stats.Z_var(b)]) ...
            + 0.5*(max([stats.Z_var(a),stats.Z_var(b)]) ...
            - min([stats.Z_var(a),stats.Z_var(b)]));
        betaZ_mid = (params1(pair(1),9) + params1(pair(2),9))/2;
        fn = fieldnames(params);
        for j = 1:numel(fn)
            field_vals = params.(fn{j});
            if j == 10
                val = betaZ_mid;
            else
                val = field_vals(a);
            end
            if i > 1
                paramsa.(fn{j}) = [paramsa.(fn{j}),val];
            else
                paramsa.(fn{j}) = val;
            end
        end
        fn = fieldnames(stats);
        for j = 1:numel(fn)
            field_vals = stats.(fn{j});
            val = field_vals(a);
            if i > 1
                statsa.(fn{j}) = [statsa.(fn{j}),val];
            else
                statsa.(fn{j}) = val;
            end
        end
    end
    S = abs(betaZ_mid*der./zAvgApprox); 
end