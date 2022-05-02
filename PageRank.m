function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out

    output = append(nume, ".out");
    fout = fopen(output, "w");

    [N, A, val1, val2] = ReadInput(nume);

    fprintf(fout, "%d", N);
    fprintf(fout, "\n");

    R1 = Iterative(nume, 0.85, 0.001);
    
    %printeaza vectorul PageRank pentru metoda iterativa
    fprintf(fout,"%.6f\n", R1);
    fprintf(fout, "\n");

    R2 = Algebraic(nume, 0.85)
    
    %printeaza vectorul PageRank pentru metoda algebrica
    fprintf(fout,"%.6f\n", R2);
    fprintf(fout, "\n");

    %sorteaza vectorul rezultat din metoda algebrica (si indicii
    %elementelor)
    [S v] = Sort_function(R2);

    %printeaza indexul, indicele elementului cu cel mai mare PageRank si
    %functia U
    for i = 1 : N
        fprintf(fout, "%d ", i);
        
        fprintf(fout, "%d ", v(i));
        
        fprintf(fout, "%.6f",  Ufunction(S(i), val1, val2));
        fprintf(fout, "\n");

    end%for
    



end%function

