function []=grafico1()
    pp=0;
    arrn=3:20;
    arrnc=3:20;
    for h=3:1:20
        pp=pp+1;
        A=zeros(h);
        for i=1:h
            for j=1:h
                A(i,j)=1/(i+j-1);
            end
        end
        k=norm(A,1)*norm(inv(A),1);
        arrnc(pp)=k;
    end
    plot(arrn,arrnc)
end