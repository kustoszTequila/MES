function e = fi(n,h,i,x)
%Funkcje bazowe fi , są to funkcje liniowe, oddalone osiebie od h.
%   Zamiennie nazywane e 
if i == 1 % fi 1 i n+1 mają specjalne wzory
    if x>= xj(1,h) && x<= xj(2,h)
        e = (xj(2,h)-x)/h;
    else
        e = 0;
    end
elseif i == n+1
    if x >= xj(n,h) && x <=xj(n+1,h)
        e = (x-xj(n,h))/h;
    else
        e = 0;
    end
else   % standardowy przypadek 
    xj1 = xj(i-1,h);
    xj2 = xj(i,h);
	xj3 = xj(i+1,h);
    if x>=xj1 && x<=xj2
        e = (x-xj1)/h;
    elseif x>xj2 && x<=xj3
        e = (xj3 - x)/h;
    else
        e = 0;
    end
end

