function [data1 data2] = getData(numberOfVars)
% This function should check if file exists.
% After that it shoud ask user what data it wants from the file, i.e just numbers
% or just text, or just raw data (Or all in all forms)
% Then it should determine what type of it is and load accoordingly.
fprintf('Get Data function\n');

fprintf('What filetype would you like to load data from\n');
fprintf('Please select from the list below\n');
prompt=['1 .csv\n'...
        '2 .txt\n'...
        '3 .xlsx\n'...
        '4 other\n'...
        '\n'];
    fileType=input(prompt); %read input from commandline

if numberOfVars == 1
    switch fileType
    case 1,
        fprintf('You have chosen to read from a comma seperated value file\n');
        return
    case 2,
        fprintf('You have chosen to read from a plain text file\n');
        return
    case 3,
        fprintf('You have chosen an Excel spreadsheet\n');
        filename = input('Enter name of file: ', 's');
        cells = input('Please enter the cells you like to analyse i.e D2:D30 ', 's');
        %if filename not found, raise error, ask to try again.
        data1 = xlsread(filename, cells);
        return
    end
else
    switch fileType
    case 1,
        fprintf('You have chosen to read from a comma seperated value file\n');
        return
    case 2,
        fprintf('You have chosen to read from a plain text file\n');
        return
    case 3,
        fprintf('You have requested to load 2 data sets for analysis\n');
        filename = input('Enter name of file with the first set of data: ', 's');
        cells = input('Please enter the cells you like to analyse i.e. D2:D30 ', 's');
        data1 = xlsread(filename, cells);
        %if filename not found, raise error, ask to try again.
        filename = input('Enter name of file with the second set of data: ', 's');
        cells = input('Please enter the cells you like to analyse i.e. D2:D30 ', 's');
        data2 = xlsread(filename, cells);
        return
    end
end
