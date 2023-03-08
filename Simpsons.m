
f = @(x) (1/(1+(x^2))) ;
b = 6 ;
a = 0 ;
n = 6 ;

h = (b-a)/n ;
y = f(a) + f(b) ;

for i = 1 : 2 : n-1
  y = y + 4*f(a + i*h) ;
endfor
for i = 2 : 2 : n-2
  y = y + 2*f(a + i*h) ;
endfor

ans = y * (h/3)
