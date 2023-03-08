f = @(x) (x^3)-x-4;

a = 1.7;
b = 1.8;
n = 10;
e = .0001

if f(a)*f(b)<0
  for i=1:n
    c = (a+b)/2;
    fprintf("P%d = %0.4f\n",i,c)
    if abs(c-b)<e || abs(c-a)<e
      break
    endif

    if f(a)*f(c)<0
      b = c;
    elseif f(b)*f(c)<0
      a = c;
    endif
  endfor

else
  disp('No root found')
end
