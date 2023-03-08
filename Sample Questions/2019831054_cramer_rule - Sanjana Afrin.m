D = input('Enter your coefficient matrix: ')
b = input('Enter source vector: ')
N = length(b);
Di = zeros(N,1);
d = det(D);
D_original = D;
if(d~=0)
 for j=1:N;
   D(:,j) = b;
   disp("D"),disp(j);
   Di(j)=det(D)/d;
   D=D_original;
 endfor
printf("Solution using Cramer's rule is : \n");
disp(Di)
else
printf("Cramer's Rule is not applicable \n");
endif

