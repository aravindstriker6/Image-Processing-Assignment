clear all; clc; close all;
 % read the image
R = imread('Friends-1.tif');
% convert into hsv image
I = rgb2hsv (R);
[n,m,o] = size(I);
% get the H,S,V components
H = I(:,:,1);
S = I(:,:,2);
V = I(:,:,3);
%Using Trail and Eroor
a=0; b=0.50; c=0.10; d=0.80;
% generate mask
mask = (H >= a) & (H <= b) & (S >= c) & (S <= d);
mask = uint8 (mask);
 % use mask to generate new image
R_segmentation(:,:,1) = R(:,:,1) .* mask;
R_segmentation(:,:,2) = R(:,:,2) .* mask;
R_segmentation(:,:,3) = R(:,:,3) .* mask;
R_segmentation = cat(3, R_segmentation(:,:,1), R_segmentation(:,:,2), R_segmentation(:,:,3));
% display results
figure ('Name','Segmented Skin - HSV'); imshow(R_segmentation);
figure('Name','Mask - HSV'); imshow (mask>0);
% h-s plot with skin pixels in blue and others in red
mask=double(mask);
figure; hold on;
plot(H(:).*(1-mask(:)),S(:).*(1-mask(:)),'g*');
plot(H(:).*mask(:),S(:).*mask(:),'r+');
xlabel('H'); ylabel('S'); title('H-S plot of pixels');
legend('Non-skin','Skin');
