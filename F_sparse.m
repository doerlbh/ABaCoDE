% Function: create sparse matrix
% Baihan Lin
% Columbia University
% July 2017 at IBM Research
% updated December 2017
% function new_M = F_sparse(M,size)

function new_M = F_sparse(isGPU, M,new_size)

if isGPU == 1
    new_M = zeros(new_size,'gpuArray');
else
    new_M = zeros(new_size);
end
old_size = size(M);
if old_size(1) > new_size(1) || old_size(2) > new_size(2)
    disp('too big a matrix to resize into sparse matrix!!')
    new_M = 0;
else
    new_M(1:old_size(1),1:old_size(2)) = M;
end

end
