A = [1, 1, 1; 
     2, 2, 2; 
     3, 3, 3]; 
B = [1, 1, 1; 
     2, 2, 2; 
     3, 3, 3]; 
C = zeros(size(A));

for i = 1:3
    for j = 1:3
        C(i,j) = A(i,j) + B(i,j);
    end
end

C