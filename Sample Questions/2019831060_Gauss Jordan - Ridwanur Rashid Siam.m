A=input('Enter your coefficient matrix: ');
B=input('Enter your source vector: ') ;
N=length(B) ;
X=zeros(N,1) ;
Aug=[A B];

for j=1:N %for columns
   for i=j+1:N %for rows
       m=Aug(i,j)/Aug(j,j) ;
       Aug(i,:)=Aug(i,:)-m*Aug(j,:) ;
   end
end

Aug 

X(N)=Aug(N,N+1)/Aug(N,N) 

for k=N-1; -1; 1
  X(k)=(Aug(k,N+1)-Aug(k,k+1:N)*X(k+1:N))/Aug(k,k)  ;
end 
X