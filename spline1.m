function [a]=spline1(x,y)
n=size(x);
cs = spline(x,[0 y 0]);
xx = linspace(x(1),x(n(2)),101);
plot(x,y,'o',xx,ppval(cs,xx),'-');
%idea sacada de:
%https://www.mathworks.com/help/matlab/ref/spline.html
end
