% testing shuffled rewards
% Baihan Lin
% Columbia University
% December 2017 at IBM Research

rng(1)

path = '/Users/DoerLBH/Dropbox/git/IBM_ABaCoDE/';
addpath(path);
addpath([path 'datasets']);

load mnist_uint8;
n = 20
learn_x = double(train_x(1:n,:));
learn_y = double(train_y(1:n,:));

learn_w = sum(learn_x(3,:)) % 33832
learn_z = mat2vec(0,learn_y,10) 
% 5     7     9    10     8     3     9     6     1    10     
% 4     7     7     6     8     6     4    10     8     5

[learn_x_2, learn_y_2] = F_likeHash(0,learn_x,learn_y,n,10);

learn_w_2 = sum(learn_x_2(3,:))
learn_z_2 = mat2vec(0,learn_y_2,10) 


