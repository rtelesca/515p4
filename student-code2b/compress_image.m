%
% Creates a matrix for the image 'detail'
% The matrix is loaded in the matrix named X
%
%
clear X map
load('detail','X')
%
%  load('durer','X')
size(X)
% 359  371
%  needs to resize to a dimension that is a power of 2
Xdetail = X(1:256,1:256);
figure
colormap(gray)
imagesc(Xdetail)
%  runs haar_2D_step for 2 rounds of averaging
%% Zdetail2 = haar2D_step_n(Xdetail,2);
%
%  computes Xdetail back
%% Xdetail2 = haar_inv2D_step_n(Zdetail2,2);
%
% now durer
%
clear X map
load('durer','X')
size(X)
%  
%  648   509
Xdurer = X(1:512,:);
Xdurer(:,510:512) = 50;
figure
colormap(gray)
imagesc(Xdurer)
%
Zdurer1 = haar2D_step(Xdurer,1);
Xdurer1 = haar_inv2D_step(Zdurer1,1);
%
clear X map
load('mandrill','X')
%  
Xmandrill(480:512,:) = 50;
Xmandrill(:,501:512) = 50;
%
%  To compute the Haar coeffs; second param =1 means all 
%  intermediate steps are shown when second param = 1
%  v1 = classical version  (all rows first, then all columns)
%  normalized version
%
% Zdurer = haar2Dv1_n(Xdurer,1);
%% Zdurer = haar2Dv1_n(Xdurer);
%
%  To reconstruct an image from its Haar coeffs
%  v1 = classical version
%  normalized
%
% 
%% Xdurer_b = haar_inv2Dv1_n(Zdurer);
%
%
%  To compute the Haar coeffs; second param =1 means all 
%  intermediate steps are shown
%  v2 = nonstandard version  (alternates between rows and  columns)
%  normalized
%
% Zdurer_v2 = haar2Dv2_n(Xdurer,1);
%% Zdurer_v2 = haar2Dv2_n(Xdurer);
%
%  To reconstruct an image from its Haar coeffs
%  v2 = nonstandard version
%  normalized
%
% 
%% Xdurer_c = haar_inv2Dv2_n(Zdurer_v2);
%
%  computes Haar basis vectors (2D); n = 2; standard method 
%
% HBv1 = haar2Dv2_basis(2,1);
%
%  computes Haar basis vectors (2D); n = 2; nonstandard method 
%
% HBv2 = haar2Dv2_basis(2,2);
