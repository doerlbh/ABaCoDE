% Function: embedding selection
% Baihan Lin
% Columbia University
% July 2017 at IBM Research
% updated December 2017
% function [W,Z,complexity] = F_compressSelect(isGPU,path,dataset,type,dist,rewdcompress,C,E,B_k,hat_mu_k,vsqr_k,method)

function [W,Z,emb,complexity] = F_compressSelect(isGPU,path,dataset,type,dist,rewd,compress,C,E,B_k,hat_mu_k,vsqr_k,method)

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

switch method
    
    case 'linear'
        Z = imresize(C, [1,compress(emb)]);
        complexity = compress(emb);
        
    case 'AE'
        Z = F_embedding_compress(isGPU,path,dataset,type,dist,rewd,C.',emb,compress);
        complexity = compress(emb);
        
    otherwise
        disp('wrong method');
        Z = 0;
        complexity = 0;
        
end

end
