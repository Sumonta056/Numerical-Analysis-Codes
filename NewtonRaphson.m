f = @(x) (x^3)- 3*x + 1 ;
df = @(x) (3*(x^2)) - 3 ;
x0 = .3 ;
n = 10 ;
e = .0001;

if df(x0) ~= 0
  for i = 1:n
    x1 = x0 - f(x0)/df(x0) ;
    fprintf("X%d = %0.4f \n", i , x1)

    if abs(x1-x0)<e
      break
    endif

    x0 = x1;

  endfor

else
  disp('NOT FOUND')
end
