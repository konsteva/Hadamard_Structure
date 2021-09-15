function [L,U,P] = partial_pivoting(A)
  n = length(A(:,1));
  L = zeros(n);
  U = zeros(n);
  P = eye(n);
  for k=1:n
    % αποθηκευει το μεγαλυτερο στοιχειο της στηλης k απο τη γραμμη k και κατω
    % με τη μορφη [στοιχειο, αριθμος γραμμης]
    [m,r] = max(abs(A(k:n,k)));
    r = r+k-1;    
    %Εναλλαγες γραμμων
    A([k r],:) = A([r k],:);
    P([k r],:) = P([r k],:);
    L([k r],:) = L([r k],:);
    %Ελεγχος αν ο πινακας ειναι ιδιαζων
    if A(k,k) == 0
      fprintf('Matrix is singular. Cannot complete factorization') ;
      break
    end
    % Κατασκευαζουμε τον L διαιρωντας τα στοιχεια της στηλης k απο την
    % γραμμη k και κατω με το pivot (L_ik = a_{kk}/a_{kk} , a_{k+1 k}/a_{kk}, ... )  
    format rat
    L(k:n,k) = A(k:n,k) / A(k,k) 
    % Κατασκευαζουμε τον U κανοντας overwrite τις γραμμες του με τις 
    % μετασχηματισμενες του πινακα Α
    U(k,1:n) = A(k,1:n);
    %Μετασχηματισμος του Α
    A(k+1:n,1:n) = A(k+1:n,1:n) - L(k+1:n,k)*A(k,1:n);  
  end
  U(:,n) = A(:,n);
end




