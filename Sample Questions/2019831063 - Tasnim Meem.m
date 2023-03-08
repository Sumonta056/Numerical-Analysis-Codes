clc
clear
f = input('\n Enter the function f(x): '); 
a = input('Enter lower limit a: ');
b = input('Enter upper limit b: ');
n = input('Enter the number of subintervals: ');

% Using Trapezoidal method
fprintf('\n Application of trapezoidal method');
h = (b-a)/n;
sum = 0;
for k=1:1:n-1
  x(k) = a+k*h;
  y(k) = f(x(k));
  sum = sum+y(k);
end

answer = h/2*(f(a) + f(b) + 2*sum);
fprintf('\n The value using trapezoidal method is %f', answer);

% Using Simpson's 1/3 rule 
fprintf('\n Application of simplsons 1/3 rule');
h = (b-a)/n;
if rem(n,2) == 1
  fprintf('\n Enter valid n');
  n = input('\n Enter n as even number');
end

so = 0;
se = 0;
for k=1:1:n-1
  x(k) = a+k*h;
  y(k) = f(x(k));
  if rem(k,2) == 1
    so = so+y(k); %sum of odd terms
  else 
    se = se+y(k); %sum of even terms
  end
end
answer = h/3*(f(a)+f(b) + 4*so + 2*se);
fprintf('\n The value using trapezoidal method is %f', answer);


% Using Simpson's 3/8 rule 
fprintf('\nApplication of simpsons 3/8 rule');
h = (b-a)/n;
if rem(n,3) == 1
  fprintf('\n Enter valid n');
  n = input('\n Enter n as multiple of 3');
end

so = 0;
sm3 = 0;
for k=1:1:n-1
  x(k) = a+k*h;
  y(k) = f(x(k));
  if rem(k,3) == 0
    sm3 = sm3+y(k);
  else
    so = so+y(k);
  endif
end
answer = (3*h/8)*(f(a)+f(b) + 3*so + 2*sm3);
fprintf('\n The value using trapezoidal method is %f', answer);



