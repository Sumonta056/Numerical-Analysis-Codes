 f=@(x) x*x*x - 2*x*x -4
 df=@(x) 3*x*x -4*x
 a=2,b=3,x=a;
  for i=1:1:20
    x1=x-(f(x)/df(x));
    x=x1;
    fprintf('Value is %.10f\n',x1)
  end
   solution=x;
    fprintf('Approximate root is %.10f',solution)


