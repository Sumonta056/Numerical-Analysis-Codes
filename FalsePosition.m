f = @(x) (x^3)-(2*(x^2))-4 ;
a = 2;
b = 3;
n = 15 ;
e = .0001 ;

if f(a)*f(b) < 0
  for i = 1:n
    c = (a*f(b) - b*f(a))/(f(b)-f(a));
    fprintf("P%d = %0.4f\n",i,c)
    if abs(c-b)<e || abs(c-a)<e
      break
    endif

    if f(c)*f(b) < 0
      a = c;
    elseif f(c)*f(b)<0
      b = c
    endif
  endfor


else
  dis('Root Not Found')
end
