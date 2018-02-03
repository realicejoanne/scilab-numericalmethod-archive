function bedamaju()
    x = input('Masukkan x: ');
    h = input('Masukkan jarak: ');
    z = zeros(1,3);
    z(1) = x-h;
    z(2) = x;
    z(3) = x+h;
    for i=1:3
        printf('x = %.5f    f(x) = %.5f \n', z(i), f(z(i)));
    end
    hasil = (f(x+h)-f(x))/h;
        printf('Hasil turunan %.5f adalah %.5f', x, hasil);
endfunction
