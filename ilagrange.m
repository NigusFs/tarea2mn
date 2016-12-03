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
%http://sgpwe.izt.uam.mx/files/users/uami/jhmb/polinomiosTutorial.pdf
% X=[2,3,7,12,22,29,36];
%Y=[5,4,7.9,3.8,4,4.6,5]; %Auto
%ezplot(SP,[2.0 40.0]); 

%Y=0:10:60;
%X=[0,130-122,135-122,160-122,175-122,190-122,200-122];
%k=ilagrange(X,Y);
%SP=poly2sym(k); %Represa
%ezplot(SP,[0.0 80.0])
C=Y*L;
end
