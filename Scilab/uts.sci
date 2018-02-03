function [hasil]=f(x)
    hasil= exp(2*log(x)) - (2/3)*(x);
endfunction

function [x,y]=bisection() 
    clc 
    disp("Mencari akar dengan Metode Bisection\n")
    a=input('Masukkan nilai batas bawah = '); 
    b=input('Masukkan nilai batas atas = '); 
    tol=input('Masukkan nilai toleransi = ');
    c=a; 
    d=b; 
    
    if(f(a)*f(b)>0) 
        printf('\nFungsi f(a)*f(b)>0, tidak ada akar pada [%d,%d]',a,b); 
    else 
        e=abs(a-b); 
        i=1; 
        while(e>tol) 
            kiri=a; 
            kanan=b; 
            tengah=(kiri+kanan)/2; 
            fkiri=f(kiri); fkanan=f(kanan); ftengah=f(tengah); 
            if(fkiri*ftengah>0) 
                a=tengah; 
            else 
                b=tengah; 
            end 
        printf('\nIterasi %d -> \t a=%.5f \t b=%.5f \t tengah=%.5f \t ftengah=%.5f',i,kiri,kanan,tengah,ftengah); 
        e=abs(a-b); 
        i=i+1; 
        end 
     
    x=zeros(i-1,i); 
    y=zeros(i-1,i); 
    e=abs(c-d); 
    i=1; 
     
    while(e>tol) 
        kiri=c; 
        kanan=d; 
        tengah=(kiri+kanan)/2; 
        fkiri=f(kiri); fkanan=f(kanan); ftengah=f(tengah); 
        if(fkiri*fkanan>0) 
            c=tengah; 
        else 
            d=tengah; 
        end 
         
        x(i)=tengah; 
        y(i)=tengah; 
        e=abs(c-d); 
        i=i+1; 
    end 
    printf('\n\nHampiran akarnya adalah %.5f',tengah); 
    end 
endfunction
