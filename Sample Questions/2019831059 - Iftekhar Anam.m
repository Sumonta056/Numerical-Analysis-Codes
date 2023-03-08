A = input('Enter your coefficient matrix: ');
B = input('Enter source vector: ');
N = length(B)
X = zeros(N,1);
Aug =[A B]
for j=1:N-1
    for i=j+1:N
        m=Aug(i,j)/Aug(j,j);
        Aug(i,:) = Aug(i,:) - m*Aug(j,:)
        
    end
end
Aug
