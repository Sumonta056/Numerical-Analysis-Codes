function f = f(x)
    f = x^3 - 4 * x - 9;
end

function fprime = fprime(x)
    fprime = 3 * x^2 - 4;
end

function bisection(a, b)
    if (f(a) * f(b) < 0)
        for i = 1:1:10
            c = (a + b) / 2;
            disp(c);
            if (f(a) * f(c) > 0)
                a = c;
            else
                b = c;
            end
        end
     else
        disp("Invalid Input");
    end
end

function false_position(a, b)
    if (f(a) * f(b) < 0)
        for i = 1:1:10
            c = (a * f(b) - b * f(a)) / (f(b) - f(a));
            disp(c);
            if (f(a) * f(c) > 0)
                a = c;
            else
                b = c;
            end
        end
     else
        disp("Invalid Input");
    end 
end

function newton_raphson(x) 
    for i = 1:1:10
        x = x - f(x) / fprime(x);
        disp(x);
    end
end

%bisection(2, 3);
%false_position(2, 3);
%newton_raphson(2, 3);
