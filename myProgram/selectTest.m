function selectTest()
%This is the main function call, which will call subfunctions depending
% on the users choice of the following:
% 1. T-Tests
% 2. Correlations
% 3. ANONVA

prompt=('Please chose a type of analysis you would like to do\n');
%select1 = 0;
select1 = input(prompt);
% Identify input and offer correct options based on data set numbers
while select1~=3
 if select1 ==1
     y=xlsread('task25.xlsx','A1:A10');
    %Central tendency
     fprintf('Measures of Central tendency: \n');
     fprintf('Mean = %d\n',avg(y));
     fprintf('Mode = %d\n',mode(y));
     fprintf('Median = %d\n',median(y));
     %variance & std dev
     var = myvar(y);
     fprintf('Measures of Diffusion: \n');
     fprintf('Variance = %d\n',var);
     fprintf('Std deviation = %d\n',mysd(y));
     % shape
     fprintf('Shape: \n');
     fprintf('Skew = %d\n',skewness(y));
     fprintf('Kurtosis = %d\n',kurtosis(y));
     % normality
     fprintf('Normality testing: \n');
     kstresult = kstest(y);
     fprintf('Kolmogorov-Smirnov test result = %d\n',kstresult);
     if kstresult==1
         fprintf('Null hypothesis rejected \n');
     else
         fprintf('Null hypothesis cannot be rejected \n');
     end
     %quartiles
     fprintf('Quartiles: \n');
     fprintf('1st quartile: %d\n',quantile(y,0.25));
     fprintf('2nd quartile: %d\n',quantile(y,0.50));
     fprintf('3rd quartile: %d\n',quantile(y,0.75));
 elseif select1 == 2
     c = xlsread('task25.xlsx','A1:A10');
     d = xlsread('task25.xlsx','B1:B10');
     %scatter plot of data sets
     scatter(c,d);
     title=('Scatter plots for data sets provided');
     % regression stats
     fprintf('Regression statistics for data sets provided:\n');
     mdl = fitlm(c,d)
 else
     fprintf('Unexpected input\n');
 end
 prompt=('Please select number of data sets to analyse (1 or 2), to quit enter 3.\n');
 select1 = input(prompt);
end

function tTests()

function correlations()

function anonva()
