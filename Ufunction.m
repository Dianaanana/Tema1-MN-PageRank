function y = Ufunction(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1

    %calculez parametrii a si b astfel incat functia sa fie continua
    a = 1 / (val2 - val1);
    b = val1 / (val1 - val2);

    %functie pe ramuri
    if x <= val1 && x > 0
        y = 0;
    end%if
    if x >= val2
        y = 1;
    end%if
    if val1 < x && val2 > x
        y = a * x + b;
    end%if
    
    
end%function