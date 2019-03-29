function polimorf
    % Данные для проверки работы функции polimorf1()
 
    % Вариант: два входных параметра и один выходной
 
    % Матрица системы A и вектор свободных членов b
    A = [2 3 1; 3 1 -1; 2 -1 3];
    b = [11; 2; 9];
    x = polimorf1(A,b);
    fprintf('Решение СЛАУ:\n');
    fprintf('%7.2f ', x);
    %Проверка
    c = A * x;
    fprintf('\n\nПроверка:\n');
    fprintf('%7.2f ', c);
    
    %Вариант: один входной аргумент, выходных нет
    
    z = struct('Department','ПМ-ПУ','Group','103','Name','Панькина Наталья Андреевна','Marks',...
       struct('Subject',{'Математический анализ','Алгебра','Геометрия'},'Rating',{4 4 5}));
    z(2) = struct('Department','ПМ-ПУ','Group','103','Name','Нечипорук Антон Алексеевич','Marks',...
       struct('Subject',{'Математический анализ','Алгебра','Геометрия'},'Rating',{4 5 4}));
    z(3) = struct('Department','ПМ-ПУ','Group','103','Name','Иванов Иван Иванович','Marks',...
       struct('Subject',{'Математический анализ','Алгебра','Геометрия'},'Rating',{3 4 3}));
 
   polimorf1(z);
 
 %Вариант: один входной аргумент и один выходной
 
%    cel_m{1}.FIO='ФИО с мин. баллом';
%    cel_m{1}.ball=3;
%    cel_m{2}.FIO='ФИО с мах. баллом';
%    cel_m{2}.ball=5;
%    cel_m{3}=3;
   
   cel_m = polimorf1(z);
 
   fprintf('Имя студента с min баллом: %s. Балл: %d\n', cel_m{1}.FIO, cel_m{1}.ball);
   fprintf('Имя студента с max баллом: %s. Балл: %d\n', cel_m{2}.FIO, cel_m{2}.ball);
   fprintf('Средний балл по группе: %f\n', cel_m{3});
   
end 
 


function varargout = polimorf1(varargin)
 
    if nargin == 1 && nargout == 0
        z = varargin{1};
        fprintf('\n\n Вывод базы данных:\n'); 
        for j = 1:length(z)
            fprintf('\n%5s %5s %20s \n', z(j).Department, z(j).Group, z(j).Name); 
            for i=1:3
                fprintf('%25s %5d\n', z(j).Marks(i).Subject, z(j).Marks(i).Rating);     
            end
        end
    end

    if nargin == 1 && nargout == 1
        z=varargin{1};   
        n1 = [];
        for i = 1:length(z)
            n1 = [n1 sum([z(i).Marks.Rating])];
        end
        j = min(n1);
        j1 = max(n1);
        i2 = mean(n1);
        cel_m1{1}.FIO = z(n1 == min(n1)).Name;
        cel_m1{1}.ball = j;
        cel_m1{2}.FIO = z(n1 == max(n1)).Name;
        cel_m1{2}.ball = j1;
        cel_m1{3} = i2;
        varargout{1} = cel_m1;
     end 

    if nargin == 2 && nargout == 1
        varargout{1} = varargin{1}^(-1) * varargin{2};
    end
end 
 
