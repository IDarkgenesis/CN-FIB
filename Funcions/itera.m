function [RES,alp,n] = itera(g,x1,maxIt,tolg,tolx)
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
   
   RES= [RES actState];
   
   if (actState.absX <= tolx) && (actState.absGx <= tolg)
        break
   end
   
end


end

