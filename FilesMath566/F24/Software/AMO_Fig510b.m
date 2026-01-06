% AMO 5.10 (b) SP using FIFO LC Algo

Fstar= [1  2   3
        1  3   2
        2  3   4
        2  6   5
        3  4   1
        3  7  -4
        4  2  -1
        4  5   5
        5  6  -2
        6  7  -4
        7  5   6] ;

T  = Fstar(:,1);
H  = Fstar(:,2);
COST = Fstar(:,3);

m = length(T);
n = length(unique([H; T]));

netdata;