function polynomial = lagrange(X,Y,x)
// =====================================================
//  Lagrange Polynomial Interpolation
// =====================================================
//  X : interpolation points
//  Y : value of f(X)
//  x : points where we want an evaluation of P(x),
//      where P is the interpolator polynomial
// =====================================================

n = length(X);
phi = ones(n,length(x));
polynomial = zeros(1,length(x));

for i = 1:n
	for j = 1:n  
		if i~=j then
			phi(i,:) = phi(i,:) .* (x-X(j)) ./ (X(i)-X(j));
		end
	end
end

for i = 1:n
	polynomial = polynomial + Y(i)*phi(i,:);
end
endfunction
