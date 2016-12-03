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
%Y=0:10:60;
%X=[0,130-122,135-122,160-122,175-122,190-122,200-122];
%k=ilagrange(X,Y);
%SP=poly2sym(k);
%ezplot(SP,[0.0 80.0])
C=Y*L;
end
