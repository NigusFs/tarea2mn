function [A]=ma(n)
    A=full(gallery('tridiag',n,1,-4,1));
    for j=4:n
        A(j-3,j)=1;
    end
    for j=4:n
        A(j,j-3)=1;
    end
    
end