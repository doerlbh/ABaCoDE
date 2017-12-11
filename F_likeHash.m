% Function: generate a nonstationary distribution
% Baihan Lin
% Columbia University
% December 2017 at IBM Research
%
% [new_x,new_y] = F_likeHash(x,y,window)

function [new_x, new_y] = F_likeHash(isGPU,x,y,window,P)

N = size(x,1);
M = P;
n = int64(N/window);

new_x = x;
new_y = zeros(size(y));

for w = 1:n
    new_map = randperm(M);
    disp('----------')
    disp(['For window ' num2str(w) ': ']);
    disp(new_map);
    for t = 1:window
        t_set = (w-1) * window + t;
        new_y(t_set) = new_map(uint64(y(t_set)));
    end
end

new_y = vec2mat(isGPU,new_y,P);

end


