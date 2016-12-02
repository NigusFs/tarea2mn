function [X1]=richardson(A,B,X,e) %A matriz ,B vector columna,e error
[n,m]=size(A);
I=eye(n);
    while norm(X1-X,1)/norm(X1,1)<=e
        X1=(I-A)*X+B;
        X=X1;
    end
end
