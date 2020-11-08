function [ea,er,ep] = funerror(x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
ea = abs(x,y);
er = ea/abs(y);
ep = er*100;
end


