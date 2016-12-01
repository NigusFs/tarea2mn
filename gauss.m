function [X]=gauss(A1,B1)%A es una matriz nxn y B es un vector columna
    len=size(A1);
    n=len(1);
    A2=eye(n);
    B2=B1;
    %X=B1;
    for i=1:1:n
        A2(1,i)=A1(1,i);
    end
    %el m debe variar para cada columna, falta un for q haga q el m cambie
    %:v
    for i=2:1:n
        m=A1(i,1)/A1(1,1);
        for j=2:1:n
            A2(i,j)=A1(i,j)-m*A1(1,j);
        end
        B2(i)=B1(i)-m*B1(1);
    end
    A2 %B2
    i=n;
    %while i>=0 
        
    %end
    
end