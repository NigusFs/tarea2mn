function [s1]=ilagrange(X,Y)% X valores de x, Y valores de y :v, 
                            %nose si los Y los dan o hay q sacarlos,
                            %revisar!
    p1=1;
    s1=0;
    [n,m]=size(X);
    for i=1:1:n
        while i<=n
            if k ==i: % esta cosa va a tirar un error, corregir
                i=i+1;
            end
            p1=p1*((x-X(i))/(X(k)-X(i)));
        end
        s1=s1+p1*Y(k);
    end
end