clc
f = @(x) x^3-x-1;
a = input('enter the 1st boundary value : ');
b = input('enter the 2nd boundary value : ');
tolerance  = input('inter the tolerance : ');

fprintf('\n\na\t\tb\t\tx\t\tf(x)\n');
for i = 1:13

  x(i) = (a*f(b)-b*f(a))/(f(b) - f(a));
  absolute = abs(f(x(i)));
  if absolute < tolerance
    break
    end
   fprintf('%f\t%f\t%f\t%f\n',a,b,x(i),f(x(i)));
  if f(x(i))<0
    a = x(i);
  else
    b = x(i);
  end

  p=x(i);

end

for j = 1:i
  error(j) = p - x(j);
end
answer = p;
fprintf('root is %.4f\n',answer);
plot(error);
grid on;
title('plot of error');


