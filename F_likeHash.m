% Function: generate a nonstationary distribution
% Baihan Lin
% Columbia University
% December 2017 at IBM Research
%
% [new_x,new_y] = F_likeHash(x,y,window)

function [new_x, new_y] = F_likeHash(x,y,window)

N = size(x,1);
M = length(unique(y));
n = int64(N/window);

new_x = x;
new_y = zeros(size(y));

for w = 1:n
    new_map = randperm(M);
    disp('----------')
    disp(['For window ' num2str(w) ': ']);
    disp(new_map);
    for t = 1:N
        new_y(t) = new_map(y(t));
    end
end

end


