% Function: calculate learning accuracy
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function acc = accuracy(isGPU,predict,expectmat)

P = size(expectmat,2);
expect = mat2vec(isGPU,expectmat,P);

acc = [submatch(isGPU, predict, expect, P) sum(predict == expect)/length(predict)];

end
