A = [10 -5 -2 ; 4 -10 3 ; 1 6 10];
b = [3 ; -3 ; -3]
error_limit = 1e-4
x = [0,0,0];
er = Inf;
itr = 0;

while(er>error_limit)
    x_previous = x;
    for i=1:size(A,1)
        sum=0;
        for j=1:i-1
          sum = sum+A(i,j)*x(j);
        end
        for j=i+1:size(A,1)
          sum=sum+A(i,j)*x_previous(j);
        end
        x(i)=(1/A(i,i))*(b(i)-sum);
    end
    itr = itr+1;
    ans(itr,:)=x;
    er=abs(x_previous-x);
end

printf('%d iterations : \n',itr);
disp(ans)

printf('Finally : ');
disp(x)
