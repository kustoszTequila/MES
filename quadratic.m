function A_local = quadratic(k,h,n)
%Całkowanie numeryczne
%   Detailed explanation goes here
A_local = zeros (2,2); % macierz "lokalna" 2x2
xk=xj(k,h); 
xk1=xj(k+1,h); % 2 punkty po których całkalibyśmy
intev = (xk1-xk)/2; % odstęp między nimi
M = 2;
W = [1 1]; % wagi 
Points = [-sqrt(3/5) sqrt(3/5)]; % punkty z całkowania numerycznego
for m = 1:M
    x = Points(m); % pobieramy punkt
    x = (xk1-xk)*x/2 +(xk1+xk)/2; % wyliczamy jego "nowe" współrzędne na pods. orginalnych punktów
    E_val = E(x);   % wartośc funkcji E w tym miejscu
    for i=1:2
        for j=1:2  
        A_local(i,j) = A_local(i,j) + intev*E_val*dfi(n,h,k-1+i,x)*dfi(n,h,k-1+j,x)*W(m);
        end
    end    
end

