% Function: calculate sub-accuracy with GPU
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function sub_accuracy = submatch_gpu(labels, expected, P)

sub_accuracy = zeros(1, P, 'gpuArray');

parfor t = 1:P
    exp_total = sum(expected == t);
    v_lab = (labels == t);
    v_exp = (expected == t);
    err =  sum((v_exp - v_lab) > 0);
    sub_accuracy(t) = (exp_total - err) / exp_total;
    
%     correct_total = sum(diag(v_lab*v_exp.'));
%     sub_accuracy(t) = correct_total / exp_total;
end

end
