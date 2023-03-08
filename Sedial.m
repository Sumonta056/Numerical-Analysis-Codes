A = input("Coefficient Matrix");
B = input("Source Vector");
P = input("Inital Gauss Vector");
n = 7 ;
N = length(B);
X = zeros(N,1);
Y = zeros(N,1);
e = 0.0001;
for j= 1:n
  for i =1:N
    X(i)=(B(i)/A(i,i))-(A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
    P(i) = X(i);
  endfor
  X
  if abs(X-Y)<e
    break
  endif
  Y = X ;
end

