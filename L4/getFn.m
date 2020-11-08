function res = getFn(a,b,h,f)
res=0;
nelem= (b-a)/h(1);

if nelem == 1
    res= 0;
else
    n=a+h;
    i=2;
    while n < b
        if mod(i,2) == 0
            res= res + f(n)*4;
        else
            res= res + f(n)*2;
        end
        i = i+1;
        n = n+h;
    end
end
       
end

