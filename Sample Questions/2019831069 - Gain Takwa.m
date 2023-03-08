% for function f(x)=x^2+1
clear; clc; close all;

f = @(x) x.^2+1;

% xq = 0:0.1:10;
% plot(xq,f(xq));
R=1.333333
a = input('Enter lower limit a: ');
b= input(' Enter upper limit b: ');
N= input(' Enter the no. of subinterval: ');

dx = (b-a)/N;

x = a:dx:b;
y = f(x);


I = f(x(1)) + f(x(end));

for i = 2:2:N
    I = I + 4*f(x(i));
end
for i = 3:2:N
    I = I + 2*f(x(i));
end

I = dx/3*I;
fprintf('The value of simpsion integration is %f \n',I);
% Vectorization
out= dx/2*(f(x(1)) + 2*sum(f(x(2:end-1))) + f(x(end)));
fprintf('The value of trapezoidal integration is %f \n',out);
fprintf('The value of actual integration is 1.3333333');
fprintf('The actual error of  trapezoidal integration is %f \n',R-out);
fprintf('The actual error of simp integration is %f \n',I-R);


