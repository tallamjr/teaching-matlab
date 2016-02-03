%read in the results data - you need both the text elements and the numeric elements

[num text]=xlsread('results.xlsx');

%extract the maths, english and history data into vectors
%this data is in the numeric part of the result of xslread

[maths]=xlsread('results.xlsx', 'D2:D31');
[english]=xlsread('results.xlsx', 'E2:E31');
[history]=xlsread('results.xlsx', 'F2:F31');

%find the length of each these vectors - this is the N, the number of observations in the data
%you can get it be examining just *one* vector
dims=size(maths) % Since english and history vectors are the same length
n=dims(1)

%display the value of N
%use fprintf
%this works by replacing variables in the string with a format character and then listing the variable names
%*after* the string.  The format characters and variables are then interpolated in order:

%c Single character
%d Decimal notation (signed)
%e Exponential notation (using a lowercase e as in 3.1415e+00)
%E Exponential notation (using an uppercase E as in 3.1415E+00)
%f  Fixed-point notation
%g  The more compact of %e or %f. (Insignificant zeros do not print.)
%G Same as %g, but using an uppercase E
%o Octal notation (unsigned)
%s String of characters
%u Decimal notation (unsigned)
%x Hexadecimal notation (using lowercase letters a–f)
%X Hexadecimal notation (using uppercase letters A–F)

%so
fprintf('The number of observations is %d \n',n)
%would replace %d in the string with the value of x and display it as a signed decimal

%find the mean maths result by summing maths and dividing by n

meanmaths= sum(maths)/n;

%display "the value of the mean is...."
fprintf('the value of the mean is:  %f \n',meanmaths)

%find the mean examination score (ie for english, history and maths tests) for the first pupil in your data
pupilone= [maths(1), english(1), history(1)];
meanexam= sum(pupilone)/length(pupilone);

%display "the first pupil had a mean test score of..."
fprintf('the value of the mean exam score for the first pupil is:  %f \n',meanexam)

%rest, relax
