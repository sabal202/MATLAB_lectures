B = 'àáâãäå¸æçèéêëìíîïğñòóôõö÷øùúûüışÿ 1234567890-!?(),.ÀÁÂÃÄÅ¨ÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙÚÛÜİŞßabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
disp(B)
line = char(input('Enter line: ','s'));
disp(line)
len = strlength(line);
key = char(input('Enter key: ', 's'));
keylen = strlength(key);
alphlen = strlength(B);
while 1
    command = input('Choose:\n1. Encode\n2. Decode\n3. Exit\n');
    switch command
    case 1
        for i = 0:len - 1
            index = strfind(B, line(i + 1)) - 1;
            shift = strfind(B, key(mod(i, keylen) + 1)) - 1;
            line(i + 1) = B(mod(index + shift + alphlen, alphlen) + 1); 
        end
        fprintf(1, "%s\n", line);
    case 2
        for i = 0:len - 1
            index = strfind(B, line(i + 1)) - 1;
            shift = strfind(B, key(mod(i, keylen) + 1)) - 1;
            line(i + 1) = B(mod(index - shift + alphlen, alphlen) + 1);  
        end
        fprintf(1, "%s\n", line);
    case 3
       break;
    end
end
