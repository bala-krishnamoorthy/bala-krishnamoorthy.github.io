%%%%%%%%%%%%%%%%%%%%%%%%%%
% FIFOPreflow_push_relab %
%%%%%%%%%%%%%%%%%%%%%%%%%%

%i is the current active node

if ~isempty(ADMIS{i})          %push phase
   arc=ADMIS{i}(1);
   k=abs(arc);
   j=(arc>0)*H(k)+(arc<0)*T(k);
   resid=(arc>0)*(UB(k)-X(k))+(arc<0)*X(k);
   
   delta=min(e(i),resid);               %push operations
   e(i)=e(i)-delta;
   e(j)=e(j)+delta;
   X(k)=X(k)+sign(arc)*delta;
   
   if delta==resid && arc > 0  %saturating push
      ADMIS{i}=setdiff(ADMIS{i}, arc);    %delete the first element takes O(1)
      posT(k)=0;
      posH(k)=0;
      nsatpush = nsatpush + 1;
   else
      nunsatpush = nunsatpush + 1;
   end%if


   %manage ACTIVE list
   if e(i)==0
      %ACTIVE{d(i)}=setdiff(ACTIVE{d(i)}, [i]);
      origACTIVE=ACTIVE{d(i)};
      [newACTIVE,not_i_ind]=setdiff(ACTIVE{d(i)}, [i]);
      ACTIVE{d(i)}=origACTIVE(sort(not_i_ind));
   end%if
   if e(j)==delta && j~=t && j~=s;   %j is a new active node
      ACTIVE{d(j)}=[ACTIVE{d(j)}, j];
   end%if
      
else                      %relabel
   arcs=A{i};      
   sub=find(X(arcs)<UB(arcs));
   out_arcs=arcs(sub);
   arcs=AI{i};      
   sub=find(X(arcs)>0);
   in_arcs=arcs(sub);
   d_i=d(i);
   d(i)=min(d([H(out_arcs); T(in_arcs)]))+1;
   
   %ACTIVE{d_i}=setdiff(ACTIVE{d_i},[i]);    %move node i from ACTIVE{old_d_i}
   origACTIVE=ACTIVE{d_i};
   [newACTIVE,not_i_ind]=setdiff(ACTIVE{d_i}, [i]);
   ACTIVE{d_i}=origACTIVE(sort(not_i_ind));
   
   ACTIVE{d(i)}=[ACTIVE{d(i)}, i];          %move node i to ACTIVE{new_d_i}
   level=length(ACTIVE);
   
   admit1=find(posH(A{i})>0);
   for p=1:length(admit1)
      k=A{i}(admit1(p));  
      ADMIS{H(k)}=setdiff(ADMIS{H(k)},[-k]);  %deletion can be done in O(1)
      posH(k)=0;
   end%for
   admit2=find(posT(AI{i})>0);
   for p=1:length(admit2)
      k=AI{i}(admit2(p)); 
      ADMIS{T(k)}=setdiff(ADMIS{T(k)},[k]);  %deletion can be done in O(1)
      posT(k)=0;
   end%for
       
   admit1=find(d(H(out_arcs))+1==d(i));
   admit2=find(d(T(in_arcs))+1==d(i));
   ADMIS{i}=[out_arcs(admit1), -in_arcs(admit2)];
   posT(out_arcs(admit1))=1:length(admit1);
   posH(in_arcs(admit2))=length(admit1)+[1:length(admit2)];


 end%if

 
