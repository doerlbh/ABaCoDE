% Function: update embedding
% Baihan Lin
% Columbia University
% July 2017 at IBM Research
% updated December 2017
% function z = F_update_compress(isGPU,compress,x,dataset,type,dist,rewd,max_epochs,path,method)

function z = F_update_compress(isGPU,compress,x,dataset,type,dist,rewd,max_epochs,path,method)

if isGPU == 1
    
    switch method
        
        case 'AE'
            z = 1;
            for t = 1 : length(compress)
                
                o = num2str(compress(t));
                disp(['===== Training starting for ' o ' =====']);
                
                autoenc_1 = trainAutoencoder(gather(x)',double(compress(t)),'MaxEpochs',max_epochs,'UseGPU',true);
                
%                 clearvars x;
                disp(['===== Training finished for ' o ' =====']);
                save([path 'parameters/embedding_' dataset '_' dist '_' rewd '_' type '_c_' num2str(compress(t))],'autoenc_1');
                clearvars autoenc_1;
            end
            
        otherwise
            z = 0;
            disp('wrong method defined')
    end
    
else
    switch method
        
        case 'AE'
            z = 1;
            for t = 1 : length(compress)
                
                o = num2str(compress(t));
                
                autoenc_1 = trainAutoencoder(x',double(compress(t)),'MaxEpochs',max_epochs);
%                 clearvars x;
                
                disp(['===== Training finished for ' o ' =====']);
                save([path 'parameters/embedding_' dataset '_' dist '_' rewd '_' type '_c_' num2str(compress(t))],'autoenc_1');
                clearvars autoenc_1;
            end
            
        otherwise
            z = 0;
            disp('wrong method defined')
    end
    
end

end


