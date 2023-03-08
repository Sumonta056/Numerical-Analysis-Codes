%Topic - Plot, Subplot and Graph related problem given (x, y) data range

%In this assignment we will take an equation given by the user and
%present two graphs of that equation of differing range

%Taking a vaid equation from user as input
f = inline(input("Enter a valid equation: ", "s"));

%Taking range for the first subplot
l0 = input("Start of Range for First Graph: ");
r0 = input("End of Range for First Graph: ");
%Taking range for the second subplot
l1 = input("Start of Range for First Graph: ");
r1 = input("End of Range for First Graph: ");

%Preparing data for the first subplot
x0 = [];
y0 = [];
for i = l0:r0
  x0(end + 1) = i;
  y0(end + 1) = f(i);
end

%Preparing data fot the second subplot
x1 = [];
y1 = [];
for i = l1:r1
  x1(end + 1) = i;
  y1(end + 1) = f(i);
end;

%Dividing the plot into two parts and ploting the first subplot on upper row
subplot(2, 2, 1:2);
plot(x0, y0);
%Plotting the second subplot on lower row
subplot(2, 2, 3:4);
plot(x1, y1);
