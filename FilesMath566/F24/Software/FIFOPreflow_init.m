%%%%%%%%%%%%%%%%%%%%%%
%  FIFOPreflow_init  %
%%%%%%%%%%%%%%%%%%%%%%

% t---starting node for RBFS Search

ACTIVE{2*n}=[];
current(1:n)=1;
e(1:n)=0;
d(1:n)=0;
X=zeros(m,1);
posT=zeros(1,m);
posH=posT;

%find the exact distance label
%s=1; t=n;
LIST=[t];
first=1;
last=length(LIST);
mark(1:n)=0;
mark(t)=1;
d(1:n)=0;
while first <= last
   i=LIST(first);
   if ~isempty(AI{i})
      jj=T(AI{i});          %AI{i} stores arc_names
      admit=jj( find( mark(jj)==0 ) );
      mark(admit)=1;
      d(admit)=d(i)+1;
      LIST=[LIST,admit'];
      last=last+length(admit);
    end%if
    first=first+1;
end%while

d( find(d==0) )=n;
d(t)=0;
d(s)=n;
arcs=A{s};
X(arcs)=UB(arcs);
nsatpush = nsatpush + length(arcs);

heads=H(arcs);
e(heads)=UB(arcs);
for ind=1:length(heads)
   j=heads(ind);
   if j~=t %&& d(j) <= n
       dist=d(j);
       ACTIVE{dist}=[ACTIVE{dist}, j];
   end%if
end%for

level=2*n;

%create an admissible list

ADMIS{n}=[];
for k=1:m
   i=T(k); j=H(k);
   if d(i)==d(j)+1 && X(k)<UB(k)
      ADMIS{i}=[ADMIS{i}, k];
      posT(k)=length(ADMIS{i});      
      posH(k)=0;
      %by remembering the position of arc k at the ADMIS{i},
      %one can later delete k from ADMIS{i} in O(1) time
   end%if 
   if d(j)==d(i)+1 && X(k)>0
      ADMIS(j)=[ADMIS{j}, -k];
      posH(k)=length(ADMIS{j});       
      posT(k)=0;
   end%if
end%for   
   
