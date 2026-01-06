%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FIFOPreflow_find_active %
%%%%%%%%%%%%%%%%%%%%%%%%%%%

act_found=0;
while level>0 && act_found==0         
   if ~isempty(ACTIVE{level})
      i=ACTIVE{level}(1);
      act_found=1;
   else
      level=level-1;
   end%if
end%while   

%since a push creates an ACTIVE node in level-1, if there is
%no relabel, this while loop will stop in 1 iteration.
