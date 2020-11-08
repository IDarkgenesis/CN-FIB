function res = monteCarlo(f,xl,xr,yb,yt,n)
in=0;

for k=1:n
    x = (xr-xl)*rand + xl;
    y = (yt-yb)*rand + yb;
    if y <= f(x) 
        in = in+1;
    end
end
res = in/n;
end

