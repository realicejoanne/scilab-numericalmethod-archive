function Lagrange()
    printf('Kelompok Metode Lagrange\n')
    printf('- - - - - - - - - - - - - - - - - - -\n')
    printf('Teguh Riandi Pratama\t140810160025\n')
    printf('M. Naufal Monoarfa\t140810160033\n')
    printf('Adryan Luthfi Faiz\t140810160049\n')
    printf('M. Rifqy Aulia Akbar\t140810160055\n')
    printf('Patricia Joanne\t\t140810160055\n')
    printf('- - - - - - - - - - - - - - - - - - -\n\n')
    printf('f(x) = y\n');
    o=input('Masukan ordo dari persamaan = ');
    x=input('Masukan nilai x = ');
    x0=input('Masukan nilai x0 = ');
    f0=input('Masukan nilai f(x0) = ');
    x1=input('Masukan nilai x1 = ');
    f1=input('Masukan nilai f(x1) = ');
    select o
    case 1 then
        f = (((x-x1)/(x0-x1))*f0 + ((x-x0)/(x1-x0))*f1);
        printf('Nilai dari %.2f menggunakan metode Lagrange adalah\n',x);
        printf('f(%.2f) = %.4f',x,f);
    case 2 then
        x2=input('Masukan nilai x2 = ');
        f2=input('Masukan nilai f(x2) = ');
        f = (((x-x1)/(x0-x1))*((x-x2)/(x0-x2))*f0 + ((x-x0)/(x1-x0))*((x-x2)/(x1-x2))*f1 + ((x-x0)/(x2-x0))*((x-x1)/(x2-x1))*f2);
        printf('Nilai dari %.2f menggunakan metode Lagrange adalah\n',x);
        printf('f(%.2f) = %.4f',x,f);
    case 3 then
        x2=input('Masukan nilai x2 = ');
        f2=input('Masukan nilai f(x2) = ');
        x3=input('Masukan nilai x3 = ');
        f3=input('Masukan nilai f(x3) = ');
        f = (((x-x1)/(x0-x1))*((x-x2)/(x0-x2))*((x-x3)/(x0-x3))*f0 + ((x-x0)/(x1-x0))*((x-x2)/(x1-x2))*((x-x3)/(x1-x3))*f1 + ((x-x0)/(x2-x0))*((x-x1)/(x2-x1))*((x-x3)/(x2-x3))*f2 + ((x-x0)/(x3-x0))*((x-x1)/(x3-x1))*((x-x2)/(x3-x2))*f3);
        printf('Nilai dari %.2f menggunakan metode Lagrange adalah\n',x);
        printf('f(%.2f) = %.4f',x,f);
    end
endfunction
