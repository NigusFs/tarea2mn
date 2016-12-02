function [f]=trapecio(n,a,b,w)%w es un arreglo q dan, w(0)=0; w(1)=130;...
    h=(b-a)/6;
    s1=0;
    for i=2:1:n-1
        s1=s1+w(i)*(60-((i-1)*10));
    end
    f=10^3*9.8*(h/2)*(122*60+2*s1+0);
    %w=[122,130,135,160,175,190,200];
    %trapecio(7,0,60,w);
end