function [X1]=GaussSeidel1(A,B,X,w) %A matriz ,B vector columna,w error
    [n,m]=size(A);
    I=eye(n);
    Q=inv(tril(X));% Q invertida
    while norm(X1-X,1)/norm(X1,1)<=w % error dado en la tarea
        X1=(I-A*Q)*X+Q*B;
        X=X1;
    end
end