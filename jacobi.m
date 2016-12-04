function [X1]=jacobi(A,B,X) %A matriz ,B vector columna,w error
[n,m]=size(A);
X1=X;
norma=1;
count=0;
while norma >= 0.000001
        count=count+1;
        if count == 30000
            break
        end
       for i=1:n
           s1=0;
            for j=1:n
                if i~=j
                    s1=s1+A(i,j)*X(j);
                end
            end
            X1(i)=((B(i)-s1)/A(i,i));
       end
       norma=norm(X-X1);
       %
       X=X1;
end
    
    X1;
    count
    fprintf('%10.6f\n',norma);
end


