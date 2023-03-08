%% Md Sayed Al Nayem
%% Reg. 2019831067
%% Simpson 1/3 rule  f(e^x)

f = @(x) exp(x);
a = 0; 
b = 1; 
n = 6; 
h = (b-a)/n;
x = a:h:b;
fx = f(x);
I = (h/3)*(fx(1) + fx(n+1) + 4*sum(fx(2:2:n)) + 2*sum(fx(3:2:n-1)));
disp(I);
