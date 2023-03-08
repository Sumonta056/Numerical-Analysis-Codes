clc
clear all
close all

% Name ; Sumonta Saha Mridul
% Reg Roll ; 2019831056

% Solve the system of linear equation with inverse matrix
% Given equations :
% x + y + z = 3
% x + 2y = 6
% y + 4z = 10

%taking inputs

%matrix representing the coefficient of the system
a = input('enter the matrix for coefficient: ');  % [1 1 1 ; 1 2 0 ; 0 1 4]
%matrix representing the constants
b = input('enter the matrix for constants: ');    % [ 3 ; 6 ; 10 ]

% ax = b
% x = (a^-1) * b
x = inv(a)*b;

disp('Solution matrix is ');
disp(x);
