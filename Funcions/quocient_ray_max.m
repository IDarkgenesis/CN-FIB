function [mod,x,iterations] = quocient_ray_max(A,x0,it,tol)
%UNTITLED2 Potencies max
%   Detailed explanation goes here
x=x0;

for iterations=1:it
    xaux= x;
    z=A*x;
    
    mod= (z'*x)/(x'*x);
    
    x= (1/mod)*z;
    if norm(x-xaux, 'inf') < tol
        break;
    end
    
end
