%ingredients
f = input('Enter your funtion to find a root : ');
a =  input(' Enter left side of interval : ');
b = input('Enter right side of the interval : ');
n = input('Enter Number of  intervals : ');
e = input('Enter Tolerance : ');

if f(a) * f(b) < 0
    for i = 1:n
        c = (a+b)/2;
        fprintf('C%d = %0.4f\n' , i , c)
        if abs(c-b) < e || abs(c-a) < e
            break;
        end
        
        if f(a) * f(c) < 0
            b = c;
        elseif f(b) * f(c) < 0
            a = c;
        end
        
    end
end       
        
        
        