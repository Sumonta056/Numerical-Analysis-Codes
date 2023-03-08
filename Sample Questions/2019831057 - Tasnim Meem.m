clc
clear
% 3x + 8y = 5
% 4x + 11y = 7

a = [ 3  8; 
      4 11 ];
b = [5; 7];

x = inv(a)*b;

fprintf('The solution is :\n x = %f \n y = %f', x(1,1), x(2,1));
