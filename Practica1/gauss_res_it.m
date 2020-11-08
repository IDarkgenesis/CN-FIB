function [residu,it,xG] = gauss_res_it(A,b,iterations,tol)

D= diag(diag(A));       % Diagonal
L= tril(A,-1);          % Triangular inferior
U= triu(A,1);           % Triangular superior

% GAUSS
C = inv(L + D);
Bgs = -C * U;
cgs = C * b;

xG= zeros(size(b));
residu=0;

for it=1:iterations
    auxG=xG;
    
    xG= Bgs*xG + cgs; % Gauss
    if norm(auxG-xG,'inf') <= tol
        break
    end    
    residu= norm(b-A*xG,'inf');
end
end

