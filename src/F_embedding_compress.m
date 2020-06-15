% Function: model static k-means
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% updated December 2017
% function Z = F_embedding_compress(isGPU, path,dataset,type,dist,rewd,C,emb,compress)

function Z = F_embedding_compress(isGPU, path,dataset,type,dist,rewd,C,emb,compress)

load([path 'parameters/embedding_' dataset '_' dist '_' rewd '_' type '_c_' num2str(compress(emb))]);

% C
Z = encode(autoenc_1, C);

if isGPU == 1
    Z = gpuArray(Z.');
else
    Z = Z.';
end

% size(Z)

clearvars autoenc_1

end