function xn=regulafalsi()
    clear;
    clc;
    a1=input('Selang Awal  = ');
    b1=input('Selang Akhir = ');
    aprox=input('Selang Epsilon = ');
    exec('E:\Kuliah\Semester 3\Metode Numberik\Praktikum\Laprak\Code tugas 3\Regula Falsi\regulafalsi.sci', -1)
    i=1;
    ea(1)=100;
    if f(a1)*f(b1) < 0
        x0(1)=a1;
        x1(1)=b1;
        xn(1)=x0(1)-f(x0(1))*(x1(1)-x0(1))/(f(x1(1))-f(x0(1)));
        printf('r.\t\t x0\t\t xn\t\t x1\t  Error  \n');
        printf('%2d \t %11.7f \t %11.7f \t %11.7f \n',i,x0(i),xn(i),x1(i));
        while abs(ea(i))>=aprox,
          if f(x0(i))*f(xn(i))< 0
             x0(i+1)=x0(i);
             x1(i+1)=xn(i);
          end
          if f(x0(i))*f(xn(i))> 0
             x0(i+1)=xn(i);
             x1(i+1)=x1(i);
          end    
          xn(i+1)=x0(i+1)-f(x0(i+1))*(x1(i+1)-x0(i+1))/(f(x1(i+1))-f(x0(i+1)));
           ea(i+1)=abs((xn(i+1)-xn(i))/(xn(i+1)));
          printf('%2d \t %11.7f \t %11.7f \t %11.7f \t %7.7f \n', i+1,x0(i+1),xn(i+1),x1(i+1),ea                    (i+1));
          i=i+1;
       end
    else
       printf(' ');
    end
endfunction
