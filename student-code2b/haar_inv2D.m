function A = haar_inv2D(C)
    [m, n] = size(C);
    B = C;
    
    for i = 1:n
        c = reshape(C(:, i), [1, m]);
        B(:, i) = haar1_inv(c, m);
    end
    
    A = B;
    
    for i = 1:m
       c = reshape(B(i, :), [1, n]);
       A(i, :) = haar1_inv(c, n);
    end
end