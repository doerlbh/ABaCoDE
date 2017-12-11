% Function: model static k-means
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% updated December 2017
% Z = F_embedding_static_k(isGPU, path,dataset,type,dist,C,emb,k)

function Z = F_embedding_static_k(isGPU, path,dataset,type,dist,C,emb,k)

load([path 'parameters/embedding_' dataset '_' dist '_' type '_k_' num2str(k) '_' num2str(emb)]);
Z = encode(autoenc1,C);
if isGPU == 1
    Z = gpuArray(Z.');
else
    Z = Z.';
end

clearvars autoenc1

end