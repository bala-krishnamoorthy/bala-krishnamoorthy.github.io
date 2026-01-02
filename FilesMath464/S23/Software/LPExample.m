format rat
format compact

A = [1 1 -1 0 0; 3 1 0 -1 0; 3 2 0 0 1];
b = [2 4 10]';
c = [2 1 0 0 0]';
[m,n]=size(A);

Bind = [1 3 4]; % == vertex B(10/3, 0) 
B = A(:,Bind); Binv = inv(B); cB = c(Bind);
cP = (c' - cB'*Binv*A)';
x = zeros(n,1); xB = Binv*b; x(Bind) = xB;

j=2; d = zeros(n,1); d(j)=1; dB = -Binv*A(:,j); d(Bind) = dB;
