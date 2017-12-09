% Function: orient and shuffle the datasets with GPU
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function x = K_halfshuffle_gpu(x_all,z_all, v, batch)

train_index = [];
for t = 1:length(v)
    pos_o = find(z_all(:) == v(t));
    train_index = [train_index;pos_o];
end

train_index = shuffle_gpu(train_index);
% set_size = length(train_index);
% set_size = set_size - mod(set_size, batch);
% x = zeros(set_size, size(x_all,2));
% 
% for t=1:set_size
%     x(t,:) = x_all(train_index(t),:);
% end
x = x_all(train_index,:);

end
