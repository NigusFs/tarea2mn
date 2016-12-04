function []=relajacion(A,B,X,w) %A matriz ,B vector columna,w relajacion
    [n,m]=size(A);
    X1=X;% se iguala a X para dps setear los valores en casa posicion
    norma=1;
    p=0;
    while norma >= 0.000001 % error dado en la tarea
        p=p+1;
        %fprintf('%d',p);
        if p == 30000
            break
        end
        for k=1:1:n
            s1=0;
             s2=0;
            for j=(k+1):1:n%primera sumatoria
                s1=s1+(A(k,j)*X(j));
            end
            for j=1:1:k-1%segunda sumatoria
                s2=s2+(A(k,j)*X1(j));
            end
            X1(k)=(w/A(k,k))*(B(k)-s1-s2)+(1-w)*X(k);
            %fprintf('%10.6f\n',X1(k));
        end
        norma=norm(X-X1);
       
        X=X1;
    end
    X1;
    p
    fprintf('%10.6f\n',norma);
end
