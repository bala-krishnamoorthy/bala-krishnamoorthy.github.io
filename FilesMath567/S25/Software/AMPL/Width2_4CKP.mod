# 4CKPS with width(p1)=2 
# Now including set up for branching on hyperplanes, 
# copied from HypBr_p1M1p2M2r.mod
# Last updated Oct 4, 2015

param n ;
param k1;
param k2;
param k3;

param p1 {1..n};
param p2 {1..n};
param p3 {1..n};
param r  {1..n};

param ind;
param pst {1..n}; # min-width direction

param i1; # index for fixing p1x, to k1+i1
param i2; # index for fixing p2x, to k2+i2
param M1;
param M2;
param M3;

param a3 {j in 1..n} := p3[j]*M3 +  r[j];
param a2 {j in 1..n} := p2[j]*M2 + a3[j];
param a1 {j in 1..n} := p1[j]*M1 + a2[j];

param b3p;
param b3;
#param b2p  := b3p + (k2)*M2;
#param b2   := b3  + (k2)*M2;
#param b1p  := b2p + (k1)*M1;
#param b1   := b2  + (k1)*M1;
param b2p  := b3p + (k2+1)*M2;
param b2   := b3  + (k2+1)*M2;
param b1p  := b2p + (k1+1)*M1;
param b1   := b2  + (k1+1)*M1;


# comparable DKP 
param M;
param p {j in 1..n} := p2[j]; # using p2 now
param r1 {1..n};
param a {j in 1..n} := p[j]*M + r1[j];
param bp;
param b;
param k;



#param u {j in 1..n} := 1;
#param u {1..n} ;

#var x {j in 1..n} >= 0, <= u[j], integer;
#var x {j in 1..n} >= 0, <= u[j];

var x {1..n} binary;
#var x {1..n} >= 0, <= 1;

# branching on hyperplanes
param ngr; 			# No. groups of variables = # distinct entries in p1 or p
param varsInGrStart {1..ngr+1};	# Starting index for vars in each group
# param GrpOrder {1..n};		# indices 1..n ordered according to groups
param GrpOrder {j in 1..n} := j;	# a1[j]s or a[j]s are already sorted

var y {1..ngr} integer; # >= -100000000, <= 100000000; # integer variable for each group


#maximize maxxi : x[ind];
#minimize minxi : x[ind];

#maximize maxrx : sum {j in 1..n} r[j]*x[j];
#minimize minrx : sum {j in 1..n} r[j]*x[j];
#maximize maxa3x : sum {j in 1..n} a3[j]*x[j];
#minimize mina3x : sum {j in 1..n} a3[j]*x[j];
#maximize maxa2x : sum {j in 1..n} a2[j]*x[j];
#minimize mina2x : sum {j in 1..n} a2[j]*x[j];
#maximize maxa1x : sum {j in 1..n} a1[j]*x[j];
#minimize mina1x : sum {j in 1..n} a1[j]*x[j];

#maximize maxp1x : sum {j in 1..n} p1[j]*x[j];
#minimize minp1x : sum {j in 1..n} p1[j]*x[j];
#maximize maxp2x : sum {j in 1..n} p2[j]*x[j];
#minimize minp2x : sum {j in 1..n} p2[j]*x[j];
#maximize maxp3x : sum {j in 1..n} p3[j]*x[j];
#minimize minp3x : sum {j in 1..n} p3[j]*x[j];

#maximize maxhsumx : sum {j in 5..9} x[j];
#minimize minhsumx : sum {j in 5..9} x[j];

# comparable DKP
#maximize maxr1x : sum {j in 1..n} r1[j]*x[j];
#minimize minr1x : sum {j in 1..n} r1[j]*x[j];
#maximize maxpx : sum {j in 1..n} p[j]*x[j];
#minimize minpx : sum {j in 1..n} p[j]*x[j];

#maximize maxsumx : sum {j in 1..n} x[j];
#minimize minsumx : sum {j in 1..n} x[j];

subject to knapfeas1 :  b1p <= sum {j in 1..n} a1[j]*x[j] <= b1;
#subject to knapfeas2:  b2p <= sum {j in 1..n} a2[j]*x[j] <= b2;
#subject to knapfeas3:  b3p <= sum {j in 1..n} a3[j]*x[j] <= b3;

#subject to limeq_p1x:  k1+1 <= sum {j in 1..n} p1[j]*x[j] <= k1+2;
#subject to limeq_p1xi1:  sum {j in 1..n} p1[j]*x[j] = k1+i1;
#subject to limeq_p1x1:  k1+1 <= sum {j in 1..n} p1[j]*x[j] <= k1+1;
#subject to limeq_p1x2:  k1+2 <= sum {j in 1..n} p1[j]*x[j] <= k1+2;
#subject to limub_p1x:  sum {j in 1..n} p1[j]*x[j] <= k1;
#subject to limlb_p1x:  sum {j in 1..n} p1[j]*x[j] >= k1+3;

#subject to limeq_p2x:    sum {j in 1..n} p2[j]*x[j] = 17;
#subject to limeq_p2x:  k2+1 <= sum {j in 1..n} p2[j]*x[j] <= k2+2;
#subject to limeq_p2xi2:  sum {j in 1..n} p2[j]*x[j] = k2+i2;
#subject to limeq_p2x1:  k2+1 <= sum {j in 1..n} p2[j]*x[j] <= k2+1;
#subject to limeq_p2x2:  k2+2 <= sum {j in 1..n} p2[j]*x[j] <= k2+2;
#subject to limub_p2x:  sum {j in 1..n} p2[j]*x[j] <= k2;
#subject to limlb_p2x:  sum {j in 1..n} p2[j]*x[j] >= k2+2;

#subject to limeq_p3x:  sum {j in 1..n} p3[j]*x[j]  = 16;
#subject to limeq_p3x:  sum {j in 1..n} p3[j]*x[j]  = k3;
#subject to limub_p3x:  sum {j in 1..n} p3[j]*x[j] <= k3;
#subject to limlb_p3x:  sum {j in 1..n} p3[j]*x[j] >= k3+1;


# DKP
#subject to knapfeas: bp <= sum {j in 1..n} a[j]*x[j] <= b;
#subject to fix_px:  sum {j in 1..n} p[j]*x[j] = k;

#subject to limub_px:  sum {j in 1..n} p[j]*x[j] <= k;
#subject to limlb_px:  sum {j in 1..n} p[j]*x[j] >= k+1;



# group variable constraints
# subject to cmpdvar {i in 1..ngr}: sum {j in GrpOrder[varsInGrStart[i]]..GrpOrder[varsInGrStart[i+1]-1]} x[j] = y[i];
