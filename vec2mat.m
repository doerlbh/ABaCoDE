% Function: put label vector into matrix
% Baihan Lin
% Columbia University
% July 2017 at IBM Research
% updated December 2017
% m = vec2mat(isGPU, v, P)

function m = vec2mat(isGPU, v, P)

if isGPU == 1
    m = zeros(length(v),P,'gpuArray');
else
    m = zeros(length(v),P);
end

for t = 1:length(v)
    m(t,int8(v(t))) = 1;
end

end