function it = iterasi (n,x)
    it = exp(2)
    for i = 1: (n-1)
        if (i ==2) then 
        it = it + ((exp(2) + 2)*x^i)/faktorial(i);
    else 
         it = it + ((exp(2)*x^i)/faktorial(i));
    end
end

endfunction
