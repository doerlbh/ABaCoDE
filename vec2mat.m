% Function: put label vector into matrix
% Baihan Lin
% Columbia University
% July 2017 at IBM Research
% 
% m = vec2mat(v, P)

function m = vec2mat(v, P)
% length(v)

m = zeros(length(v),P);

for t = 1:length(v)
    %     t
    %     v(t)
    %     int8(v(t))
    m(t,int8(v(t))) = 1;
end

end