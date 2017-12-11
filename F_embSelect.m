% Function: embedding selection
% Baihan Lin
% Columbia University
% July 2017 at IBM Research
% updated December 2017
% [W,Z] = F_embSelect(isGPU,path,dataset,type,dist,k,C,E,B_k,hat_mu_k,vsqr_k)

function [W,Z] = F_embSelect(isGPU,path,dataset,type,dist,k,C,E,B_k,hat_mu_k,vsqr_k)

if isGPU == 1
    k_sample = zeros(1,E,'gpuArray');
else
    k_sample = zeros(1,E);
end

for kt = 1:E
    sigma = vsqr_k*inv(B_k(:,:,kt));
    mu_k = mvnrnd(hat_mu_k(kt,:),(sigma+sigma')/2);
    k_sample(kt) = C * mu_k.';
end

[~, emb] = max(k_sample);
W = vec2mat(isGPU,emb,E);

if strncmp(type, 'multimodel_',4)
    if emb == E
        Z = C;
    else if emb == E - 1
            Z = K_embedding_static_k(isGPU,path,dataset,type,dist,C.',1,1);
        else
            Z = K_embedding_static_k(isGPU,path,dataset,type,dist,C.',emb,k);
        end
    end
    
else    
    Z = K_embedding_static_k(isGPU,path,dataset,type,dist,C.',emb,k);
    
end

end
