function sbfun1(x, y)
global s d
s = 10;
d = 20;
fsum(x,y);
fdif(x,y);
fmul(x,y);
function fdif(a,b)
global s d
fdif = (a - b) + (s - d)
function fsum(a,b)
global s d
fsum = (a + b) + (s + d)
function fmul(a,b)
global s d
fmul = (a * b) + (s * d)