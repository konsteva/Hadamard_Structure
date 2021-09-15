function s = pivot_structure_CP(A)
  n = length(A(:,1)) ;
  s = [] ;
  [~,U] = complete_pivoting(A);
  for i = 1:n
    s(i) =  abs(U(i,i)) ;
  end
end
