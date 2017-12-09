% Function: reinitialize multi-armed bandit for k
% Baihan Lin
% Columbia University
% October 2017 at IBM Research 
% 
% [B,g,hat_mu,vsqr] = K_init_MAB(X,Y)

function [B,g,hat_mu,vsqr] = K_init_MAB_gpu(X,Y)

vsqr = 0.2; 
hat_mu = zeros(X,Y,'gpuArray');
g = zeros(X,Y,'gpuArray');
B = zeros(Y,Y,X,'gpuArray');
for k = 1:X
    B(:,:,k) = gpuArray.eye(Y);
end

end
