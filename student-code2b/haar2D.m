function C = haar2D(A)
    [m, n] = size(A);
    B = A;
    
    for i = 1:m
        c = reshape(A(i, :), [1, n]);
        B(i, :) = haar1(c, n);
    end
    
    C = B;
    
    for i = 1:n
       c = reshape(B(:, i), [1, m]);
       C(:, i) = haar1(c, m);
    end
end