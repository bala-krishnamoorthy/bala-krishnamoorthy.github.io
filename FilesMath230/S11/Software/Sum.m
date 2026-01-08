% Sum.m for finding the sum of two column vectors

function c = Sum(a,b)

n = length(a); % finding the length of a and b, assuming they are same

c = zeros(n,1); % initialize the sum to zero column vector

for i=1:n
    c(i) = a(i) + b(i);
end
