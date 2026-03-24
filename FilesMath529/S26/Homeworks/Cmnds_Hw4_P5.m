% Math 529 
% Commands for Problem 5 in Homework 4

% 8 corners of unit cube
P0 = [0 0 0; 1 0 0; 1 1 0; 0 1 0; 0 0 1; 1 0 1; 1 1 1; 0 1 1];

% extra points inside
n1 = 10;
% P1 = rand(n1,3);

P2 = [0.1*rand(n1/2,3); 0.9+0.1*rand(n1/2,3)];
P = [P0;P2];

nV = length(P);

% could copy Beta.node to Beta_1o2.node and Beta_1ort2.node
f = fopen('Figs/Beta.node','w'); 
fprintf(f,'%4d 3 0 0\n',nV);
fprintf(f,'%3d   %5.3f  %5.3f  %5.3f\n',[(1:nV)' P]');
fclose(f);


% tetrahedra of the Delaunay tetrahedralization
T = delaunay(P);

% sort each tetrahedron - makes further computations easier
T = sort(T')';		  
nT = length(T);


% A brute force way to get the lists of edges and triangles from the
% list of tetrahedra. Ideally, one should use a map functionality,
% similar to the illustration in Homework 3 (using struct, for
% instance).

eInds = [1 2;1 3;2 3;1 4;2 4;3 4]; % first 3 indices used also for triangles
fInds = [1 2 3;1 2 4;1 3 4;2 3 4];

	 
% get list of faces (triangles)
E = [];	 
F = [];
for i=1:nT
   for j=1:6
       E = [E; T(i,eInds(j,:))];
   end
   for j=1:4                                        
       F = [F; T(i,fInds(j,:))];
   end
end

E = unique(E,'rows');
F = unique(F,'rows');
nE = length(E);
nF = length(F);

% use pdist to compute pairwise distances
D = squareform(pdist(P));
EdgDists = D(sub2ind(size(D),E(:,1),E(:,2)));

% For ease of computation, it might help to build the edge 
% list of faces, as well as the edge list of tetrahedra.


EdgLstOfFac = [];
for i=1:nF
   Edges = [];
   for j=1:3
     Edges = [Edges find(ismember(E,[F(i,eInds(j,:))],'rows'))];
   end
   EdgLstOfFac = [EdgLstOfFac; Edges];
end

EdgLstOfTet = [];
for i=1:nT
   Edges = [];
   for j=1:6
      Edges = [Edges find(ismember(E,T(i,eInds(j,:)),'rows'))];
   end
   EdgLstOfTet = [EdgLstOfTet; Edges];
end

DiamFac = max(EdgDists(EdgLstOfFac)')';
DiamTet = max(EdgDists(EdgLstOfTet)')';

% For each r, pick the edges, faces, and tets in the Beta complex
eps = 0.01;	% to avoid numerical errors

r = 1/2;
r = r + eps;
r1o2_E = E(find(EdgDists <= 2*r),:);
r1o2_F = F(find(DiamFac  <= 2*r),:);
r1o2_T = T(find(DiamTet  <= 2*r),:);

f = fopen('Figs/Beta_r1o2.edge','w');
fprintf(f,'%d\n',length(r1o2_E));
fprintf(f,'%3d   %4d  %4d\n',[(1:length(r1o2_E))' r1o2_E]');
fclose(f);

f = fopen('Figs/Beta_r1o2.face','w');
fprintf(f,'%4d 1\n',length(r1o2_F));
fprintf(f,'%3d   %4d  %4d  %4d  %d\n',[(1:length(r1o2_F))' r1o2_F ones(length(r1o2_F),1)]');
fclose(f);

f = fopen('Figs/Beta_r1o2.ele','w');
fprintf(f,'%4d \n',length(r1o2_E));
fprintf(f,'%3d   %4d  %4d  %4d  %d\n',[(1:length(r1o2_E))' r1o2_E]');
fclose(f);


% [ size(r1o2_E,1) size(r1o2_F,1) size(r1o2_T,1) ]

r = 1/sqrt(2);
r = r + eps;
r1ort2_E = E(find(EdgDists <= 2*r),:);
r1ort2_F = F(find(DiamFac  <= 2*r),:);
r1ort2_T = T(find(DiamTet  <= 2*r),:);

f = fopen('Figs/Beta_r1ort2.edge','w');
fprintf(f,'%d\n',length(r1o2_E));
fprintf(f,'%3d   %4d  %4d\n',[(1:length(r1ort2_E))' r1ort2_E]');
fclose(f);

[C,IA] = setdiff(r1ort2_F,r1o2_F,'rows');

In2 = ones(length(r1ort2_F),1);
In2(IA) = 2;
	
	    
f = fopen('Figs/Beta_r1ort2.face','w');
fprintf(f,'%4d 1\n',length(r1ort2_F));
fprintf(f,'%3d   %4d  %4d  %4d  %d\n',[(1:length(r1ort2_F))' r1ort2_F In2]');
fclose(f);

f = fopen('Figs/Beta_r1ort2.ele','w');
fprintf(f,'%4d \n',length(r1ort2_T));
fprintf(f,'%3d   %4d  %4d  %4d  %d\n',[(1:length(r1ort2_T))' r1ort2_T]');
fclose(f);


r = sqrt(3)/2;
r = r + eps;
rrt3o2_E = E(find(EdgDists <= 2*r),:);
rrt3o2_F = F(find(DiamFac  <= 2*r),:);
rrt3o2_T = T(find(DiamTet  <= 2*r),:);

[C2,IA2] = setdiff(rrt3o2_F,r1ort2_F,'rows');

In3 = ones(length(rrt3o2_F),1);
In3(IA) = 2;
In3(IA2)= 3;
	
	    
f = fopen('Figs/Beta_rrt3o2.face','w');
fprintf(f,'%4d 1\n',length(rrt3o2_F));
fprintf(f,'%3d   %4d  %4d  %4d  %d\n',[(1:length(rrt3o2_F))' rrt3o2_F In3]');
fclose(f);

f = fopen('Figs/Beta_rrt3o2.ele','w');
fprintf(f,'%4d \n',length(rrt3o2_T));
fprintf(f,'%3d   %4d  %4d  %4d  %d\n',[(1:length(rrt3o2_T))' rrt3o2_T]');
fclose(f);
