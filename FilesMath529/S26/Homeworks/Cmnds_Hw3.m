%% Math529: Matlab commands for performing the computations in Homework 3

F = load('Triangles.txt');
nF = length(F); % number of faces or triangles
sF = sort(F')'; % faces/triangles, each with vertices sorted lexicographically

V = load('Vertices.txt');
n = length(V);

Vmiss = setdiff(1:n,unique(F)); % missing vertices (out of 1..n)
nV = n - length(Vmiss);         % number of vertices

% Run through list of triangles to collect edges,
% and the list of triangles for each edge.
% Also create the list of edge strings as well as
% the reverse map of indices for edge strings,
% while counting the number of edges.
	  
E = [];
FList = struct();  % list of faces/triangles each edge is part of
EInd = struct();   % index of each edge string (in 1..nE)	  
EStrs = [];        % collection of edge strings
nE = 0;	           % counter for counting the number of edges

nFcsE = [];        % # faces for each edge; =lengths of FList for each edge

EList = zeros(nF,3); % indices of the 3 edges for each face/triangle
	  
for j=1:nF
    f = sF(j,:);

    e = [f(1) f(2)];
    
    eStr = sprintf('e%d_%d',10000+e);
    %% We want to collect all edge strings for use later, and it's simpler 
    %% to do so if all strings have the same length (then they could be 
    %% saved in a matrix). To this end, we get a workaround by adding 
    %% 10000 to the vertex numbers (recall that the largest vertex number 
    %% is 1932) so that all the edge strings have the same length :-)!
    %% Also, Matlab does not allow valid strings, i.e., those to be used 
    %% as field keys in a struct, to begin with a number or have white 
    %% spaces. Hence we start these strings with an 'e'.

    if isfield(FList,eStr)                          % edge already visited
       FList.(eStr) = [FList.(eStr) j];
       nFcsE(EInd.(eStr)) = nFcsE(EInd.(eStr))+1;
    else
       FList.(eStr) = [j];
       E = [E;e];
       nE = nE + 1;
       EStrs = [EStrs; eStr];
       EInd.(eStr) = nE;
       nFcsE = [nFcsE; 1];
    end
    EList(j,1) = EInd.(eStr);	  

    e = [f(1) f(3)];
    
    eStr = sprintf('e%d_%d',10000+e);
    if isfield(FList,eStr)
       FList.(eStr) = [FList.(eStr) j];
       nFcsE(EInd.(eStr)) = nFcsE(EInd.(eStr))+1;
    else
       FList.(eStr) = [j];
       E = [E;e];
       nE = nE + 1;
       EStrs = [EStrs; eStr];
       EInd.(eStr) = nE;
       nFcsE = [nFcsE; 1];
    end
    EList(j,2) = EInd.(eStr);
	  
    e = [f(2) f(3)];
    %eStr = matlab.lang.makeValidName(sprintf('%d_%d\0',10000+e));
    eStr = sprintf('e%d_%d',10000+e);
    if isfield(FList,eStr)
       FList.(eStr) = [FList.(eStr) j];
       nFcsE(EInd.(eStr)) = nFcsE(EInd.(eStr))+1;
    else
       FList.(eStr) = [j];
       E = [E;e];
       nE = nE + 1;
       EStrs = [EStrs; eStr];
       EInd.(eStr) = nE;
       nFcsE = [nFcsE; 1];
    end
    EList(j,3) = EInd.(eStr);
	  
end

X = nV - nE + nF;
fprintf(1,'\nOriginally X = %3d\n\n',X);

BdyEdgs = E(find(nFcsE==1),:)

fprintf(1,'\nIt is evident which three triangles are missing! Let us add them.\n');

% Add three triangles to close the three holes
sF = [sF; [91 95 264; 342 349 1257; 499 500 502]];
EList = [EList; zeros(3)]; % adding 3 rows for the 3 triangles added
	  
	  
% update the edge structures to include the three new faces
for j=nF+1:nF+3
    f = sF(j,:);

    e = [f(1) f(2)];
    %eStr = matlab.lang.makeValidName(sprintf('%d_%d\0',10000+e));
    eStr = sprintf('e%d_%d',10000+e);
    FList.(eStr) = [FList.(eStr) j];
    nFcsE(EInd.(eStr)) = nFcsE(EInd.(eStr))+1;
    EList(j,1) = EInd.(eStr);

    e = [f(1) f(3)];
    %eStr = matlab.lang.makeValidName(sprintf('%d_%d\0',10000+e));
    eStr = sprintf('e%d_%d',10000+e);
    FList.(eStr) = [FList.(eStr) j];
    nFcsE(EInd.(eStr)) = nFcsE(EInd.(eStr))+1;
    EList(j,2) = EInd.(eStr);

    e = [f(2) f(3)];
    %eStr = matlab.lang.makeValidName(sprintf('%d_%d\0',10000+e));
    eStr = sprintf('e%d_%d',10000+e);
    FList.(eStr) = [FList.(eStr) j];
    nFcsE(EInd.(eStr)) = nFcsE(EInd.(eStr))+1;
    EList(j,3) = EInd.(eStr);
