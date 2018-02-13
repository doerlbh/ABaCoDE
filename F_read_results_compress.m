% Function: read mat in v7.3 version
% Baihan Lin
% Columbia University
% November 2017 at IBM Research

function [learn_accuracy,learn_result,learn_W] = F_read_results_compress(filename,isGPU)

if strcmp(filename,'')
    learn_accuracy = 0;
    learn_result = 0;
    learn_W = 0;
else
    m = matfile(filename);
    learn_accuracy = m.learn_accuracy;
    learn_result = m.learn_result;
    learn_W = m.learn_W;
    
    if isGPU
        learn_accuracy = gather(learn_accuracy)';
        learn_result = gather(learn_result)';
        learn_W = gather(learn_W);
    else
        learn_accuracy = learn_accuracy';
        learn_result = learn_result';
        learn_W = learn_W;
    end
end

end
