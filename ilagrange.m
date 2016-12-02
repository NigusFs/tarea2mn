function [C]=ilagrange(X,Y)
%idea sacada de internet  codigos metodos numericos
    [n,m]=size(X);
    L=zeros(m);
    for k=1:1:m
        p1=1;
        for j=1:m
            if k ~=j
              p1=conv(p1,poly(X(j)))/(X(k)-X(j));
            end
        end
        L(k,:)=p1;
    end

C=Y*L;
end
