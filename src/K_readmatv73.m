% Function: read mat in v7.3 version
% Baihan Lin
% Columbia University
% October 2017 at IBM Research

function [learn_x,learn_y,prior_x] = K_readmatv73(filename)

m = matfile([filename '.mat']);
learn_x = m.learn_x;
learn_y = m.learn_y;
prior_x = m.prior_x;

end
