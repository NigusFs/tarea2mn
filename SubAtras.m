% La funcion resuelve el sistema lineal ax=b
% "a" es triangular superior usando substitucion hacia atras
% "a" es la matriz de coeficientes
%"b" es un vector columna de constantes
% "y" es un vector columna con la solucion
function y = SubAtras(a,b) 
n = length(b);
y(n,1) = b(n)/a(n,n);
for i = n-1:-1:1
    y(i,1)=(b(i)-a(i,i+1:n)*y(i+1:n,1))./a(i,i);
end

