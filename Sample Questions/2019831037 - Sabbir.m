%Euler's method to find y(2.2) for the ode dy/dx = x+y+xy, where y(2)=1
f=@(x,y)(x+y+x*y);

h = 0.025;
x = 0:h:0.1;
n = length(x);
y(1) = 1;

for i = 1:n-1
  y(i+1) = y(i)+h*f(x(i), y(i));
end

for i = 1:n
  fprintf('%f\t %f\n', x(i), y(i));
end

plot(x, y, 'g-o');
