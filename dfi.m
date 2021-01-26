function e = dfi(n,h,i,x)
%Pochodna z funkcji fi
if i == 1
    if x>= xj(1,h) && x<= xj(2,h)
        e = -1/h;
    else
        e = 0;
    end
elseif i == n+1
    if x >= xj(n,h) && x <=xj(n+1,h)
        e = 1/h;
    else
        e = 0;
    end
else   
    xj1 = xj(i-1,h);
    xj2 = xj(i,h);
	xj3 = xj(i+1,h);
    if x>=xj1 && x<=xj2
        e = 1/h;
    elseif x>xj2 && x<=xj3
        e = -1/h;
    else
        e = 0;
    end
end

