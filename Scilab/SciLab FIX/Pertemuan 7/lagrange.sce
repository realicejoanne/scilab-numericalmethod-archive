x = input("Masukan x yang dicari : ");
n = input("Masukan jumlah data : ");

data = zeros(n,2);
for i = 1:n
    data(i,1) = input("Masukan x ke "+string(i)+" : ");
    data(i,2) = input("Masukan f(x) ke "+string(i)+" : ");
end

deg = input("Masukan derajat : ");

disp("liyi");
hasil = 0;
for i=1:deg+1
    tmp1 = 1;
    tmp2 = 1;
    for j=1:deg
        if (j<>i) then
            tmp1 = tmp1*(x-data(j,1));
            tmp2 = tmp2*(data(i,1)-data(j,1));
        end;
    end;
    tmpHasil = (tmp1/tmp2)*data(i,2);
    disp([i, tmpHasil]);
    hasil = hasil+tmpHasil;
end;

disp("Hasil interpolasi di titik x = "+string(x)+" untuk derajat "+string(deg)+" adalah "+string(hasil));
