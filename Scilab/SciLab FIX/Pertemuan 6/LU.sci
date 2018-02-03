function[L,U]= DekomLU(A,b)
    [m,n]=size (A);
    L=eye (m,n);
    U=A;
    if m~=n 
        error('matrik tidak bujursangkar')
        end
        for k=1 :(n-1)
        for i= (k+1) :n
            if U (k,k)~= 0
                
pengali = U(i,k)/U(k,k);
        L(i,k)= pengali;
        U(i,k)=0;
    end
    for j =(k+1):n
        U(i,j)= U(i,j)- pengali*U(k,j);
    end
        if b == 1
            U
            L
            pause
            end
        end
    end
endfunction

