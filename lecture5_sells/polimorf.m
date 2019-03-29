function polimorf
    % ������ ��� �������� ������ ������� polimorf1()
 
    % �������: ��� ������� ��������� � ���� ��������
 
    % ������� ������� A � ������ ��������� ������ b
    A = [2 3 1; 3 1 -1; 2 -1 3];
    b = [11; 2; 9];
    x = polimorf1(A,b);
    fprintf('������� ����:\n');
    fprintf('%7.2f ', x);
    %��������
    c = A * x;
    fprintf('\n\n��������:\n');
    fprintf('%7.2f ', c);
    
    %�������: ���� ������� ��������, �������� ���
    
    z = struct('Department','��-��','Group','103','Name','�������� ������� ���������','Marks',...
       struct('Subject',{'�������������� ������','�������','���������'},'Rating',{4 4 5}));
    z(2) = struct('Department','��-��','Group','103','Name','��������� ����� ����������','Marks',...
       struct('Subject',{'�������������� ������','�������','���������'},'Rating',{4 5 4}));
    z(3) = struct('Department','��-��','Group','103','Name','������ ���� ��������','Marks',...
       struct('Subject',{'�������������� ������','�������','���������'},'Rating',{3 4 3}));
 
   polimorf1(z);
 
 %�������: ���� ������� �������� � ���� ��������
 
%    cel_m{1}.FIO='��� � ���. ������';
%    cel_m{1}.ball=3;
%    cel_m{2}.FIO='��� � ���. ������';
%    cel_m{2}.ball=5;
%    cel_m{3}=3;
   
   cel_m = polimorf1(z);
 
   fprintf('��� �������� � min ������: %s. ����: %d\n', cel_m{1}.FIO, cel_m{1}.ball);
   fprintf('��� �������� � max ������: %s. ����: %d\n', cel_m{2}.FIO, cel_m{2}.ball);
   fprintf('������� ���� �� ������: %f\n', cel_m{3});
   
end 
 


function varargout = polimorf1(varargin)
 
    if nargin == 1 && nargout == 0
        z = varargin{1};
        fprintf('\n\n ����� ���� ������:\n'); 
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
 
