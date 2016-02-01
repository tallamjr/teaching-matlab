function main()
prompt=['******Data Analysis Suite*******\n'...
        '1 Single Variable\n'...
        '2 Hypothesis Testing\n'...
        '3 Regression\n'...
        '4 Quit\n'...
        '********************************\n'];
    analysisType=input(prompt); %read input from commandline

    %set while loop, will print options or ignore input until 4 entered
    while (analysisType <= 3 && analysisType > 0)

        %analysisType is read, each case is checked, when matching case found
        %the actions underneath happen, else no actions happen
        switch analysisType
            case 1,
%                fprintf('You have chosen to do Single Variable analysis\n');
                singleVar()
                break
            case 2,
%                fprintf('You have chose to carry out Hypothesis Testing\n');
                hypnoTest()
                break
            case 3,
%                fprintf('You have chosen Regression\n');
                regression()
                break
        end
        analysisType=input(prompt); %read input again from commandline
    end

function singleVar()
fprintf('You have chosen to do Single Variable analysis\n');
getData()
calcStatsSingle()

function hypnoTest()
fprintf('You have chose to carry out Hypothesis Testing\n');
getData()
selectTest()

function regression()
fprintf('You have chosen Regression\n');
analyse()
