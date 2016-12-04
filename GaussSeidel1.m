function [X1]=GaussSeidel1(A,B,X) %A matriz ,B vector columna
    [n,m]=size(A);
    I=eye(n);
    Q=inv(tril(A));% Q invertida
    k=0;
    X=X';
    X1=X;
    norma=1;
    while norma>=0.000001
        k=k+1;
        if k == 30000
            break
        end
        f=(I-Q*A)*X;
        size(X);
        X1=f+Q*B;
        norma=norm(X-X1);
        X=X1;
    end
    X1
    k
    fprintf('%10.6f\n',norma);
   
end
