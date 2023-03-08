clear; clc; close all;

f = @(x) 4*log(x) - x;
df = @(x) 4/x - 1;

x = 6;

xq = 0:0.1:10;
plot(xq,f(xq))

for i = 1:10
  x = x - f(x)/df(x);
end

plot(x,f(x),'rx')
set(gca,'xaxislocation','origin')
