function [EntrySum,Sum] = DoSomething(A,B)

[m,n]=size(A);

% Assuming sizes of A and B are same.

Sum = A + B;

EntrySum = 0; % initialize sum of entries to zero

for i=1:m
    for j=1:n
        EntrySum = EntrySum + A(i,j) + B(i,j);
    end
end

