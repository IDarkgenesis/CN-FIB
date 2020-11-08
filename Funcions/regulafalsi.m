function [RES,xn] = regulafalsi(f,a,b,tol,maxIt)
%REGULA_FALSI Mètode de REGULA_FALSI
%   f -> Funció, a -> Inici interval, b -> Fi interval, tol -> Tolerancia
%   de l'error, maxIt -> Iteracions màximes.
RES=[];
an=a;
bn=b;
for n=1:maxIt
    actState.a=an;
    actState.b=bn;
    
    actState.Xn= an- f(an)*(bn-an)/(f(bn)-f(an));
    actState.Fxn= f(actState.Xn);
    if n > 1
        x= xn;
    end
    
    xn= actState.Xn;
    
    if sign(f(an)) ~= sign(f(actState.Xn))
        bn=actState.Xn;
    else
        an=actState.Xn;
    end
    RES=[RES actState];
    
    if n > 1 && abs(xn-x) <= tol && abs(f(xn)) <= tol
        break
    end
end

end