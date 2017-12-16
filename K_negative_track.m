% Function: generate a nonstationary distribution
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
%
% [new_x,new_y,new_z] = K_negative_track(isGPU, rate, x,y,window)

function [new_x, new_z] = K_negative_track(isGPU,rate,x,window)

if isGPU == 1
    x = gather(x);
end

N = size(x,1);
n = int64(N/window);
new_z = [];
new_x = x;

for it = 1:n
    if rate <= 1
        r = rate;
    else
        r = rand();
    end
    new_z = [new_z; randsrc(window,1,[1 0;r 1-r])];
    disp(['----> finish negativizing for window ' num2str(it) ' with n = ' num2str(r)]);
end

new_x(new_z == 1,:) = 255 - new_x(new_z == 1,:);

if isGPU == 1
    new_x = gpuArray(new_x);
    new_z = gpuArray(new_z);
end
    
end