end

nF = nF + 3;
X = nV - nE + nF;

fprintf(1,'\nAfter adding 3 triangles, X = %3d\n',X);


% Propagating orientation
% =======================

% With the 3 faces added, every edge is shared by two traingles. Hence
% we could try to propagate an orientation over the entire complex.

tic;	  
IsOrntd = zeros(nF,1);  % 1/-1 once the face is oriented
IdcdOrE = zeros(nE,1);  % product of induced orientations on each edge, 1 or -1

% Maintain a FIFO queue of triangles to be oriented
FcsTBOrtd = [1];  % start with the first triangle
IsOrntd(1) = 1;   % fix orientation of first face (as the default lex orientation)
nFOrd = 0;  	  % counting the # faces oriented (first face to be removed inside the while loop)

while nFOrd < nF

    j = FcsTBOrtd(1);   % take first face from the list as current face

    % Look for unoriented neighbor face(s), propagate orientation
    edgs = EList(j,:);
    NghFs = [];	  

    for i=1:3
    	NghFs = [NghFs FList.(EStrs(edgs(i),:))]; % j should appear thrice in this list
    end
    NghFs = setdiff(unique(NghFs),j); % has the 3 faces sharing edges with current face j

    % select the unoriented neighbor faces, add to end of list
    UnortdNgFs = NghFs(find(IsOrntd(NghFs)==0));
    FcsTBOrtd = [FcsTBOrtd UnortdNgFs];

    % propagate orientation of current face to unoriented neighbor faces

    for jnxt=UnortdNgFs	       	       	              % next face to be oriented
       i_CmEd = intersect(EList(j,:),EList(jnxt,:));  % index of common edge between faces j and jnxt
       CmEd   = E(i_CmEd,:);	  		      % common edge between faces j and jnxt

       % Induced orientations on CmEd by faces j and jnxt:
       [cm,Ij,Jj] = intersect(sF(j,:),CmEd);
       [cm,Ijnxt,Jjnxt] = intersect(sF(jnxt,:),CmEd);

       % Ij/Ijnxt can take one of three values: [1 2], [1 3], [2 3].
       % Choices 1 and 3 correspond to same induced orientation
    
       IdcdOrj	     = (-1)^(sum(Ij)+1)*IsOrntd(j);
       IdcdOrjnxt    = (-1)^(sum(Ijnxt)+1);
       IsOrntd(jnxt) = -IdcdOrj*IdcdOrjnxt;
       	               % default (lex) orientation of jnxt is to be
       	      	       % reversed if the induced orientations on CmEd
       	      	       % are the same.

       IdcdOrE(i_CmEd) = IdcdOrj*IdcdOrjnxt*IsOrntd(jnxt);
    end

    % remove first face from the list, increment # oriented faces by 1
    FcsTBOrtd = unique(FcsTBOrtd(2:end));
    nFOrd = nFOrd+1;

end


% Fill in the products of induced orientations for edges not yet traversed across
Eds2go = find(IdcdOrE==0);     
for j=1:length(Eds2go)	       % Octave takes all the edges at once if I say "for i=find(IdcdOrE==0)" :-(!
    i=Eds2go(j);
    CmEd = E(i,:);	       % current edge	
    fcs = FList.(EStrs(i,:));  % the two faces/triangles shared by edge i

    % Induced orientations on CmEd by faces fcs(1) and fcs(2)
    [cm,Ij1,Jj1] = intersect(sF(fcs(1),:),CmEd);
    [cm,Ij2,Jj2] = intersect(sF(fcs(2),:),CmEd);
    IdcdOrj1     = (-1)^(sum(Ij1)+1)*IsOrntd(fcs(1));
    IdcdOrj2     = (-1)^(sum(Ij2)+1)*IsOrntd(fcs(2));

    IdcdOrE(i)   = IdcdOrj1*IdcdOrj2; 
end

% If all induced orinetation products are -1, the surface is orientable
if nE - length(find(IdcdOrE==-1)) == 0
  fprintf(1,'\n\n The surface is orientable! \n');
end
toc;	  
  
