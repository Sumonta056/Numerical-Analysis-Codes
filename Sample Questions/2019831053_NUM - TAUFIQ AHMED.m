A=input('Enter a Co-efficient matrix A: ') ;
B=input('Enter Source Vector B: ') ;
P=input('Enter initial Gauss Vector: ') ;
n=input('Enter no. of iterations: ') ;
e=input('Enter your tollerance: ') ;

N=length(B) ;
X=zeros(N,1) ;
Y=zeros(N,1) ;

for j=1:n 
  for i=1:N 
    X(i)=(B(i)/A(i,i))-(A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i) ;
    P(i)=X(i) ;
  end
  fprintf('Iteration no:%d\n',j) 
  X
  if abs(Y-X)<e
    break 
  end
  Y=X ;
end 
