function U = u(n)
%MES dla odkształcenia sprężystego. Wywołanie: u(n), gdzie n - ilość
%przedziałów
%   Autor: Ernest Roszak 
X = linspace(0,2,n+1); % równo rozdzielone n+1 punktów na przedziale <0,2>
h=2/n; %długość jednego przedziału 
A = zeros (n+1, n+1);
b = zeros (n+1, 1);

% wypełniamy macierz A
for k=1:n
    A_local=quadratic(k,h,n);
    A(k:k+1,k:k+1) = A(k:k+1,k:k+1) + A_local;
end

A(1,1) = A(1,1) -3*fi(n,h,1,0); % Wypełniamy pozycje A(1,1) macierzy
A(n+1,:) = 0; % Warunek Dirichleta
A(:,n+1) = 0; % Warunek Dirichleta
A(n+1,n+1) = 1; % Warunek Dirichleta
b(1,1) = -E(0)*10*fi(n,h,1,0); % f(x) = 0 i w tym miejscu mamy jedyny niezerowy punkt macierzy b
A
b
U = A\b; % rozwiązanie układu liniowego
plot(X,U) %rysowanie wykresu 

