% Function: put label vector into matrix
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function l = mat2lin(m, r, c)

l = zeros(1,r*c);
t = 1;

for R = 1:r
    for C = 1:c
        l(t) = m(R,C);
        t = t + 1;
    end
end

end
