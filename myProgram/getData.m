function f = getData(filename)
% This function should check if file exists.
% After that it shoud ask user what data it wants from the file, i.e just numbers
% or just text, or just raw data (Or all in all forms)
% Then it should determine what type of it is and load accoordingly.
fprintf('Get Data function\n');
%prompt=('Please enter the filename that holds the data.\n');
%select1 = 0;
%filename = input(prompt);
filename = input('Enter name of file: ', 's');
%if filename not found, raise error, ask to try again.
global f;
f = xlsread(filename);
