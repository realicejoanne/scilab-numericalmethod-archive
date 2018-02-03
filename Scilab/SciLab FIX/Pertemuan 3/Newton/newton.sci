function [x,y]=newton()
    clear;
    clc;
    x0=input('Masukkan tebakan awal x0= ');
    n=input('Masukkan jumlah iterasi = ');
    x=zeros(n,1);
    y=zeros(n,1);
    exec('E:\Kuliah\Semester 3\Metode Numberik\Praktikum\Laprak\Code tugas 3\Newton\newton.sci', -1)
    exec('E:\Kuliah\Semester 3\Metode Numberik\Praktikum\Laprak\Code tugas 3\Newton\turunanf.sci', -1)
    x(1)=x0-(f(x0)/turunanf(x0));
    y(1)=f(x(1));
    printf('\nIterasi 1 -> \t x1 = %.10f \t f(x1) = %.15f ',x(1),y(1));
    printf('\n');
    for i=2:n
        x(i)=x(i-1)-(f(x(i-1))/turunanf(x(i-1)));
        y(i)=f(x(i));
        printf('Iterasi %d -> \t x%d = %.10f \t f(x%d) = %.15f', i, i, x(i), i, y(i));
        printf('\n');
    end
endfunction
