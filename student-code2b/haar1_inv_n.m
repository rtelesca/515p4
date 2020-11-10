%
%  Program to perform one round of averaging and differencing
%  on a  sequence c of length k = 2^n 
%  to reconstruct a vector u.
%  This version normalizes by 1/sqrt(2)
%  It is assumed that dim(c) >= k >= 2
%  If k < 2, it is the identity
%
function u = haar1_inv_n(c,k)
     u = c;
     if k > 1
        k = k/2;
        for i = 1:k
            u(2*i - 1) = (c(i) + c(k + i))/sqrt(2);
            u(2*i) = (c(i) - c(k + i))/sqrt(2);
        end
     end
       % u
end
