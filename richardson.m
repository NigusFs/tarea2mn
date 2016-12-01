function [X1]=richardson(A,B,X,w) %A matriz ,B vector columna,
[n,m]=size(A);
I=eye(n);
    while norm(X1-X,1)/norm(X1,1)<=w
        X1=(I-A)*X+B;
        X=X1;
    end
end
