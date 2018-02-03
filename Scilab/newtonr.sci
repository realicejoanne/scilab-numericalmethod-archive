function [y]=f(x)
    y=exp(x)-3*(x^2);
endfunction

function y=df(x)
    y=exp(x)-6*x
endfunction

function [x,y]=newton(x0,n)
    x=zeros(n,1);
    y=zeros(n,1);
    
    x(1)=x0-(f(x0)/df(x0));
    y(1)=f(x(1));
    printf('\niterasi 1 =>\tx1 = %.5f\tf(x1) = %.5f',x(1),y(1));
    for i=2:n
        x(i)=x(i-1)-(f(x(i-1))/df(x(i-1)));
        y(i)=f(x(i));
        printf('\niterasi %d =>\tx%d = %.5f\tf(x%d) = %.5f',i,i,x(i),i,y(i));
    end
endfunction
