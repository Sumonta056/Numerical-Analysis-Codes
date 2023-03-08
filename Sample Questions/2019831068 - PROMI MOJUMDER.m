f = @(x)(1/(1+x^3));
a = 0;
b = 6;
n = 6;
h = (b - a) / n;
%trapezoidal rule
s2 = f(a) + f(b);
for i = 1:1:n-1
  s2 = s2 + 2*f(a+i*h);
end
%simpson 3/8 rule
s3 = f(a) + f(b);
for i = 1:1:n-1
   if (rem(i, 3) ~= 0) s3 = s3 + 3*f(a+i*h);
end
for i = 3:3:n-3
  s3 = s3 + 2*f(a+i*h);
end
%simpson 1/3 rule
s = f(a) + f(b);
for i = 1:2:n-1
  s = s + 4*f(a+i*h);
end

for i = 2:2:n-2
  s = s + 2*f(a+i*h);
end
end
I = h*s/3;
I2 = h*s2/2;
I3 = 3*h*s3/8;
disp('Answer for trapezoidal rule is: '); disp(I2);
disp('Answer for simpsons 1/3 rule is: '); disp(I);
disp('Answer for simpsons 3/8 rule is: '); disp(I3);




