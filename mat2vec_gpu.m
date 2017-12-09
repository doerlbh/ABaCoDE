% Function: put label matrix into vector with GPU
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function v = mat2vec_gpu(m, P)

N = size(m,1);
v = zeros(1, N,'gpuArray');

for p = 1:P
    is = double(m(:,p) == 1.0);
    %     p
    %     size(v)
    %     size(is)
    v = (v.' + double(p) * is).';
end

end
