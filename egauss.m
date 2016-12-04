function [X]=egauss(A,B)
[n,m]=size(A);
A=[A';B']';
X=zeros(n,1);
    for i=1:n
        for j=[1:i-1,i+1:n]
            m=-A(j,i)/A(i,i);
            A(j,:)=A(j,:)+ m*A(i,:);
        end
    end
    A
    X=A(:,n+1)./diag(A);
end