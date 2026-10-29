%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  FIFO label-correcting algorithm   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Fstar is supposed to be have the tail, head, and cost of each arc
% in its columns 1,2, and 3.
% The function netdata.m should be present in the same directory. 

function [pred, d] = FIFOlc(Fstar, s);

   T    = Fstar(:,1);
   H    = Fstar(:,2);
   COST = Fstar(:,3);

   m=length(T);
   n=max(max(T), max(H));

   netdata;

   pred=-ones(1,n);
   d=inf*ones(1,n);  % initialization
   d(s)=0;
   pred(s)=0;
   LIST=[s];

   while ~isempty(LIST)
      i=LIST(1);
      LIST=LIST(2:end);
      kk=A{i}; jj=H(kk);
      [d(jj), index]=min([d(jj); d(i)+COST(kk)']); 
      pred(jj(find(index==2)))=i;   
      LIST=[LIST setdiff(jj(find(index==2))',LIST)];
   end%while

