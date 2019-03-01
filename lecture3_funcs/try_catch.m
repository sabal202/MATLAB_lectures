i = 1;
while (i == 1)
    try
        i = 0;
        name_f = input('Enter file name: ', 's');
        feval('type', name_file);
    catch
        disp('Invalid name')
        i = 1;
    end
end