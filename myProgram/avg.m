function [ mean ] = avg( x )
%avg Calculates mean of vector/matrix x
%   None needed
[rows cols] = size(x);
mean = sum(x)/cols;
end

