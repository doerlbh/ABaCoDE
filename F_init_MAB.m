% Function: reinitialize multi-armed bandit for k
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
%
% [B,g,hat_mu,vsqr] = F_init_MAB(isGPU, X,Y)

function [B,g,hat_mu,vsqr] = F_init_MAB(isGPU,X,Y)

if isGPU == 1
    vsqr = 0.2;
    hat_mu = zeros(X,Y,'gpuArray');
    g = zeros(X,Y,'gpuArray');
    B = zeros(Y,Y,X,'gpuArray');
    for k = 1:X
        B(:,:,k) = gpuArray.eye(Y);
    end
else
    vsqr = 0.2;
    hat_mu = zeros(X,Y);
    g = zeros(X,Y);
    B = zeros(Y,Y,X);
    for k = 1:X
        B(:,:,k) = eye(Y);
    end
end

end
