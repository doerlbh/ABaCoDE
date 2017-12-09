% Function: calculate sub-accuracy
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function sub_accuracy = submatch(labels, expected, P)

sub_accuracy = zeros(1, P);

parfor t = 1:P
    exp_total = sum(expected == t);
    v_lab = double(labels == t);
    v_exp = double(expected == t);
    err =  sum((v_exp - v_lab) > 0);
    sub_accuracy(t) = (exp_total - err) / exp_total;
    
%     correct_total = sum(diag(v_lab*v_exp.'));
%     sub_accuracy(t) = correct_total / exp_total;
end

end
