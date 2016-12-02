function[f]=trapecio1(F,X,n,a,b)%F funcion asociada,X puntos asociados, n cantidad de intervalos
    h=(b-a)/n; %a,b limites del intevalo
    s1=0;
    for i=2:1:n-1
        s1=s1+F(X(i)); % evalua un punto en F, para la tarea no creo q sea necesario
    end
    f=(h/2)*(F(x1)+2*s1+F(X(n)));
    
end