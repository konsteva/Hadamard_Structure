function [L,U,P,Q] = complete_pivoting(A)
  n = length(A(:,1)) ;
  L = zeros(n) ;
  U = zeros(n) ;
  P = eye(n) ;
  Q = eye(n) ;
  for k = 1:n
    % ���������� �� ���������� �������� ���� ������ ��� �� ������ ��� �� ����� k ��� 
    % ���� �� �� ����� [��������, ������� �������]
    [m_c,r] = max(abs(A(k:n,k:n)));
    % ���������� �� max ��� ������������ ���������
    % �� �� ����� [��������, ������� ������]
    [m,c] = max(m_c);
    r = r(c)+k-1; 
    c = c+k-1;
    %��������� �������
    A([k r],:) = A([r k],:);
    P([k r],:) = P([r k],:);
    L([k r],:) = L([r k],:);
    %��������� ������
    A(:,[k c]) = A(:,[c k]);
    L(:,[k c]) = L(:,[c k]);
    Q(:,[k c]) = Q(:,[c k]);
    %������� �� � ������� ����� �������
    if A(k,k) == 0
      fprintf('Matrix is singular. Cannot complete factorization') ;
      break
    end
    % �������������� ��� L ���������� �� �������� ��� ������ k ��� ���
    % ������ k ��� ���� �� �� pivot
    format rat
    L(k:n,k) = A(k:n,k) / A(k,k);
    % �������������� ��� U �������� overwrite ��� ������� ��� �� ��� 
    % ����������������� ��� ������ �
    U(k,1:n) = A(k,1:n);
    %��������������� ��� �
    A(k+1:n,1:n) = A(k+1:n,1:n) - L(k+1:n,k)*A(k,1:n);
  end
end