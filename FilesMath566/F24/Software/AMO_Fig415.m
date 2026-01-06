Fstar = [ 1  2  2
          1  3  8
    	  2  3  5
    	  2  4  3
    	  3  2  6
    	  3  5  0
    	  4  3  1
    	  4  5  7
    	  4  6  6
    	  5  4  4
          6  5  2 ];

T  = Fstar(:,1);
H  = Fstar(:,2);
COST = Fstar(:,3);

m = length(T);
n = length(unique([H; T]));

netdata;

%% Calling Dijsktra
%% >> s=1;[pred, d] = Dijkstra(Fstar, s)
%% pred =
%%     0     1     4     2     3     4
%% d =
%%     0     2     6     5     6    11
