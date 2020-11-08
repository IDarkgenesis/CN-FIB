function [residu,it,xJ] = jacobi_res_it(A,b,iterations,tol)
% JACOBI
%D= diag(diag(A));       % Diagonal
d= diag(1./diag(A));    % Inversa diagonal
L= tril(A,-1);          % Triangular inferior
U= triu(A,1);           % Triangular superior

Bj= -d*(L + U);
cj= d*b;


xJ= zeros(size(b));
residu=0;

for it=1:iterations
    auxJ=xJ;
    
    xJ= Bj*xJ + cj; %Jacobi
    if norm(auxJ-xJ,'inf') <= tol
        break
    end    
    residu= norm(b-A*xJ,'inf');
end
end

