clear;
clc;

x0=input('Masukkan nilai x0 = ');
x1=input('Masukkan nilai x1 = ');
x2=input('Masukkan nilai x2 = ');
x3=input('Masukkan nilai x3 = ');
x4=input('Masukkan nilai x4 = ');
f0=input('Masukkan nilai f0 = ');
f1=input('Masukkan nilai f1 = ');
f2=input('Masukkan nilai f2 = ');
f3=input('Masukkan nilai f3 = ');
f4=input('Masukkan nilai f4 = ');

h=(x1-x0);
L=(h/2)*(f0+2*(f1+f2+f3)+f4);
printf('Hasil perhitungan L = %f',L)
