% Function: generate a nonstationary distribution
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
%
% [new_x,new_y,new_z] = K_nonstationary_track(x,y,window)

function [new_x, new_y, new_z] = K_nonstationary_puretrack(isGPU,x,y,window)

if isGPU == 1
    x = gather(x);
    y = gather(y);
end

N = size(x,1);
n = int64(N/window);

if N/2 < n
    disp('bad window size, use default window size 1000 to continue')
    window = 1000
    n = N/window;
end

[x, y] = pairshuffle(x,y);
disp(['--> finish shuffling stationary input']);

disp(['n = ' num2str(n)])
[z, ~] = kmeans(x,n,'MaxIter',100,'Replicates',5);

[new_z index] = sort(z);
new_x = x(index,:);
new_y = y(index,:);


if isGPU == 1
    new_x = gpuArray(new_x);
    new_y = gpuArray(new_y);
    new_z = gpuArray(new_z);
end

end


