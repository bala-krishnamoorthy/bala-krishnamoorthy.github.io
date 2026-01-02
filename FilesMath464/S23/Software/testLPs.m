format rat
format compact

% default LP example from lectures
A = [1 1 -1 0 0; 3 1 0 -1 0; 3 2 0 0 1];
b = [2 4 10]';
c = [2 1 0 0 0]';
l = zeros(5,1);
[x,z,sts] = linprog(c,[],[],A,b,l)

% removing 3rd constraint to get an unbounded LP
Au = A(1:2,:);
bu = b(1:2);
cu = -c;
lu = zeros(5,1);
[xu,zu,stsu] = linprog(cu,[],[],Au,bu,lu)

% changing 3rd constraint of original LP to get an unbounded LP
Ai = A;
bi = b;
bi(3) = 4;
ci = c;
li = zeros(5,1);
[xi,zi,stsi] = linprog(ci,[],[],Ai,bi,li)

% Cycling example for lexicographic and Bland's pivoting rules
Ac = [[1/2 -11/2 -5/2 9; 1/2 -3/2 -1/2 1; 1 0 0 0] eye(3)];
bc = [0 0 1]';
cc = [-10 57 9 24 0 0 0]';
lc = zeros(7,1);
[xc,zc,stsc] = linprog(cc,[],[],Ac,bc,lc)

% Simple LP with only <= constraints
As = [2 1 1 0; 3 5 0 1];
bs = [4 15]';
cs = [-1 -1 0 0]';
ls = zeros(4,1);
[xs,zs,stss] = linprog(cs,[],[],As,bs,ls)

M = 10000;