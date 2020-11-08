function [RES,alp,n] = iteraAitk(g,x1,maxIt,tolg,tolx)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
RES=[];
xn= x1;
for n=1:maxIt
   xaux=xn;
   actState.xn=xaux;
   actState.absGx= abs(g(xn));
   xn= g(xn);
   actState.absX= abs(xn - xaux);
   alp=xn;
   
   actState.Aitk= 'n < 3';
   
   if n > 2
        actState.Aitk= (xn * RES(n-2).xn - RES(n-1).xn^2) / (xn - 2*RES(n-1).xn + RES(n-2).xn);
   end
   
   RES= [RES actState];
   
   if (actState.absX <= tolx) && (actState.absGx <= tolg)
        break
   end
   
end


end

