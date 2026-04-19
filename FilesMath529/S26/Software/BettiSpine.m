% Find Betti numbers of the spine triangulation (without holes)
  D = dlmread ('spine.face');

 % faces (i.e., triangles)
 F = D(2:end,2:4);        % remove the first row and first column; gives list of faces
 F = sortrows(sort(F,2)); % sort each face, and sort faces;
			  % not necessary, but does not hurt to do)
 f = size(F,1)            % number of faces 

 % vertices
 V = unique(F);           % list of vertices
 v = length(V)            % number of vertices

 % edges
 E = [F(:,[1 2]); F(:,[1 3]); F(:,[2 3])]; % all edges, with repeats, sorted
 [UE,SelEdgs,EdgInds] = unique(E,'rows');
 e = size(UE,1)
 
 X = v - e + f            % Euler characteristic

 % B2 (2-boundary matrix)
 B2 = sparse(zeros(e,f));
 B2(sub2ind([e,f],EdgInds',repmat(1:f,1,3))) = 1;

 % B1 1-boundary matrix
 VInd = sparse(zeros(max(V),1));  % holds index of vertices
 VInd(V) = (1:v)';
 nzB1 = sortrows(reshape([VInd(UE) (1:e)' (1:e)'],2*e,2),2);
 B1 = sparse(nzB1(:,1),nzB1(:,2),1);

 % 
 tic; S1=snf(B1);toc;
 tic; S2=snf(B2);toc;	    	    

 z0=v; b0=nnz(S1);z1=e-b0; b1=nnz(S2);z2=f-b1; b2=0;	    

 beta0 = z0-b0;
 beta1 = z1-b1;
 beta2 = z2-b2;

 fprintf(1,'beta0 = %d; beta1 = %d; beta2 = %d.\n',beta0,beta1,beta2);

  
