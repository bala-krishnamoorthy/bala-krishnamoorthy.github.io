%%%%%%%%%%%%%%%%%%%%%%%%
% Breadth-First Search %
%%%%%%%%%%%%%%%%%%%%%%%%

function [pred,order,dist] = bfs(Fstar,s)

%%   Fstar is supposed to have T and H in its columns 1 and 2.
   
%%   'dist' gives shortest distance in terms of # arcs.
%%   dist is initialized to infinity for all nodes. 
%%   Then dist(s) is set to zero. As we increase the
%%   breadth of the search by one level, the distance
%%   of the nodes marked in the current level is set to 
%%   dist(i) + 1, where i is the node from which the new
%%   nodes in the current level are accessed from.
   
%%   Rather than adding nodes to and deleting nodes from LIST,
%%   we use two variables first and last to keep track of it.
%%   This way, the order vector is easily set at the end of
%%   the main loop.

%%   We first run netdata to find the A{i} lists

     T = Fstar(:,1);
     H = Fstar(:,2);     
     m = length(T);
     n = max(max(T), max(H));

     netdata;

     LIST=[s];
     first=1;
     last=length(LIST);
    
     mark=zeros(1,n);
     mark(s)=1;
    
     bigM = 10000; %% acts like infinity
     dist=bigM*ones(1,n); 
     pred=bigM*ones(1,n); 
     dist(s)=0;
     pred(s)=0;

     while first <= last
           i=LIST(first);
           if ~isempty(A{i})
               jj = H(A{i});          %A{i} stores arc_names
               admit = jj( find( mark(jj)==0 ) );
               mark(admit) = 1;
               pred(admit) = i;     
               dist(admit) = dist(i) + 1;
               LIST = [LIST admit'];
               last = last+length(admit);
           end%if
           first=first+1;
     end%while
     
     order(LIST)=(1:length(LIST));
   
   
