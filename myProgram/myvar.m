function [ variance ] = myvar(x)
%myvar Returns the variance of matrix x 
%   Detailed explanation goes here
[rows cols]=size(x);

xbar=avg(x);


resids = (x-xbar).^2;

variance = sum(resids)/cols;

end



