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
D1 = sqrt(sum((X - M1).^2) / N);
D2 = sqrt(sum((Y - M2).^2) / N);
R = sum((X - M1) .* (Y - M2)) / N / D1 / D2;

OUT = fopen("out_1.txt", "w+");
a1 = M2 - D2 / D1 * R * M1;
a2 = D2 / D1 * R;
fprintf(OUT, "Программа нахождения зависимости веса от роста\nСтатистические характеристики:\n");
fprintf(OUT, "Mx = %f\nMy = %f\nDx = %f\nDy = %f\nr = %f\n", M1, M2, D1, D2, R);
fprintf(OUT, "Вид функции:\n");
fprintf(OUT, "y = %f + (%f / %f) * %f *(x - %f)\n", M2, D2, D1, R, M1);
fprintf(OUT, "y = %f + %f*x \n\n", a1, a2);
for i = 1:N
	fprintf(OUT,"%d: %f\t%f\n", X(i), Y(i), f(X(i), M2, D2, D1, R, M1));
end
fclose(OUT);
function res = f(x, M2, D2, D1, R, M1)
	res = M2 + (D2 / D1) * R * (x - M1);
end
