function analyse(c, d)
%read in data and call calc stats on the data.
% then plot data.

scatter(c,d);
title=('Scatter plots for data sets provided');
% regression stats
fprintf('Regression statistics for data sets provided:\n');
mdl = fitlm(c,d)

%function calcStatsReg()
%function plotModel()

