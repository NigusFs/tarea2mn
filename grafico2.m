function []=grafico2()
    pp=0;
    arrn=10:60;
    arrnc=10:60;
    for i=10:1:60
        pp=pp+1;
        A=full(gallery('tridiag',i,1,-4,1));
        for j=4:i
            A(j-3,j)=1;
        end
        for j=4:i
            A(j,j-3)=1;
        end
        k=norm(A,Inf)*norm(inv(A),Inf);
        arrnc(pp)=k;
    end
    plot(arrn,arrnc)
end
