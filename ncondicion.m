function [k]= ncondicion(A)
    k=norm(A,Inf)*norm(inv(A),Inf);%si el k es mayor, la matriz esta mal condicionada
end 