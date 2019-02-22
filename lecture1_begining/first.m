a = 5;
x = -1:0.0001:1;
y = gip(x);
plot(x, y)
function y = gip(x)
y = 100./x;
end

