% Function: generate a nonstationary distribution with GPU
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
%
% [new_x, new_y] = K_nonstationary(x,y,window)

function [new_x, new_y] = K_nonstationary_gpu(x,y,window)

N = size(x,1);
n = N/window;

if N/2 < n
    disp('bad window size, use default window size 1000 to continue')
    window = 1000
    n = N/window;
end

half_N = int64(N/2);
quarter_N = int64(N/4);

[x, y] = pairshuffle(x,y);

x_first_half = x(1:half_N,:);
y_first_half = y(1:half_N,:);
x_second_half = x(half_N+1:end,:);
y_second_half = y(half_N+1:end,:);

disp(['--> finish shuffling stationary input']);

[z_first_half, ~] = kmeans(x_first_half,n,'MaxIter',500,'Replicates',5);
new_x = [];
new_y = [];

x_first_half_first = x(1:quarter_N,:);
y_first_half_first = y(1:quarter_N,:);
z_first_half_first = z_first_half(1:quarter_N);
x_first_half_second = x(1+quarter_N:half_N,:);
y_first_half_second = y(1+quarter_N:half_N,:);
z_first_half_second = z_first_half(1+quarter_N:end);

disp(['--> finish reclustering stationary input']);

seq_first = shuffle((1:n).');
seq_second = shuffle((1:n).');

for t = 1:n-1
    %     [x_t, y_t, x_first_half, y_first_half, chosen_size] = K_pair_shuffle_group(x_first_half,y_first_half,z_first_half,window,n,2,1);
    %     disp(['-> finish principal cluster chosing']);
    
    [x_t_1, y_t_1, ~, x_first_half_first, y_first_half_first, z_first_half_first, chosen_size_1] = K_pair_shuffle_group_gpu(x_first_half_first,y_first_half_first,z_first_half_first,window,seq_first(t),1);
    disp(['-> finish first main cluster chosing']);
    
    [x_t_2, y_t_2, ~, x_first_half_second, y_first_half_second, z_first_half_second, chosen_size_2] = K_pair_shuffle_group_gpu(x_first_half_second,y_first_half_second,z_first_half_second,window,seq_second(t),1);
    disp(['-> finish second main cluster chosing']);
    
    [fill_x, fill_y, x_second_half, y_second_half] = K_pickout(x_second_half,y_second_half,window - chosen_size_1 - chosen_size_2);
    disp(['-> finish diversity installing']);
    
    x_t = [x_t_1;x_t_2;fill_x];
    y_t = [y_t_1;y_t_2;fill_y];
    
    [x_t, y_t] = pairshuffle(x_t,y_t);
    new_x = [new_x;x_t];
    new_y = [new_y;y_t];
    
    disp(['----> finish generating nonstationary dist for window ' num2str(t)]);
end

[x_t, y_t] = pairshuffle([x_first_half;x_second_half],[y_first_half;y_second_half]);
new_x = [new_x;x_t];
new_y = [new_y;y_t];
disp(['--> finish generating nonstationary dist for window ' num2str(n)]);

end


