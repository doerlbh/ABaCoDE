% Function: generate a nonstationary distribution
% Baihan Lin
% Columbia University
% December 2017 at IBM Research
%
% [new_x,new_y] = F_likeHash(isGPU, x,y,window)

function [new_x, new_y] = F_likeHash(isGPU,x,y,window,P)

N = size(x,1);
M = P;
n = floor(N/window);
y = mat2vec(isGPU,y,P);

new_x = x;
new_y = y;

for w = 1:n
    new_map = randperm(M);
    disp('----------')
    disp(['For window ' num2str(w) ': ']);
    disp(new_map);
    for t = 1:window
        t_set = (w-1) * window + t;
        
%                 disp(['t-set' num2str(t_set)])
%                 disp(['y tset' num2str(y(t_set))])
%                 disp(['int y tset' num2str(uint64(y(t_set)))])
                
        new_set = uint64(y(t_set));
        if new_set == 0
            new_set = 1;
        end
        new_y(t_set) = new_map(new_set);
    end
end

new_y = vec2mat(isGPU,new_y,P);

end


