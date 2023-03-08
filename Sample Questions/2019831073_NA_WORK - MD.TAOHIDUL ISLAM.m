# input of (x,y)

x = [1,21,-334,432,-512];
y = [1,21,334,432,512];

subplot(2,2,1)
plot(x,y);
title(' y = abs x');
xlabel('x');
ylabel('y');

# input of (x,y)

subplot(2,2,3)
fplot(@tan, [-100,100]);
title('y = tan x');

#input of (x,y)
x=[2,3,4,5];
y=[16,81,256,625]
subplot(2,2,2)
plot(x,y);
title('y = x^4');
xlabel('x');
ylabel('y');

