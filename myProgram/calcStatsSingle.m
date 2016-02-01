function calcStatsSingle(arg)

fprintf('Calcualting statistics\n');
pause(2);

fprintf('Mean = %d\n',mean(arg));
fprintf('Mode = %d\n',mode(arg));
fprintf('Median = %d\n',median(arg));
fprintf('Skewness = %d\n',skewness(arg));
%Central tendency
fprintf('Measures of Central tendency: \n');
fprintf('Mean = %d\n',avg(arg));
fprintf('Mode = %d\n',mode(arg));
fprintf('Median = %d\n',median(arg));
%variance & std dev
var = myvar(arg);
fprintf('Measures of Diffusion: \n');
fprintf('Variance = %d\n',var);
fprintf('Std deviation = %d\n',mysd(arg));
% shape
fprintf('Shape: \n');
fprintf('Skew = %d\n',skewness(arg));
fprintf('Kurtosis = %d\n',kurtosis(arg));
% normality
fprintf('Normality testing: \n');
kstresult = kstest(arg);
fprintf('Kolmogorov-Smirnov test result = %d\n',kstresult);
if kstresult==1
     fprintf('Null hypothesis rejected \n');
else
     fprintf('Null hypothesis cannot be rejected \n');
end
%quartiles
fprintf('Quartiles: \n');
fprintf('1st quartile: %d\n',quantile(arg,0.25));
fprintf('2nd quartile: %d\n',quantile(arg,0.50));
fprintf('3rd quartile: %d\n',quantile(arg,0.75));


