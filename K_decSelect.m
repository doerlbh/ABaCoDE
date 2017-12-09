% Function: decision selection
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function d = K_decSelect(Z,B_p,hat_mu_p,v2)

P = size(B_p,3);
t_sample = zeros(1,P);

for p = 1:P
    theta = mvnrnd(hat_mu_p(p,:),v2*inv(B_p(:,:,p)));
    
%     size(Z)
%     size(theta.')
    
    t_sample(p) = Z*theta.';
end

[~, d] = max(t_sample);

end
