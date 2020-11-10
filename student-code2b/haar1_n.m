%
% Function to compute one round of averaging and differencing 
% on a sequence u of length k = 2^n, to compute its Haar  
% coefficients c. It is assumed that dim(u) >= k > = 2
%  If k < 2, it is the identity
% This version normalizes by 1/sqrt(2)
%
function c = haar1_n(u,k)
    c = u;
    if k > 1
       k = k/2;
       for i = 1:k
           c(i) = (u(2*i - 1) + u(2*i))/sqrt(2);
           c(k + i) = (u(2*i - 1) - u(2*i))/sqrt(2);
       end
    end
end