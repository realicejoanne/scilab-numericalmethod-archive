//function simpson1per3()
    clear;
    clc;
    
    printf('Metode Simpson 1/3\n');
    a = input('a = '); 
    b = input('b = ');
    n = input('jumlah partisi = ');
    h = (b-a)/n;
    hasil = 0;
    
    x = zeros(n+1, 1);
    f = zeros(n+1, 1);
  
    x(1) = a;
    f(1) = input('Masukkan f(x1) : ');
    
    for i=2:n+1
        x(i) = x(i-1)+h;
        printf('Masukkan f(x%d) : ', i);
        f(i) = input("");
    end
    
    hasil = f(1)+f(n+1);
    i = 3;
    while(i<=n)
        hasil = hasil+(2*f(i));
        i = i+2;
    end
    
    i=2;
    while(i<=n)
        hasil = hasil+(4*f(i));
        i = i+2;
    end
    
    hasil = hasil*h/3;
    
    printf('\n---------------------------\n');
    printf('x \t f(x)');
    printf('\n---------------------------\n');
    for i=1:n+1
        printf('%.3f \t %.5f\n', x(i),f(i));
    end
    printf('---------------------------\n');
    
    printf('\nHasil Integrasi = %.5f', hasil);
    //printf("a = %d, b = %d, jumlah partisi = %d, h = %.2f", a, b, n, h);    
//endfunction


