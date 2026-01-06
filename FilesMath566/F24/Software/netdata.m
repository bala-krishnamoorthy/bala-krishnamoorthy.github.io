%% Math 566 (Fall 2024)
%% Matlab code to extract out- and in-arc lists 
%% from the forward star representation

 
% T: TAIL,  H: HEAD
% DEGO: outdegree,  DEGI: indegree
% n: number of nodes,  m: number of arcs
% A{i}:  out-arc list at node i, cell array
% AI{i}: in-arc list at node i, cell array

DEGO=zeros(1,n);
DEGI=DEGO;
A{1,n} = [];
AI{1,n} = [];
for k=1:m
   i=T(k);
   j=H(k);
   pos=DEGO(i)+1;
   DEGO(i)=pos;
   A{i}(pos)=k; % A{i} = [A{i} k]

   posI=DEGI(j)+1;
   DEGI(j)=posI;
   AI{j}(posI)=k;
end%for


   
