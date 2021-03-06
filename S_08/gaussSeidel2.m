function Z = gaussSeidel2(F,DF,Z,maxIt,tolF,tolZ)
% Newton per 2 variables

FZ=F(Z(1),Z(2));
Jac=tril(DF(Z(1),Z(2)));

errF=1;
errZ=1;

for it= 1:maxIt
    Zaux = Z;
    w= Jac\ (-FZ);
    Z= Zaux + w;
    FZ=F(Z(1),Z(2));
    
    Jac= tril(DF(Z(1),Z(2)));
    
    errZ= norm(w);
    errF= norm(FZ);
    
    if (errF < tolF) && (errZ < tolZ)
        break
    end
    
end

end
