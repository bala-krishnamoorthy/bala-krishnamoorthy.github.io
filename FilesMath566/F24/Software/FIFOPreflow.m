%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Preflow algorithm with highest distance label %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% "global" variables:
%ACTIVE{d}---Active node LIST with distance d
%act_found----=1, find an active node;
%act_found----=0, if there is no active node, algorithm stops.

%dist_i --- d(i), where i is the current active node
%d(i)---- distance label
%e(i)---- exess flow 
%level---current position in ACTIVE
%ADMIS{i}----LIST of admissible arc from node i


function [value, X, nsatpush, nunsatpush] = FIFOPreflow (Fstar, s, t)

T=Fstar(:,1); 
H=Fstar(:,2); 
UB=Fstar(:,3); 

m=length(T); 
n=max(max(T), max(H)); 

netdata;

nsatpush = 0;
nunsatpush = 0;

FIFOPreflow_init;

FIFOPreflow_find_active;

iter=0;
while act_found==1 
   FIFOPreflow_push_relabel;
   iter=iter+1;
   FIFOPreflow_find_active;
end %while

fprintf(1,'\n\n Final results:\n\n');
iter
disp('X = ');
disp([T(find(X > 0)) H(find(X>0)) X(find(X>0))]);
value=sum(X(A{s}))-sum(X(AI{s}))

fprintf(1,' #sat/#unsat pushes = %d/%d\n\n',nsatpush,nunsatpush);
