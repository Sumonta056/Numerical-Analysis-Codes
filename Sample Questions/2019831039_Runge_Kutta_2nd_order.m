f=input('\n Enter the function f(x,y): '); %inline('x^2+y)
%Write your f(x,y) function, where dy/dx=f(x,y), x(x0)=y0.
% f=@ (x,y) x^2+y;
x0=input('\n Enter initial value of x i.e. x0: ');
y0=output('\n Enter initial value of y i.e. y0: ');
h=input('\n Enter the step length h: ');
%formula: k1=h*f(x0,y0);
%k2=h*f(x0+h,y0+k1);y1=y0+(k1+k2)/2;
fprint('\n x y ');
fprint('\n%4.3f %4.3f ',x0,y0);
while x0<xn
k1=h*f(x0,y0); 
x1=x0+h;
y1=y0+(k1+k2)/2;
x0=x1;
y0=y1;
fprint('\n%4.3f %4.3f ',x0,y0);
end
answer=y0;
fprint('\n the value of y at x=%f is y=%f',xn,answer);