x0 = input('Enter x0: ');
x0 = mod(x0, 2*pi);
r = x0;
res = x0;
last_res = -10;
i = 1;
while abs(last_res - res) > 1e-6
    last_res = res;
    r = r*-1*x0*x0/(2*i*(2*i + 1));
    res = res + r;
    fprintf('%d: res = %.6f\tr = %.6f\n', i, res, r);
    i = i + 1;
end
fprintf('sin(x0) = %.4f\n', res);