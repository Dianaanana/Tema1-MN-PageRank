function R = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
	% Intrari:
	%	-> nume: numele fisierului din care se citeste;
	%	-> d: coeficentul d, adica probabilitatea ca un anumit navigator sa continue navigarea (0.85 in cele mai multe cazuri)
	%	-> eps: eroarea care apare in algoritm.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.

% apelez functia de ReadInput
[N, A, val1,val2] = ReadInput(nume);
A
% calculez nr de linkuri pe care le are fiecare pagina
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
  
  %creez o matrice coloana cu elemente 1
  ColOne = ones (N , 1);

  %initializez R
  R0(1 : N, 1) = 1 / N;
  R = d * M * R0 + ((1 - d) / N ) * ColOne;

  %algoritmul pagerank iterativ
  max_iterr = 5000;
  for step = 1 : max_iterr
      R0 = R;
      R = d * M * R0 + ((1 - d) / N) * ColOne;
      if norm(R - R0) <= eps
          break
      end%if
  end%for
  
  %
  R = R0;
  
end%function