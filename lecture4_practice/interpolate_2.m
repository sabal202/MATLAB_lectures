FILE = fopen('gr105m.txt');
L1 = fgets(FILE);
L2 = fgets(FILE);
N = fscanf(FILE, "%lf", [1 1]);
X = fscanf(FILE, "%lf", [2 Inf]);
Y = X(2,:);
X = X(1,:);

fclose(FILE);
M1 = sum(X) / N;
M2 = sum(Y) / N;
XX = sum(X .^ 2) / N;
XY = sum(X .* Y) / N;

A = [1 M1; M1, XX];
b = [M2; XY];
a = A\b;
OUT = fopen("out_2.txt", "w+");
fprintf(OUT, "Программа нахождения зависимости веса от роста\n");
fprintf(OUT, "Вид функции:\n");
fprintf(OUT, "y = %f + %f*x \n\n", a(1), a(2));
for i = 1:N
	fprintf(OUT,"%d: %f\t%f\n", X(i), Y(i), a(1)+ X(i)*a(2));
end
fclose(OUT);

