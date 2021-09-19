function [H p q r c] = Equivalent_Hadamard(H)
  n = size(H,1) ;
  h = 1:n ;
  p = [] ;
  
  % Random interchange of rows
  for i = 1:n-1
    r = floor(1+(rand*(n+1-i))) ;
    p(i) = h(r) ;
    h(r) = [] ;
  end
  p(n) = h(1) ;
  H = H(p,:) ;
  h = 1:n ;
  q = [] ;
  
  % Random interchange of columns
  for i = 1:n-1
    r = floor(1+(rand*(n+1-i))) ;
    q(i) = h(r) ;
    h(r) = [] ;
  end
  q(n) = h(1) ;
  H = H(:,q) ;
  r = ones(1,n) ;
  
  % Multiplying random rows with -1
  for i = 1:n
    if rand(1) >= 0.5 ;
      H(i,:) = -1*H(i,:) ;
      r(i) = -1 ;
    end
  end
  c = ones(1,n) ;
  
  % Multiplying random columns with -1
  for i = 1:n
    if rand(1) >= 0.5
      H(:,i) = -1*H(:,i) ;
      c(i) = -1 ;
    end
  end
end
