% Function: generate a nonstationary distribution
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
%
% [new_x,new_y,new_z] = K_nonstationary_track(x,y,window)

function [new_x, new_y, new_z] = K_nonstationary_track(isGPU,x,y,window)

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

half_N = int64(N/2);
quarter_N = int64(N/4);

[x, y] = pairshuffle(x,y);
disp(['--> finish shuffling stationary input']);

disp(['n = ' num2str(n)])
[z, ~] = kmeans(x,n,'MaxIter',500,'Replicates',5);

x_first_half = x(1:half_N,:);
y_first_half = y(1:half_N,:);
z_first_half = z(1:half_N);
x_second_half = x(half_N+1:end,:);
y_second_half = y(half_N+1:end,:);
z_second_half = z(half_N+1:end);

new_x = [];
new_y = [];
new_z = [];

x_first_half_first = x(1:quarter_N,:);
y_first_half_first = y(1:quarter_N,:);
z_first_half_first = z_first_half(1:quarter_N);
x_first_half_second = x(1+quarter_N:half_N,:);
y_first_half_second = y(1+quarter_N:half_N,:);
z_first_half_second = z_first_half(1+quarter_N:end);

disp('clustering diversity 1st half:')
tabulate(z_first_half)

disp('clustering diversity 2nd half:')
tabulate(z_second_half)

disp('clustering diversity 1st 1st half:')
tabulate(z_first_half_first)

disp('clustering diversity 1st 2nd half:')
tabulate(z_first_half_second)

disp(['--> finish reclustering stationary input']);

seq_first = shuffle((1:n).');
seq_second = shuffle((1:n).');

disp('');
disp(['seq_first: ']);
seq_first.'
disp(['seq_second: ']);
seq_second.'

for t = 1:n
    %     [x_t, y_t, x_first_half, y_first_half, chosen_size] = K_pair_shuffle_group(x_first_half,y_first_half,z_first_half,window,n,2,1);
    %     disp(['-> finish principal cluster chosing']);
    disp('==================');
    disp(['window: ' num2str(t)]);
    
    [x_t_1, y_t_1, z_t_1, x_first_half_first, y_first_half_first, z_first_half_first, chosen_size_1] = K_pair_shuffle_group(x_first_half_first,y_first_half_first,z_first_half_first,window,seq_first(t),1);
    
    disp(['-> finish first main cluster chosing']);
    tabulate(z_t_1)
%     tabulate(z_first_half_first)
    
    [x_t_2, y_t_2, z_t_2, x_first_half_second, y_first_half_second, z_first_half_second, chosen_size_2] = K_pair_shuffle_group(x_first_half_second,y_first_half_second,z_first_half_second,window,seq_second(t),1);
    
    disp(['-> finish second main cluster chosing']);
    tabulate(z_t_2)
%     tabulate(z_first_half_second)
        
    second_half_size = window - chosen_size_1 - chosen_size_2;
    [fill_x,fill_y,fill_z,x_second_half,y_second_half,z_second_half] = K_pickout_correspond(x_second_half,y_second_half,z_second_half,second_half_size);
    
    disp(['-> finish diversity installing, second half size: ' num2str(second_half_size)]);
    tabulate(fill_z)
%     tabulate(z_second_half)
    
    x_t = [x_t_1;x_t_2;fill_x];
    y_t = [y_t_1;y_t_2;fill_y];
    z_t = [z_t_1.';z_t_2.';fill_z];
    
    disp(['-> in summary for window :' num2str(t)]);
    tabulate(z_t)
    
    [x_t, y_t] = pairshuffle(x_t,y_t);
    new_x = [new_x;x_t];
    new_y = [new_y;y_t];
    new_z = [new_z;z_t];
    
    disp(['----> finish generating nonstationary dist for window ' num2str(t)]);
end

disp(['-> in summary for all data']);
tabulate(new_z)

if isGPU == 1
    new_x = gpuArray(new_x);
    new_y = gpuArray(new_y);
    new_z = gpuArray(new_z);
end
    
end


