function [L,U,P,Q] = complete_pivoting(A)
  n = length(A(:,1)) ;
  L = zeros(n) ;
  U = zeros(n) ;
  P = eye(n) ;
  Q = eye(n) ;
  for k = 1:n
  
    % stores the greatest element of each column, for every column and row > k in the form [element, row number]
    [m_c,r] = max(abs(A(k:n,k:n)));
    
    % stores max element of the above in the form [element, column number]
    [m,c] = max(m_c);
    r = r(c)+k-1; 
    c = c+k-1;
    
    % Interchange of rows
    A([k r],:) = A([r k],:);
    P([k r],:) = P([r k],:);
    L([k r],:) = L([r k],:);
    
    % Interchange of columns
    A(:,[k c]) = A(:,[c k]);
    L(:,[k c]) = L(:,[c k]);
    Q(:,[k c]) = Q(:,[c k]);
    
    % Check if matrix is singular
    if A(k,k) == 0
      fprintf('Matrix is singular. Cannot complete factorization') ;
      break
    end
    
    % Construct matrix L by dividing the elements in column k for rows > k with the pivot
    format rat
    L(k:n,k) = A(k:n,k) / A(k,k);
    
    % Construct matrix U by overwritting its rows with the transformed ones of the matrix A
    U(k,1:n) = A(k,1:n);
    
    % Matrix A transformation
    A(k+1:n,1:n) = A(k+1:n,1:n) - L(k+1:n,k)*A(k,1:n);
  end
end
