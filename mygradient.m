function [mag,ori] = mygradient(I)
%
% compute image gradient magnitude and orientation at each pixel
%
gaus = fspecial('sobel');

dx = imfilter(I, gaus);
dy = imfilter(I, gaus');

mag = sqrt(dx.*dx + dy.*dy);
ori = atan2(dy, dx);