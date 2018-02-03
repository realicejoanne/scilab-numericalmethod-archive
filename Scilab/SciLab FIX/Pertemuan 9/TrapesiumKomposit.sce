function hasil = fungsi(x)
    hasil = 1/(1+x);
endfunction

bawah = input('Masukan batas bawah : ');
atas = input('Masukan batas atas : ');
n = input('Masukan jumlah partisi : ');

h = (atas-bawah)/n;
totalTengah = 0;
for i = 1:(n-1)
    x = bawah+(i*h)
    totalTengah = totalTengah+fungsi(x)
end

komposit = (h/2)*(fungsi(bawah)+(2*totalTengah)+fungsi(atas));

disp(komposit);
