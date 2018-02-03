function it=iteras(n, x)
    it=1
    for i=1:n-1
        it=it+((-1)^(i))*(x^(2*i)/fakt(2*i));
     end
endfunction
