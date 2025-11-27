% Computes Smith normal form of B over Z_2.
% Usage: S = snf(B)

function B = snf(B)
  [m n] = size(B);

  i=1;
  [R,C] = find(B(i:end,i:end),1,'first');

  while nnz(R) > 0 % proceed while there is a nonzero entry

     % Account for offset
     j = R + i - 1;
     k = C + i - 1;

     % Swap rows & cols
     B([i j],:) = B([j i],:); % no change if j=i
     B(:,[i k]) = B(:,[k i]); % no change if k=i

     % Add rows
     for h = (i+1):m
         if B(h,i) == 1
	    B(h,:) = mod( B(h,:) + B(i,:), 2);
	 end
     end

     % Add cols
     for l = (i+1):n
         if B(i,l) == 1
            B(:,l) = mod( B(:,l) + B(:,i), 2);
	 end
     end

     i = i+1; % go to next smaller submatrix (to right and below)
     [R,C] = find(B(i:end,i:end),1,'first');

  end
