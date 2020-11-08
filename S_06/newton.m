function [RES,al] = newton(f,df,x0,maxIt,tolf,tolx)
%NEWTON-RAPHSON Aproxima una arrel amb el mètode de Newton-Raphson
%   f -> Funció, df -> Derivada de la funcio, x0 -> Valor inicial, maxIt -> Iteracions màximes, tolf -> Tolerancia
%   de l'error princial, tolx -> Toleriancia error secundaria.
RES=[];
xn=x0;

for n=1:maxIt
    xaux= xn;
    actState.Xn= xn;
    actState.absFx= abs(f(xn));
    xn= xn - f(xn)/df(xn);
    actState.absX= abs(xn - xaux);
    al=xn;
    
    RES=[RES actState];
    
    if (actState.absX <= tolx) && (actState.absFx <= tolf)
        break
    end
    
end

end

