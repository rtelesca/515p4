clear X map
load("durer","X")
Xdurer = X(1:512,:);
Xdurer(:,510:512) = 50;
haared = haar2D(Xdurer);
reconstructed = haar_inv2D(haared);
%figure
figure
colormap(gray)
imagesc(reconstructed)

% thresholds of coefficient zero-ing (absolute value)
% 20
first = Xdurer;
first(first<20) = 0;

% 30


% 51

