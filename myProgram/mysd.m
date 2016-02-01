function [stdev] = mysd(x)
%mysd Returns the std deviation of matrix x
stdev = sqrt(myvar(x));
end