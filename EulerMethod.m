f = @(x,t) x+t ;
 x0 = 0;
 t0 = 1 ;
 xn = 1 ;
 h = 0.1 ;
 n = (xn - x0)/h;
 x(1) = x0;
 t(1) = t0;

 for i = 1:n

   t(i+1) = t(i) + h * f(x(i),t(i)) ;
   x(i+1) = x0 + i*h ;

   fprintf("X = %0.2f  Y = %0.4f \n",x(i+1),t(i+1))

end
