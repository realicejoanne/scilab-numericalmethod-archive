function BTNewtonKubik()
    printf('======== Beda Terbagi Newton ========\n');
    printf('\nf(x)= cos(x)\n')
    
    X=input('Masukkan nilai X = ');
    x0=input('Masukkan nilai x0 = ');
    x1=input('Masukkan nilai x1 = ');
    x2=input('Masukkan nilai x2 = ');
    x3=input('Masukkan nilai x3 = ');
    
    f0=cos(x0);
    f1=cos(x1);
    f2=cos(x2);
    f3=cos(x3);
    
    a=(f1-f0)/(x1-x0);
    b=(f2-f1)/(x2-x1);
    c=(f3-f2)/(x3-x2);
    
    d=(b-a)/(x2-x0);
    e=(c-b)/(x3-x1);
    f=(e-d)/(x3-x0);
    
    a1 = a;
    a2 = d;
    a3 = f;
    
    p = f0+(a1*(X-x0))+(a2*(X-x0)*(X-x1))+(a3*(X-x0)*(X-x1)*(X-x2));
    printf('Interpolasi Beda Terbagi Newton Kubik\n');
    printf('P3(%.1f) = %.5f', X, p);
endfunction
