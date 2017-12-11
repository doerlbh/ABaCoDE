% Function: read mat in v7.3 version
% Baihan Lin
% Columbia University
% November 2017 at IBM Research

function [learn_accuracy,learn_ns_z] = F_read_results(filename,isGPU)

m = matfile(filename);
learn_accuracy = m.learn_accuracy;
learn_ns_z = m.learn_ns_z;

if isGPU
    learn_accuracy = gather(learn_accuracy)';
    learn_ns_z = gather(learn_ns_z);
else
    learn_accuracy = learn_accuracy';
end

end
