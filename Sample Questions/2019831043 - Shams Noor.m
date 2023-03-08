% Euler's Method
function [tt, yy] = euler(f,t0,y0,h,N)
 k = N+1;
 tt = zeros(k,1);
 yy = zeros(k,1);
 tt(1) = t0;
 yy(1) = y0;
 for i = 2:k
 tt(i) = tt(i-1) + h;
 m = f(tt(i-1),yy(i-1));
 yy(i) = yy(i-1) + h*m;
 end
end
% Runge-Kutta Method
function [tt, yy] = runge_kutta(f,t0,y0,h,N)
 k = N+1;
 tt = zeros(k,1);
 yy = zeros(k,1);
 tt(1) = t0;
 yy(1) = y0;
 for i = 2:k
 tt(i) = tt(i-1) + h;
 m1 = f(tt(i-1),yy(i-1));
 m2 = f(tt(i-1) + (h/2),yy(i-1) + (h/2)*m1);
 m3 = f(tt(i-1) + (h/2),yy(i-1) + (h/2)*m2);
 m4 = f(tt(i),yy(i-1) + h*m3);
 yy(i) = yy(i-1) + h*(m1 + 2*m2 + 2*m3 + m4)/6;
 end
end
f = @(t,y) (3 * t^2 + y);
t0 = 0;
y0 = 1;
h = 0.1;
T = 1;
N = ceil((T - t0)/h);
[tt ye] = euler(f,t0,y0,h,N);

[tt, yrk] = runge_kutta(f,t0,y0,h,N);

figure
 plot(tt,ye,'r')
 title("Comparison of Numerical Methods")
 hold on
 plot(tt,yrk,'g')
 legend("Euler's Method","Runge-Kutta",
 'location','northeastoutside')

