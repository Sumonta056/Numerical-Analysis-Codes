
A=[10 -2 1;-3 11 2;1 -1 5];

B=[2;5;1];


P=[0;0;0];
n=15;
d=0.0001;
N=length(B);
X=zeros(N,1);

for j=1:n
     for i=1:N
      X(i)=(B(i)/A(i,i))-(A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
     end
X
fprintf('Iteration No %d\n', j)
if abs(X-P)<d
  break;
end
P=X
   end


