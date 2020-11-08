close all; clear; clc;
%%
a           =   0;
b           =   0.8;
I           =   Romberg(@(x)func(x),a,b);
fprintf('I\t=\t%0.15f\n',I);
RombergDisp(@(x)func(x),a,b,3);
%%
function[y]=func(x)
y           =   0.2+25*x-200*x.^2+675*x.^3-900*x.^4+400*x.^5;
end
%%