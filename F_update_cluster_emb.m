% Function: update embedding
% Baihan Lin
% Columbia University
% July 2017 at IBM Research
% updated December 2017
% [z,c] = F_update_cluster_emb(isGPU, k,x,z,dataset,type,dist,hiddenSize1,MaxEpochs1,path)

function [z,c] = F_update_cluster_emb(isGPU, k,x,z,dataset,type,dist,hiddenSize1,MaxEpochs1,path)

if isGPU == 1
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
        x_t = K_halfshuffle_gpu(x,z,[t],1);
        disp(['training size is ', num2str(size(x_t,1))]);
        x_t = gather(x_t.');
        
        autoenc1 = trainAutoencoder(x_t,hiddenSize1,'MaxEpochs',MaxEpochs1,'UseGPU',true);

        clearvars x_t;
        disp(['===== Training finished for ' o ' =====']);
        save([path 'parameters/embedding_' dataset '_' dist '_' type '_k_' num2str(k) '_' o],'autoenc1');
        clearvars autoenc1;
    end
    
else
    if z == 0
        [z, c] = kmeans(x,k,'MaxIter',1000,'Replicates',20);
    else
        c = 0;
        disp('no reclustering involved')
    end
    
    for t = 1:k
        o = num2str(t);
        disp(['===== Training starting for ' o ' =====']);
        x_t = F_halfshuffle(x,z,[t],1);
        disp(['training size is ', num2str(size(x_t,1))]);
        x_t = x_t.';
        
        autoenc1 = trainAutoencoder(x_t,hiddenSize1,'MaxEpochs',MaxEpochs1);
        clearvars x_t;
        
        disp(['===== Training finished for ' o ' =====']);
        save([path 'parameters/embedding_' dataset '_' dist '_' type '_k_' num2str(k) '_' o],'autoenc1');
        clearvars autoenc1;
    end
end

end


