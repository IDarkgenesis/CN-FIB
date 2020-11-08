function [RES,al] = biseccion(f,a,b,tol,maxIt)
%BISECCION Mètode de la Biseecció
%   f -> Funció, a -> Inici interval, b -> Fi interval, tol -> Tolerancia
%   de l'error, maxIt -> Iteracions màximes.
RES=[];
an=a;
bn=b;
for n=1:maxIt
    actState.a=an;
    actState.b=bn;
    actState.fa=f(an);
    actState.fb=f(bn);
    
    actState.alpha=(an+bn)/2;
    al= actState.alpha;
    if sign(f(an)) ~= sign(f(actState.alpha))
        bn=actState.alpha;
    else
        an=actState.alpha;
    end
    RES=[RES actState];
    
    if abs(bn-an) <= tol
        break
    end
end

end

