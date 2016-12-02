function [X1]=GaussSeidel(A,B,X,e) %A matriz ,B vector columna,e error
    [n,m]=size(A);
    X1=B;% se iguala a B para dps setear los valores en casa posicion

    while norm(X1-X,1)/norm(X1,1)<=e % error dado en la tarea
        s1=0;
        s2=0;
        for k=1:1:n
            for j=(k+1):1:n%primera sumatoria
                s1=s1+(A(k,j)*X(j));
            end
            for j=1:1:k-1%segunda sumatoria
                s2=s2+(A(k,j)*X1(j));
            end
            X1(k)=(B(k)- s1 - s2)/A(k,k);
        end
        X=X1;
    end
end
