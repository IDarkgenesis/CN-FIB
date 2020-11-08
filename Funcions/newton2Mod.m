function Z = newton2Mod(F,DF,Z,maxIt,tolF,tolZ,change)
% Newton per 2 variables

FZ=F(Z(1),Z(2));
Jac=DF(Z(1),Z(2));

errF=1;
errZ=1;

for it= 1:maxIt
    Zaux = Z;
    w= Jac\ (-FZ);
    Z= Zaux + w;
    FZ=F(Z(1),Z(2));
    
    if mod(it,change) == 0
        Jac=DF(Z(1),Z(2));
    end
    
    errZ= norm(w);
    errF= norm(FZ);
    
    if (errF < tolF) && (errZ < tolZ)
        break
    end
    
end

end

