%% Breadth-First Search from mostly first principles

function [pred,order] = bfs_detailed(Fstar,s)

     %%   Fstar is supposed to have T and H in its columns 1 and 2.
     %%   First run netdata to find the A{i} lists

     T = Fstar(:,1);
     H = Fstar(:,2);     
     m=length(T);
     n=max(max(T), max(H));
     netdata;

     %% Initialization
     mark=zeros(1,n);
     M = 10000; % big M, in place of infinity
     pred = M*ones(1,n);
     order = zeros(1,n);

     LIST=[s];
     mark(s)=1;
     next = 1;  % counter keeping track of the next node visited
     order(s) = next;
     pred(s) = 0;
    

     while ~isempty(LIST)      % if LIST is not empty
          i = LIST(1);         % pick first node from (front of) LIST 

	  % run through arcs in A{i}, check for admissibility
	  m_i = length(A{i});  % # arcs in A{i}
	  for k=1:m_i          % check each of the m_i arcs in A{i}
	    j = H(A{i}(k));    % head of current arc
	    if mark(j) == 0    % j is unmarked, so (i,j) is admissible
	      mark(j) = 1;     % mark j
	      pred(j) = i;     % set predecessor of j as i
	      next = next+1;   % increment counter by 1
	      order(j) = next; % set order of j
	      LIST = [LIST j]; % add node j to the back of LIST
	    end 
          end

	  LIST = LIST(2:end);  % delete node i from (top of) LIST

     end %while
     
