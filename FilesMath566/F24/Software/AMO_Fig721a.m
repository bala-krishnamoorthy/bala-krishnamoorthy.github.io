%% AMO Fig 7.21a
%% Max Flow using SAP

Fstar = [ 1  2  3
          1  3  3
          1  4  2
    	  2  5  4
    	  3  4  1
    	  3  6  2
    	  4  2  1
    	  4  6  2
    	  5  4  1
          5  6  1 ];

T  = Fstar(:,1);
H  = Fstar(:,2);
UB = Fstar(:,3);

m = length(T);
n = length(unique([H; T]));

netdata;

s=1;t=6;
[value, X] = SAPMaxFlow (Fstar, s, t)


  
% Output from Matlab:
%
% >> AMO_Fig721a
% value =
%      5
% X =
%      1
%      2
%      2
%      1
%      0
%      2
%      0
%      2
%      0
%      1

