function [L,U,P] = partial_pivoting(A)
  n = length(A(:,1));
  L = zeros(n);
  U = zeros(n);
  P = eye(n);
  for k=1:n
  
    % stores the greatest element of each column, for every column and row > k in the form [element, row number]
    [m,r] = max(abs(A(k:n,k)));
    r = r+k-1;    
    
    % Interchange of rows
    A([k r],:) = A([r k],:);
    P([k r],:) = P([r k],:);
    L([k r],:) = L([r k],:);
    
    % Check if the matrix is Singular
    if A(k,k) == 0
      fprintf('Matrix is singular. Cannot complete factorization') ;
      break
    end
    
    % Construct matrix L by dividing the elements in column k for rows > k with the pivot (L_ik = a_{kk}/a_{kk} , a_{k+1 k}/a_{kk}, ... )  
    format rat
    L(k:n,k) = A(k:n,k) / A(k,k)
    
    % Construct matrix U by overwritting its rows with the transformed ones of the matrix A
    U(k,1:n) = A(k,1:n);
    
    % Transform matrix A
    A(k+1:n,1:n) = A(k+1:n,1:n) - L(k+1:n,k)*A(k,1:n);  
  end
  U(:,n) = A(:,n);
end




