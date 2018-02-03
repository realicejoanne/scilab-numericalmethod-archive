function it=iterasi(n, x)
    it=x
    for i=1:n-1
        it=it+((-1)^(i))*(x^(2*i+1)/fakt(2*i+1));
     end
endfunction
