// Bagian Data
n = 6;
titik = n+1;
iterasi = n/3;
data = zeros(titik,2);

data(1,1) = 0;
data(2,1) = 0.2;
data(3,1) = 0.4;
data(4,1) = 0.6;
data(5,1) = 0.8;
data(6,1) = 1;
data(7,1) = 1.2;

data(1,2) = 1.3;
data(2,2) = 1.7;
data(3,2) = 2.1;
data(4,2) = 2.5;
data(5,2) = 2.7;
data(6,2) = 3;
data(7,2) = 3.2;

// Bagian Komputasi
h = (data(titik,1) - data(1,1)) / n; 
temp = 0;
for i = 1:iterasi
    t = (i-1)*3;
    temp = temp + (((data(t+1,2)) + (3*data(t+2,2))  + (3*data(t+3,2)) + (data(t+4,2))) *h*3/8);
    disp(temp);
end

disp(temp);
