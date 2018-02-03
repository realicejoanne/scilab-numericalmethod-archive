function bedapusat()
    x = input('Masukkan x: ');
    x0 = input('Masukkan x0: ');
    x1 = input('Masukkan x1: ');
    f0 = input('Masukkan f0: ');
    f1 = input('Masukkan f1: ');
    
    h = x1-x;
    t = (f1-f0)/(2*h);
        printf('Hasil turunan f(%.5f) adalah %.5f', x, t);
endfunction
