function it=itex(n,x)
    it=1
    for i=1:(n-1)
        it = it+(x^i)/faktorial(i);
    end
endfunction
