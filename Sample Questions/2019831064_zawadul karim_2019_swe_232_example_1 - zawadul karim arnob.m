% for function f(x)=2^x
clear; clc; close all;

f = @(x) 2.^x;

% xq = 0:0.1:10;
% plot(xq,f(xq));

a = input('Enter lower limit a: ');
b= input(' Enter upper limit b: ');
N= input(' Enter the no. of subinterval: ');

dx = (b-a)/N;

x = a:dx:b;
y = f(x);


I = f(x(1)) + f(x(end));

for i = 2:N
    I = I + 2*f(x(i));
end

I = dx/2*I;

% Vectorization
out= dx/2*(f(x(1)) + 2*sum(f(x(2:end-1))) + f(x(end)));
fprintf('The value of integration is %f \n',out);

