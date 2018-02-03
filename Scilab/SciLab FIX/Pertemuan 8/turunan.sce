function hasil = fungsiTurunan(x,y)
    hasil = x*y;
endfunction

xawal= input('Masukan x awal : ');
yawal = input('Masukan y awal : ');
h = input('Masukan h : ');
xbatas = input('Masukan x batas (dicari) : ');

jumlahStep = (xbatas-xawal)/h
data = zeros(jumlahStep,2);

data(1, 1) = xawal;
data(1, 2) = yawal;

temp = 0;
for (i = 2:jumlahStep+1)
    data(i, 1) = xawal + (i-1)*h;
    data(i, 2) = data(i-1, 2) + h*(fungsiTurunan(data(i-1, 1), data(i-1, 2) ))
end

disp(data);
