% Function: to shuffle the rows of two matrices
% Baihan Lin
% Columbia University
% July 2017 at IBM Research

function [new_x, new_y] = pairshuffle(x,y)

seq = randperm(size(x,1));

if seq ~= size(y,1)
    size(x)
    size(y)
    new_x = -1;
    new_y = -1;
    disp('x cannot pair with y')
else
    %     new_x = x(seq,:);
    %     new_y = y(seq,:);
    
    pieces = 50;
    sec = length(seq)/pieces;
    for t = 1:pieces
        %         disp(t);
        startind = uint64(t*sec-sec+1);
        endind = uint64(t*sec);
        new_x(startind:endind,:) = x(seq(startind:endind),:);
        new_y(startind:endind,:) = y(seq(startind:endind),:);
    end
end

end