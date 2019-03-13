x0 = input('Enter x0: ');
x0 = mod(x0, 2*pi);
r = x0;
res = x0;
for i = 1:10
    r = r*-1*x0*x0/(2*i*(2*i + 1));
    res = res + r;
end
fprintf('sin(x0) = %.4f\n', res);