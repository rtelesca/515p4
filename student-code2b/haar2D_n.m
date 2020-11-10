function C = haar2D_n(A)
    [m, n] = size(A);
    B = A;
    
    for i = 1:m
        c = reshape(A(i, :), [1, n]);
        B(i, :) = haar1_n(c, n);
    end
    
    C = B;
    
    for i = 1:n
       c = reshape(B(:, i), [1, m]);
       C(:, i) = haar1_n(c, m);
    end
end