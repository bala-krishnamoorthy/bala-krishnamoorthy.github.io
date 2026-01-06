%% Math 466/566, Fall 2024
%% Commands for running BFS on AMO Problem 3.24

    
FS = [
      1  2
      1  3
      1  5
      2  4
      2  5	 
      3  5
      3  6
      4  5
      4  8
      5  6
      6  7	 
      6  9
      7  4
      7  5
      7  8
      9  7
      9  8	 
      ];

s=1;

[Pred, Order] = bfs_detailed(FS,s)

[pred, order] = bfs(FS,s)
  

% Output from Matlab
% >> AMO_3_24
% Pred =
%      0     1     1     2     1     3     6     4     6
% Order =
%      1     2     3     5     4     6     8     7     9
% pred =
%      0     1     1     2     1     3     6     4     6
% order =
%      1     2     3     5     4     6     8     7     9
