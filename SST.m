function x = SST(A,b)
    %algortim de calcul al unui sistem superior triunghiular
    
   [N N] = size(A);
   
   x = zeros(N,1);
   
   for i = N : -1 : 1
     s = 0;
     for j = N : -1 : i + 1
       s = s + A(i,j) * x(j);
     end%for
     
     x(i) = (b(i)- s) / A(i,i); 
   end%for
   
end%function