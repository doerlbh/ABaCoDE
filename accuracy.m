% Function: calculate learning accuracy
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function acc = accuracy(predict,expectmat)

P = size(expectmat,2);
expect = mat2vec(expectmat,P);

acc = [submatch(predict, expect, P) sum(predict == expect)/length(predict)];

end
