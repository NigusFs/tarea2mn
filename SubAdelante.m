
% la funcion resuelve un sistema de ecuaciones lineales ax= b
% "a" es triangular inferior usando substitucion hacia adelante
% "a" es la matriz de coeficientes
% "b" es un vector columna de constantes
% "x" es un vector columna con la solucion


function x = SubAdelante(a,b)

n = length(b);
x(1,1) = b(1)/a(1,1);
for i = 2:n
    x(i,1)=(b(i)-a(i,1:i-1)*x(1:i-1,1))./a(i,i);
end

