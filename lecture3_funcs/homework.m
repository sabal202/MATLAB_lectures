it = input('Iterations number: ');
x0 = input('Enter x0: ');
r = x0;
res = x0;
for i = 1:it
    r = r*-1*x0*x0/(2*i*(2*i + 1));
    res = res + r;
end
fprintf('sin(x0) = %f\n', res);