function regfalsi=regulafalsi()
    a = input('Masukkan nilai a = ');
    b = input('Masukkan nilai b = ');
    eps = input('Masukkan nilai epsilon = ');
    E = abs(a-b);
    i=0;
    printf('------------------------------------------------------------------------\n');
    printf('    i       a           b       c           f(a)        f(b)        f(c)\n');
    printf('------------------------------------------------------------------------\n'); 
    while (E>eps)
        i=i+1;
        printf('%5.0f%12.7f%12.7f',i,a,b);
        fa = cos(a)-sin(a);
        fb = cos(b)-sin(b);
        c = b-(fb*(b-a))/(fb-fa);
        fc = cos(c)-sin(c);
        if (fa*fc>0) a=c;
            else b=c;
        end
    E = abs(b-a);
    printf('%12.7f%12.7f%12.7f%12.7f\n',c,fa,fb,fc);
end
funcprot(0);
endfunction
