function []=richardson(A,B,X) %A matriz ,B vector columna,
[n,m]=size(A);
I=eye(n);
X=X';
X1=X;
norma=1;
i=0;
while norma >= 0.00000001
        i=i+1;
       if i == 3000000
            break
       end
       X1=(I-A)*X+B;
       norma=norm(X-X1);
       X=X1;    
end
   X1
    i
    fprintf('%10.6f\n',norma);
end
