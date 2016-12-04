function []=algoritmo2(X,Nmax,e,lam,A,B)
    [L,U]=lu(A'*A);
for h=1:Nmax
        B1=-A'*(A*X-B)-lam(sgn(norm(X,1));
        n=length(B1);
        X(1,1)=B(1)/A(1,1);
        for i=2:n
            X(i,1)=(B(i)-A(i,1:i-1)*X(1:i-1,1))./A(i,i);
        end
        B2=X1;
        m=length(B2);
        y=zeros(m,1);
        y(n,1)=B(n)/A(n,n);
        for i=n-1:-1:1
            y(i,1)=(B(i)-A(i,i+1:n)*y(i+1:n,1))./A(i,i);
        end
         if norm(X1-X,1)<e
            X1
            break
         end
        X=X1;
    end
end