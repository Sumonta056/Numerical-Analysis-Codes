A=input('Enter Matrix A: ');
B=input('Enter Matrix B: ');
P=input('Enter initial value: ');
n=input('Enter no of iterations: ');
e=input('Enter your tollerance: ');
N=length(B);
X=zeros(N,1);

for j=1:n
  for i=1:N
    X(i)=(B(i)/A(i,i))-(A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
  end
  fprintf('Iteration : %d\n', j)
  X
  if abs(X-P)<e
    break
  end
  P=X;
  end





