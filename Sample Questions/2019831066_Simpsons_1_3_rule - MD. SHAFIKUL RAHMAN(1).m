f=@(x)x*sin(x);
a=0;
b=pi/2;
n=18;
h=(b-a)/n;
s=f(a)+f(b);
for i=1:2:n-1
  s=s+4*f(a+i*h);
end
for i=2:2:n-2
  s=s+2*f(a+i*h);
end
I=h/3*s
