clear;
clc;
x0=input('Masukkan nilai x0 = ');
x1=input('Masukkan nilai x1 = ');
x2=input('Masukkan nilai x2 = ');
y0=input('Masukkan nilai y0 = ');
y1=input('Masukkan nilai y1 = ');
y2=input('Masukkan nilai y2 = ');
x=input('Masukkan nilai x = ');

P=(((x-x1)/(x0-x1))*((x-x2)/(x0-x2))*y0)+(((x-x0)/(x1-x0))*((x-x2)/(x1-x2))*y1)+(((x-x0)/(x2-x0))*((x-x1)/(x2-x1))*y2);
printf('Hasil perhitungan p2(x) = %f',P)
