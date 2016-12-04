function [] = algoritmo3(X,Nmax,e,lam,A,B)
    A1=A'*A;
    [n,m]=size(A1);
    for k=1:n
        suma1=0;
        for p=1:k-1
            suma1=suma1+L(k,p)*u(p,k);
        end
        L(k,k)=sqrt(A1(k,k)-suma1);
        u(k,k)=L(k,k); 
        for i=k+1:n
            suma2=0;
            for q=1:k-1
                suma2=suma2+L(i,q)*u(q,k);
            end
            L(i,k)=(A1(i,k)-suma2)/L(k,k); %Se obtiene la Matriz L
        end
        for j=k+1:n
            suma3=0;
            for r=1:k-1
                suma3=suma3+L(k,r)*u(r,j);
            end
            u(k,j)=(A1(k,j)-suma3)/L(k,k); %Se obtiene la matriz U
        end
    end
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