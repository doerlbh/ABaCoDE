% Function: decision selection
% Baihan Lin
% Columbia University
% July 2017 at IBM Research
% updated December 2017

function d = F_decSelect(isGPU,Z,B_p,hat_mu_p,v2)

P = size(B_p,3);
if isGPU == 1
    t_sample = zeros(1,P,'gpuArray');
else
    t_sample = zeros(1,P);
end

for p = 1:P
    sigma = v2*inv(B_p(:,:,p));
    theta = mvnrnd(hat_mu_p(p,:),(sigma + sigma.')/2);
    
    if size(Z) ==  size(theta.')
        Z = Z';
    end
%     size(Z)
%     size(theta.')
    
    t_sample(p) = Z*theta.';
end

[~, d] = max(t_sample);

end
