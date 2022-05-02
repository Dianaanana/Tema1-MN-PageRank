function [N, A, val1, val2] = ReadInput(nume)
% functia care citeste inputul si creaza o matice de adiacenta din lista de
% adiacenta

  % deschid fisierul de input
  fid = fopen(nume);
  formatSpec = '%d';

  % citesc nr N de resturse web
  N = fscanf(fid, formatSpec, 1);

  % initializez matricea de adiacenta cu 0
  A = zeros(N);
   
  % citesc pe rand indexul fiecarui nod, nr de vecini, vecinii in sine, apoi
  % creez matricea
   for i  = 1 : N
     indexi = fscanf(fid, '%d', 1);
     nr_el = fscanf(fid, '%d', 1);
     
     for j = 1 : nr_el
       indexj = fscanf(fid, '%d', 1);
       A(indexi, indexj) = 1;
       
     end%for
     
   end%for

   % diagonala principala are numai 0
   for i = 1 : nr_el
       A(i,i) = 0;
   end%for

   % citesc valorile val1 si val2 
   val1 = fscanf(fid, '%f', 1);
   val2 = fscanf(fid, '%f', 1);

fclose(fid);

end%function