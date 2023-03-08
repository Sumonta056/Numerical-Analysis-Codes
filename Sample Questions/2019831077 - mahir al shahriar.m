myFunction= @(x) x.^2-5*x+6;
x_lower=1;
x_upper=2.5;
x_mid= (x_lower+x_upper)/2;
x_prev=inf;

while abs(x_mid-x_prev)>0.0005
	if(myFunction(x_mid)*myFunction(x_upper)<0)
    x_lower=x_mid;
  else
    x_upper=x_mid;
  end                                                                                 
  x_prev=x_mid;
  x_mid=(x_lower+x_upper)/2;
end

disp ("The root is :"), disp (x_mid);
