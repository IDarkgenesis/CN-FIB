function res = calcIntX(a,b,h,f)
res=0;
i=a+h;

while i < b
    res = res + f(i);
    i= i+h;
end

