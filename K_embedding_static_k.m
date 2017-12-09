% Function: model static k-means
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% Z = K_embedding_static_k(path,dataset,type,dist,C,emb,k)

function Z = K_embedding_static_k(path,dataset,type,dist,C,emb,k)

load([path 'parameters/embedding_' dataset '_' dist '_' type '_k_' num2str(k) '_' num2str(emb)]);
Z = encode(autoenc1,C);
Z = Z.';

clearvars autoenc1 

end