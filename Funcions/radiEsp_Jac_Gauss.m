function [radiJ,radiG] = radiEsp_Jac_Gauss(A,b)
D= diag(diag(A));       % Diagonal
d= diag(1./diag(A));    % Inversa diagonal
L= tril(A,-1);          % Triangular inferior
U= triu(A,1);           % Triangular superior

w= 1;

% JACOBI REX
Cjr= d;
Bjr= Cjr*((1-w)*D - w*(L+U));
cjr= w*Cjr*b;

% GAUSS REX
Cgr= inv(D+w*L);
Bgr= Cgr*((1-w)*D-w*U);
cgr= w*Cgr*b;

radiJ= max(abs(eig(Bjr)));
radiG= max(abs(eig(Bgr)));
end

