function alpha = newton2d(F,DF,Z,Nmax,tolF,tolZ)
% M�tode de Newton per a funcions de dues variables
k=0; cotaF=1; cotaZ=1;
FZ=F(Z(1),Z(2));
DFZ=DF(Z(1),Z(2)); 
while (k<Nmax && (cotaF>tolF || cotaZ>tolZ))
    Zold=Z;
    Y=DFZ\(-FZ);
    Z=Zold+Y;
    cotaZ=norm(Y);
    DFZ=DF(Z(1),Z(2));
    FZ=F(Z(1),Z(2));
    cotaF=norm(FZ);
    k=k+1;
end
alpha=Z;
end

