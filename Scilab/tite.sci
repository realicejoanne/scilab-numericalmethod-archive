function y=g(x)
    y=-1/(x^2-3);
endfunction

n=100;
i=0;

x0=1;
x1=2;
err=0.00001;

while abs(x1-x0)>err
    x2=g(x1);
    x0=x1;
    x1=x2;
    i=i+1;
    disp("iterasi  "+string(i)+ " => "+string(x0)+"    "+string(x1));
    end;
disp("Solusi =  "+string(x2));
