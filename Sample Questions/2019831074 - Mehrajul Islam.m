# 2019831074
# Md. Mehrajul Islam

#input of (a,b)
a = [3,5,7,9,11,13];
b = [9,25,49,81,121,169];

subplot(2,2,1)
plot(a,b);
title('y = x^2');
xlabel('x');
ylabel('y');

subplot (2,2,3)
fplot(@sin,[-10,10]);
title('y = sinx');

subplot (2,2,2)
fplot(@cos,[-10,10]);
title('y = cosx');

#input of (x,y)
x = [1,2,3,4,5,6,7,8,9,10,11];
y = [1,8,27,64,125,216,343,512,729,1000,1331];

subplot(2,2,4)
plot(x,y,'bo-','MarkerSize',2);
title('y = x^3');
axis([0,12,0,1400]);
xlabel('x');
ylabel('y');
