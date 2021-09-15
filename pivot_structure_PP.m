function s = pivot_structure_PP(A)
  n = length(A(:,1));
  s = [];
  [~,U] = partial_pivoting(A);
  for i = 1:n
    s(i) =  abs(U(i,i));
  end
end
