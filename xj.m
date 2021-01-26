function Xj = xj(i,h)
%Wyliczamy punkty
i=i-1; % punkty numerujemy od 1, ale punkt xj1 znajduje się w 0.
if i < 0
    Xj = 0;
else
    Xj=i*h;
end

