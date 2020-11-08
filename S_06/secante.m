function [RES,xn1] = secante(f,x1,x2,maxIt,tolf,tolx)
%SECANT Aproximar una arrel per mètode de la secant.
%   f -> Funció, x1 -> Valor inicial 1, x2 -> Valor inicial 2 ,maxIt -> Iteracions màximes, tolf -> Tolerancia
%   de l'error princial, tolx -> Toleriancia error secundaria.
RES=[];
xn=x2;
x=x1;
for n=1:maxIt
    
    
    xn1= (x*f(xn) - xn*f(x)) / (f(xn) - f(x));
    
    actState.Xn1=xn1;
    actState.absFx= abs(f(xn1));
    actState.absX= abs(xn1-xn);
    
    x=xn;
    xn=xn1;
    
    RES= [RES actState];
    
    if (actState.absX <= tolx) && (actState.absFx <= tolf)
        break
    end
end
end

