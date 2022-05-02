function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.
    
    %apelez functia de ReadInput
    [N, A, val1, val2] = ReadInput(nume);
    
    %creez o coloana cu valori de 1
    ColOne = ones(N, 1);

    %calculez nr de linkuri pe care le are fiecare pagina
    for i = 1 : N
        L(i) = 0;
        for j = 1 : N
        L(i) = L(i) + A(i, j);
        end%for
    end%for

    %calculez inversa matricei diagonala K
    invK = zeros(N);
    for i = 1 : N
        invK(i , i) = 1 / L(i);
    end%for
  
    %calculez matricea M
    M = (invK * A)';
    
    %matricea identitate
    I = eye(N);
    
    %calculez inversa matricei (I - d * M)
    [Q SupT] = Gram_Schmidt(I - d * M);
    R = SST(SupT, Q' * ((1 - d) / N) * ColOne);


end%function
