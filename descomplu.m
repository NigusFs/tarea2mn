% Descomposicion LU (Se usa en la B) de la 1)

function descomplu(A,b)
[L,U] = lu(A)
A\b
end

