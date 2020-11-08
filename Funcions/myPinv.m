function [PINV] = myPinv(U,S,V)
%UNTITLED Calcula la PINVERSA de una matriu amb els SVD

auxS= S';
auxS= 1./auxS;
auxS(auxS == inf) = 0;

PINV= V*auxS*U';
end

