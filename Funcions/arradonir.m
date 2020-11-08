function y=arradonir(x,t)
if (x==0), y=0; return; end
e=fix(log10(abs(x)));
if e>=0, e=e+1; end
aux=fix(x*10^(t-e+1));
y=fix(x*10^(t-e));
LD=mod(abs(aux),10);
if LD >= 5
    if y > 0
        y=y+1;
    else
        y=y-1;
    end
end
y=y*10^(e-t);
return