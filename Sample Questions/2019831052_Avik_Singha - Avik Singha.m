clear all                           %Clear all stored variables
format short                        %Display output upto 4 digits

A = [3 -1 1 ; -1 3 -1 ; 1 -1 3];
b = [-1 ; 7 ; -7]                   %R.H.S of the equation
maxerr = 0.0001                     %Set maximum error
x = zeros(1,size(A,1));             %Take startpoints
err1 = Inf;                         %Initialize error as high
itr = 0;                            %Set iteration counter to Zero

while(err1>maxerr)
    x_old = x;                      %Preserve old value
    for i=1:size(A,1)
        sum=0;                      %Initialize sum
        for j=1:i-1
          sum = sum+A(i,j)*x(j);    %Compute total
        end
        for j=i+1:size(A,1)
          sum=sum+A(i,j)*x_old(j);
        end
        x(i)=(1/A(i,i))*(b(i)-sum); %Gauss-Seidel Method Updation
    end
    itr = itr+1;                    %Update iteration counter
    y(itr,:)=x;                     %To see outputs
    err1=abs(x_old-x);              %Compute error
end

printf('Answer found in %d iterations : \n',itr);
disp(y)

printf('Ans : ');
disp(x)
