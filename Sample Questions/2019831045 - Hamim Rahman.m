%Euler's method to find y(2.2) for the ode dy/dx = -x*y^2, where y(2)=1
f=@(x,y)(-x*y^2);

x(1) = 2;
h = (2.2-2)/4;
x = 2:h:2.2;
y(1) = 1;
n = length(x);

fprintf('Euler method\n');
for i = 1:n-1
  y(i+1) = y(i)+h*f(x(i), y(i));
end

for i = 1:n
  fprintf('%f\t %f\n', x(i), y(i));
end

plot(x, y, 'r-o');

%Runge Kutta method to find y(2.2) for the ode dy/dx = -x*y^2, where y(2)=1
f1=@(a,b)(-a*b^2);

a(1) = 2;
h = (2.2-2)/4;
a = 2:h:2.2;
b(1) = 1;
n = length(a);
fprintf('\n\nRunge Kutta\n');
for i = 1:n-1
  k1 = h*f(a(i), b(i));
  k2 = h*f(a(i)+h, b(i)+k1);
  b(i+1) = b(i) + (k1+k2)/2;
end

for i = 1:n
  fprintf('%f\t %f\n', a(i), b(i));
end
hold on
plot(a, b, 'b-o');

