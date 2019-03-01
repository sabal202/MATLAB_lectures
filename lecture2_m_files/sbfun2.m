function sbfun2(x, y)
s = 10;
d = 20;
fsum(x,y);
fdif(x,y);
fmul(x,y);
    function fdif(a,b)
    fdif = (a - b) + (s - d)
    end
    function fsum(a,b)
    fsum = (a + b) + (s + d)
    end
    function fmul(a,b)
    fmul = (a * b) + (s * d)
    end
end

