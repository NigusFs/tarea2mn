function []=algoritmo1(X,Nmax,e,lam,A,B)
for h=1:Nmax
    A1=A'*A;
    B1=-A'*(A*X-B)-lam(sgn(norm(X,1));
    [n,m]=size(A);
    A1=[A1';B1']';
    for i=1:n % eliminacion gausseana
        for j=[1:i-1,i+1:n]
            m=-A1(j,i)/A1(i,i);
            A1(j,:)=A1(j,:)+ m*A1(i,:);
        end
    end
    X=A1(:,n+1)./diag(A1);% sustitucion 
    if norm(X1-X,1)<e
        X1
        break
    end
     X=X1;
end
end