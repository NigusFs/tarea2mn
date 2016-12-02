function [X1]=jacobi(A,B,X,w) %A matriz ,B vector columna,w error
    [n,m]=size(A);
    I=eye(n);
    Q=eye(n);% Q invertida
    for i=1:1:n
        Q(i,i)=1/A(i,i);
    end
    while norm(X1-X,1)/norm(X1,1)<=w % error dado en la tarea
        X1=(I-A*Q)*X+Q*B;
        X=X1;
    end
end