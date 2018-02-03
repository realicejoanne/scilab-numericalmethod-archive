function hasil = f(x)
    hasil = (x^2)*(exp((3*x)-5))*(log(4*(x^2)));
    return hasil;
endfunction

x0 = input("Masukan x0 (yang dicari) : ");
h = input("Masukan h : ");
 
turunan = (f(x0+h)-f(x0))/h

printf("Turunan f`(%f) adalah %f",x0, turunan);
