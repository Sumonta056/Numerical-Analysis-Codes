 f = @(x,y) x*y ;
 x0 = 0 ;
 y0 = 2 ;
 h = 0.2 ;
 xn = 1.4 ;
 n = (xn-x0)/h;
 x(1) = x0;
 y(1) = y0;

 for i = 1:n
   x(i+1) = x0 + i*h;

   k1 = h*f(x(i),y(i));
   k2 = h*f(x(i+1),y(i)+k1);

   y(i+1) = y(i) + (k1+k2)/2 ;

   fprintf("X = %0.2f Y = %0.4f\n" , x(i+1),y(i+1))
 end

