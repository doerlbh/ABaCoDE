% Function: put label matrix into vector
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function v = mat2vec(isGPU, m, P)

N = size(m,1);
if isGPU == 1
    v = zeros(1, N,'gpuArray');
else
    v = zeros(1, N);
end

for p = 1:P
    is = double(m(:,p) == 1.0);
    %     p
    %     size(v)
    %     size(is)
    v = (v.' + double(p) * is).';
end

end
