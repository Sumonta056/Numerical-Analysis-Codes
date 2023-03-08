
% Reg No. 2019831024
% Topic: Using Newton-Raphson Method to find a approximate root of a function

% Clearing Screen
clc
syms x;

% function
y = x*x-x-1;
% derivate of given function
g = diff(y,x);

% Input Section
a = input('Enter initial guess: ');
e = input('Tolerable error: ');
N = input('Enter maximum number of steps: ');

step = 1;



% Finding Functional Value
fa = eval(subs(y,x,a));

while abs(fa)> e
    fa = eval(subs(y,x,a));
    ga = eval(subs(g,x,a));
    if ga == 0
        disp('Division by zero.');
        break;
    end

    b = a - fa/ga;
    fprintf('step=%d\ta=%f\tf(a)=%f\n',step,a,fa);
    a = b;

    if step>N
       disp('Not convergent');
       break;
    end
    step = step + 1;
end

fprintf('Root is %f\n', a);
