function [X]=H(n)
    X=zeros(n);
    for i=1:n
        for j=1:n
            X(i,j)=1/(i+j-1);
        end
    end
end