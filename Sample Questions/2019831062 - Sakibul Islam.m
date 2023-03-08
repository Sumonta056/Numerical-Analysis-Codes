%Numerical Integration

%Using Built-in Function in Octave

function fval = NumInt(x)

  fval = 2 - x + log(x) %Numerical Integration for this function

end

% Run this command -> I = quad(@(x) NumInt(x), 1, 2)
% 1 is lower limit & 2 is upper limit

%built in quad funciton calculates area
