% Function: online kmeans clustering
% Baihan Lin
% Columbia University
% October 2017 at IBM Research

function [z, c] = online_kmeans(x, c, c_count)

E = size(c,1);
D = zeros(1,E);
for t = 1:E
    D(t) = norm(x - c(t,:));
end

[~, z] = min(D);
c_count(z) = c_count(z) + 1;
c(z,:) = c(z,:) + (1/c_count(z))*(x - c(z,:));

end