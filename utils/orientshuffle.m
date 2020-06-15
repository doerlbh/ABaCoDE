% Function: orient and shuffle the datasets
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function [x, y] = orientshuffle(x_all,y_all, o, batch)

pos_o = find(y_all(:,o) == 1);
not_pos_o = find(y_all(:,o) ~= 1);
train_index = [pos_o(1:size(pos_o,1));not_pos_o(1:size(pos_o,1))];
train_index = shuffle(train_index);

set_size = length(train_index);
set_size = set_size - mod(set_size, batch);

x = zeros(set_size, size(x_all,2));
y = zeros(set_size, size(y_all,2));

for t=1:set_size
    x(t,:) = double(x_all(train_index(t),:));
    y(t,:) = double(y_all(train_index(t),:));
end

end
