%% Math 566 (Fall 2024)
%%
%% Network from Lecture 4, which is a slighty modified
%% version of the network in AMO Figure 2.13, page 32.

data=[1  1 2 25 30
      2  1 3 35 50
      3  2 3 45 10
      4  2 4 15 40
      5  3 4 15 30
      6  4 5 45 60
      7  5 3 25 20
      8  5 4 35 50 ];

% The first column is just the arc index (or number)
% It is redundant info, and is listed her just for
% the sake of convenience.     

T=data(:,2);
H=data(:,3);
m=length(T);
n=max(max(T), max(H));

netdata

DEGO
celldisp(A)

DEGI
celldisp(AI)
