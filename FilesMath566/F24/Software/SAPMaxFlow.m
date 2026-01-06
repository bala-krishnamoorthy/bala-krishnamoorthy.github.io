%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Shortest Augmenting Path algorithm for max flow   %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [value, X] = SAPMaxFlow (Fstar, s, t);

%% Fstar is assumed to have T, H, UB in columns 1, 2, 3.
%% The nodes are assumed to be numbered from 1 to n.      

T    = Fstar(:,1);
H    = Fstar(:,2);
UB   = Fstar(:,3);

m=length(T);
n=max(max(T), max(H));

netdata;

mark = zeros(n,1);
X = zeros(m,1);
value=0;

%%%  Reverse BFS search starting from t to get 
%%%  the starting distance labels
LIST=[t];
first=1;
last=length(LIST);
mark(t)=1;
dist(1:n)=inf; %% shortest distance in terms of # arcs
dist(t)=0;
while first <= last
       i=LIST(first);
       if ~isempty(AI{i})
           ii=T(AI{i});          %AI{i} stores arc_names
           admit=ii( find( mark(ii)==0 ) );
           mark(admit)=1;
           dist(admit) = dist(i) + 1;
           LIST=[LIST;admit];
           last=last+length(admit);
       end%if
   first=first+1;
end%while

i = s;
while dist(s) < n

   jj = A{i}; 
   admjj = jj(find( X(jj)<UB(jj) ));
   if ~isempty(admjj)
      admitj = admjj( find( dist(H(admjj)) + 1 == dist(i) ) );
   else
      admitj = [];
   end
     
   ii = AI{i};
   admii = ii(find( X(ii)>0 ));
   if ~isempty(admii)
      admiti = admii( find( dist(T(admii)) + 1 == dist(i) ) );
   else
      admiti = [];
   end
       
   admit = [admitj, -admiti];  %% admissible arcs
   
   if ~isempty(admit)
    
      k = admit(1);  
      if k > 0                  
        j = H(k);        
      else
        j = T(-k);
      end  
      PREDA(j)=k;
      i = j;               %%%% advance i to j
      
      
      if i == t            %%%%  augment the flow 

         path = [];
         delta = inf;
    
         while i~=s
    	     k = PREDA(i);
             path = [abs(k),path];
             if k > 0
                 delta = min(delta, UB(k)-X(k) );
                 i = T(k);
             else
                 delta = min(delta, X(-k) );
                 i = H(-k);
             end
         end  %% while i~=s

         X(path) = X(path) + delta;
         value = value + delta;

      end     %% if i == t 
      
      
   else    %% if ~isempty(admit)    retreat
    
      admij = [H(admjj);T(admii)];
      
      if ~isempty(admij)
         dist(i) = min( dist(admij) + 1 );
         if i ~= s
	        k = PREDA(i);
            if k > 0
  	           i = T(k);
            else
      	       i = H(-k);
            end
         end
      else
      	  dist(s) = n;   %%% setting dist(s) to infinity; as there are no options to relabel 
      end
         
        
   end     %% if ~isempty(admit)
   
end     %% dist(s) < n
   
% disp('X = ');
% disp(X');
% fprintf(1,'value = %3d\n',value);
