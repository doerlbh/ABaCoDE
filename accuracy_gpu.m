% Function: calculate learning accuracy with GPU
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function acc = accuracy_gpu(predict,expectmat)

P = size(expectmat,2);
expect = mat2vec_gpu(expectmat,P);

acc = [submatch_gpu(predict, expect, P) sum(predict == expect)/length(predict)];

end
