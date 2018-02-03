/* File name
   Muhammad Raihan Akbar
   140810160013
   Date
   ================================*/
   function[x,y]=bagidua()
        clc
        a = input('batas bawah = ');
        b = input('bats atas = ');
        tol = input('masukkan nilai toleransi = ');
        
        c = a;
        d = b;
        
        if(f(a)*f(b) > 0) then
            printf('\nfungsi f(a)*f(b) > 0, tidak ada akar pada [%d.$d]',a,b);
        else
            e = abs(a-b);
            i = 1;
            while(e > tol)
                kiri = a;
                kanan = b;
                tengah = (kiri+kanan)/2;
                fkiri = f(kiri);
                ftengah = f(tengah);
                if (fkiri * ftengah > 0)
                    a = tengah;
                else
                    b = tengah;
                end
                printf('\niterasi %d -> \t a=%.5f \t b=%.5f \t tengah=%.5f',i ,kiri, kanan, tengah, ftengah)
                e = abs(a-b);
                i=i+1;
             end
             
             x = zeros(i-1, 1)
             y = zeros(i-1, 1)
             e = abs(c-d);
             i = 1;
             while (e > tol)
                 kiri = c;
                 kanan = d;
                 tengah = (kiri+kanan)/2;
                 fkiri = f(kiri);
                 fkanan = f(kanan);
                 ftengah = f(tengah);
                 
                 if (fkiri*ftengah > 0)
                     c = tengah;
                 else
                     d = tengah;
                 end
             x(i)=tengah;
             y(i)=ftengah;
             e = abs(c-d);
             i = i+1;
         end
         printf('\n\nHampiran akarnya adalah %.5f', tengah)
        end
   endfunction
