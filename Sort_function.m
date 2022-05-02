function [S x] = Sort_function(PR)

    %functie ce sorteaza un vector primit ca parametru
    n = size(PR);

    %functia returneaza si un vector ce contine indicii elementelor
    %ordonati in functie de valorile acestora
    for i = 1 : n
        v(i) = i;
    end%for

    for i = 1 : n
        for j = 1 : n - 1
            if PR(j) <= PR(j + 1)
                aux = PR(j);
                vaux = v(j);
                PR(j) = PR(j + 1);
                v(j) = v(j + 1);
                PR(j + 1) = aux;
                v(j + 1) = vaux;
            end%if
        end%for
    end%for
    S = PR
    x = v;
end%function