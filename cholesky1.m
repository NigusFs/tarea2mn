function [x]=cholesky1(A,b)
%idea sacada de https://sites.google.com/site/pn20111/metodos-para-la-solucion-de-sistemas-de-ecuaciones-e-interpolacion/3-factorizacion-directa-de-matrices/3-3-cholesky/codigo-matlab
[n,m]=size(A);
pp=0;
for k=1:n
    pp=pp+1; 
        suma1=0;
        for p=1:k-1
            suma1=suma1+L(k,p)*u(p,k);
        end
        L(k,k)=sqrt(A(k,k)-suma1);
        u(k,k)=L(k,k);
        for i=k+1:n
            suma2=0;
            for q=1:k-1
                suma2=suma2+L(i,q)*u(q,k);
            end
            L(i,k)=(A(i,k)-suma2)/L(k,k); 
        end
        for j=k+1:n
            suma3=0;
            for r=1:k-1
                suma3=suma3+L(k,r)*u(r,j);
            end
            u(k,j)=(A(k,j)-suma3)/L(k,k); 
        end
    end
    producto=det(L)*det(u); 
    if producto~=0
        for i=1:n
            suma=0;
            for p=1:i-1
                suma=suma+L(i,p)*z(p);
            end
            z(i)=(b(i)-suma)/L(i,i);
        end
        for i=n:-1:1
            suma=0;
            for p=i+1:n
                suma = suma+u(i,p)*x(p);
            end
            x(i)=(z(i)-suma)/u(i,i); 
        end   
    end
x=x';
pp
end
