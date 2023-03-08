% Runge Kutta Method of solving first order differntial equation
% Solution of the diff eqn y'=y ln(y)/x; with initial condition x0=2, y0=10, from x=2 to x=10


clear all ; % Clears all the previously defined variables from the memory
clc ; % Clears the command window

function result = f(a,b) 
  result= b*log(b)/a; % Function to be evaluated; here in this example, it is f(x,y)=y*ln(y)/x;  Since  the variables x,y are used in the main program variables a,b are used instead of x,y.  
end 

%INPUTS
% Initial values
x0=2;       % Starting value of x
y0=e;


%Final value of x at which the solution (or simulation) has to stop
x_final=10;
h=0.01 ;%step size
k=1;  %counter

%COMPUTATION STARTS
X(1)=x0;  % First value in the array is the initial value
Y(1)=y0;
 
for x=x0:h:x_final
k=k+1;  %incrementing the counter
F1=h*f(X(k-1),Y(k-1));  % Calculatition of F1; f(X(k-1),Y(k-1)) sends values stored in X(k-1) and Y(k-1) to the function named f in the line no. 15, gets the result and uses to calculate F1
x01=X(k-1)+(h/2);
y01=Y(k-1)+(F1/2);
F2=h*f(x01,y01);        % Calculatition of F1; f(x01,y01) sends values stored in x01 and y01 to the function named f in the line no. 15, gets the result and uses to calculate F2
x02=x01;
y02=Y(k-1)+(F2/2);
F3=h*f(x02,y02);        % Calculatition of F3; f(x02,y02) sends values stored in x02 and y02 to the function named f in the line no. 15, gets the result and uses to calculate F3

x03=X(k-1)+h;
y03=Y(k-1)+F3;
F4=h*f(x03,y03);        % Calculatition of F4; f(x03,y03) sends values stored in x03 and y03 to the function named f in the line no. 15, gets the result and uses to calculate F4

X(k)=X(k-1)+h;
Y(k)=Y(k-1)+(1/6)*(F1+2*F2+2*F3+F4);  
end
plot(X,Y) 
