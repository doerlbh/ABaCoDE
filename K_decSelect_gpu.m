% Function: decision selection with GPU
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function d = K_decSelect_gpu(Z,B_p,hat_mu_p,v2)

P = size(B_p,3);
t_sample = zeros(1,P,'gpuArray');

for p = 1:P
    sigma = v2*inv(B_p(:,:,p));
    theta = mvnrnd(hat_mu_p(p,:),(sigma + sigma.')/2);
    
%     size(Z)
%     size(theta.')
    
    t_sample(p) = Z*theta.';
end

[~, d] = max(t_sample);

end
