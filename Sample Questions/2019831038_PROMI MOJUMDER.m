%Name: Promi Mojumder
%Reg No: 2019831038
%Assignment: Euler Method

clear all;
clc;

%Given Values
x0 = 0; %initial value of independent variables
y0 = 1; %initial value of dependent variables
xf = 1; %point in which you want to evaluate the solution
h = 0.1 % step size
x(1) = x0;
y(1) = y0;
i = 1;

for j = x0:h:xf
  i = i+1;
  f(i-1) = x(i-1)*x(i-1) - y(i-1)*y(i-1); %f(x,y) = x^2 - y^2
  x(i) = x(i-1) + h;
  y(i) = y(i-1) + h*f(i-1);
  fprintf('y(%.2f) = %.4f\n', x(i-1), y(i-1))
end;

plot(x,y)
