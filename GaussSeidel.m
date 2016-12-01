function [X1]=GaussSeidel(A,B,X,w) %A matriz ,B vector columna,w error
    [n,m]=size(A);
    X1=B;% se iguala a B para dps setear los valores en casa posicion
    while norm(X1-X,1)/norm(X1,1)<=w % error dado en la tarea
        for i=:1:n
        %X1(i)=(B(i)-%sumatoria de [A(i,j)*X(i)] - sumaoria de
        %[A(i,j)*X(j)])/A(i,i);
        
        %falta expresar la sumatria de arriba :V
        end
        %X=X1;
    end
end