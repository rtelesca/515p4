%
%  Program to perform one round of averaging and differencing
%  on a  sequence c of length k = 2^n 
%  to reconstruct a vector u.
%  It is assumed that dim(c) >= k >= 2
%  If k < 2 it is the identity
%
function u = haar1_inv(c,k)
     u = c;
     if k > 1
        k = k/2;
        for i = 1:k
            u(2*i - 1) = c(i) + c(k + i);
            u(2*i) = c(i) - c(k + i);
        end
     end
       % u
end
