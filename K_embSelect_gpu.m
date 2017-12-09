% Function: embedding selection with GPU
% Baihan Lin
% Columbia University
% July 2017 at IBM Research 
% [W,Z] = K_embSelect(path,dataset,type,dist,k,C,E,B_k,hat_mu_k,vsqr_k) 

function [W,Z] = K_embSelect_gpu(path,dataset,type,dist,k,C,E,B_k,hat_mu_k,vsqr_k) 

k_sample = zeros(1,E,'gpuArray');

for k = 1:E
    sigma = vsqr_k*inv(B_k(:,:,k));
    mu_k = mvnrnd(hat_mu_k(k,:),(sigma+sigma.')/2);
    k_sample(k) = C * mu_k.';
end

[~, emb] = max(k_sample);
W = vec2mat_gpu(emb,E); 
Z = K_embedding_static_k_gpu(path,dataset,type,dist,C.',emb,k);

end
