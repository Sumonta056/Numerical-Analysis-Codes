%for function f(x)=1/1+x
format short	      % Display results in 4 decimal
clear all;	        %Clear all the stored variable
clc	                %Clear the Screen

f= @(x) 1./(1+x);   	% Define function here

a = input('Enter lower limit a: ');

b= input(' Enter upper limit b: ');

n= input(' Enter the no. of subinterval: ');

h=(b-a)/n;

i= 1:1:n-1;
s=f(a+i.*h);

out =(h./2).*(f(a) +2.*sum(s) +f(b));

fprintf('The value of integration is %f \n',out);
