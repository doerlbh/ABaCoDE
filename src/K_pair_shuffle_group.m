% Function: orient, shuffle_gpu and group the datasets into nonstationary
% inputs
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
%
% [x,y,z,unchosen_x,unchosen_y,unchosen_z,set_size] = K_pair_shuffle_group(x_all,y_all,z_all,window,v,batch)

function [x, y, z, unchosen_x, unchosen_y, unchosen_z, set_size] = K_pair_shuffle_group(x_all,y_all,z_all,window,v,batch)

train_index = find(z_all == v);
unchosen_index = find(z_all ~= v);
% train_index = [];
% for t = 1:length(v)
%     pos_o = find(z_all(:) == v(t));
%     train_index = [train_index;pos_o];
% end

% unchosen_index = setdiff(1:size(x_all,1),train_index);
unchosen_x = x_all(unchosen_index,:);
unchosen_y = y_all(unchosen_index,:);
unchosen_z = z_all(unchosen_index);

set_size = length(train_index) - mod(length(train_index), batch);
if set_size > window
    
    disp('not good groups chosen, too many inputs')
    disp(['set_size: ' num2str(set_size)])
    x = 0;
    y = 0;
    z = 0;
    unchosen_x = 0;
    unchosen_y = 0;
    unchosen_z = 0;
    
else
    
%     size(train_index)
%     size(z_all)
%     size(x_all)
    
    x = x_all(train_index,:);
    y = y_all(train_index,:);
    z = z_all(train_index);
    
end

[x,y,z] = trishuffle(x,y,z);

end
