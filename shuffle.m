% Function: to shuffle the rows of a matrix
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function new_m =shuffle(m)

if size(m,1) == 1;
    m = m';
end
seq = randperm(size(m,1));
new_m = m(seq,:);

% parfor t = 1:size(m,1)
%    new_m(t,:) = m(seq(t),:);
% end

end