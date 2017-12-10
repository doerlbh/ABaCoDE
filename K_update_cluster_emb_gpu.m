% Function: update embedding with GPU
% Baihan Lin
% Columbia University
% July 2017 at IBM Research
% [z,c] = K_update_cluster_emb(k,x,z,dataset,type,dist,hiddenSize1,MaxEpochs1,path)

function [z,c] = K_update_cluster_emb_gpu(k,x,z,dataset,type,dist,hiddenSize1,MaxEpochs1,path)

if gather(z) == 0
    [z, c] = kmeans(x,k,'MaxIter',1000,'Replicates',20);
    z = gpuArray(z);
    c = gpuArray(c);
else 
    c = 0;
    disp('no reclustering involved')
end;

for t = 1:k
    o = num2str(t);
    disp(['===== Training starting for ' o ' =====']);
    tic;
    x_t = K_halfshuffle_gpu(x,z,[t],1);
    disp(['training size is ', num2str(size(x_t,1))]);
    x_t = gather(x_t.');
    
%     MaxEpochs1
    
    autoenc1 = trainAutoencoder(x_t,hiddenSize1,'MaxEpochs',MaxEpochs1,'UseGPU',true);
%     disp('--- finish autoenc1');
    tGPUauto = toc;
    disp(['GPU autoencoder takes ' tGPUauto ' s']);
    clearvars x_t;
    disp(['===== Training finished for ' o ' =====']);
    save([path 'parameters/embedding_' dataset '_' dist '_' type '_k_' num2str(k) '_' o],'autoenc1');
    clearvars autoenc1;
end

end


