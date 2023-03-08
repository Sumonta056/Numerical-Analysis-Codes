x0=2; %This is the set of initial value of X
maxitr=10; %run the programme maximum 10 times
tolx=1e-6; %How much error int the final solution(Tolerance=current-previous)

%compution using Newton Raphsan Method

x=x0;
xold=x0;
for i=1:maxitr
  f=(x*x*x)-x-1;
  df=(3*x*x)-1;
  x=x-(f/df);
  err(i)=abs(x-xold);
  xold=x;
  if(i>maxitr) | (err(i)<tolx)
     break;
  end
end
output=["Value of x is  ", num2str(x), "  After  ",num2str(i), "  Iteration "];
disp(output);
