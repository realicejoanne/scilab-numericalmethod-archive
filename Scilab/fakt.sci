function hasil=fakt(x)
    if(x<2)
        hasil=1;
    else
        hasil=x*fakt(x-1);
    end
endfunction
