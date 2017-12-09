% Function: put label vector into matrix
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% 
% m = vec2mat_gpu(v, P)

function m = vec2mat_gpu(v, P)

m = zeros(length(v),P,'gpuArray');

for t = 1:length(v)
    %     t
    %     v(t)
    %     int8(v(t))
    m(t,int8(v(t))) = 1;
end

end