function [a, s] = myRand(low, high)

a = low + rand(3, 4)*(high-low);
s = sumAllElements(a)

function summa = sumAllElements(m)

global v;
v = m(:);
summa = sum(v);