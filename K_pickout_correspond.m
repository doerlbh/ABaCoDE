% Function: to shuffle the rows of two matrices
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% 
% [chosen_x, chosen_y,chosen_z, left_x, left_y] = K_pickout_correspond(x,y,z,chosen_size)

function [chosen_x,chosen_y,chosen_z,left_x,left_y,left_z] = K_pickout_correspond(x,y,z,chosen_size)

chosen_size = int64(chosen_size)
% size(x)
chosen_x = x(1:chosen_size,:);
chosen_y = y(1:chosen_size,:);
chosen_z = z(1:chosen_size);
left_x = x(chosen_size+1:end,:);
left_y = y(chosen_size+1:end,:);
left_z = z(chosen_size+1:end);

end