%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       Dijkstra            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Fstar is supposed to be have the tail, head, and cost of each arc
% in its columns 1,2, and 3.
% The function netdata.m should be present in the same directory. 

% Output:   pred(i)=-1 ==> there is no s-i directed path,
%                          will then have d(i)=inf


function [pred, d] = Dijkstra(Fstar, s)

   T    = Fstar(:,1);
   H    = Fstar(:,2);
   COST = Fstar(:,3);

   m=length(T);
   n=max(max(T), max(H));

   netdata;

   d=inf*ones(1,n);                                        % initialization
   pred=-ones(1,n);
   Sbar=1:n;
   
   d(s)=0;
   pred(s)=0;
   
   while ~isempty(Sbar)
      [dmin,ind]=min(d(Sbar));
      
      i=Sbar(ind);
      Sbar=setdiff(Sbar,[i]);
      kk=A{i}; 
      jj=H(kk);
      
      [d(jj), index]=min([d(jj); d(i)+COST(kk)']);         % we create a 2 by |jj| matrix
      pred(jj(find(index==2)))=i;                          % index =1 or 2, which records 
                                                           % the row-number that hits the minimum.
   end
