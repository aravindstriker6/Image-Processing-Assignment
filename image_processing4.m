I = imread('cameraman.tif'); % Reading cameraman image
imshow(I);figure; %Displaying the cameraman image
title('Figure1:Cameraman Image'); %Title for the image
filter=(1/9)*[1 1 1 ;1 1 1 ;1 1 1];
noise_image= imnoise(I,'gaussian',0,0.02);
imshow(noise_image);figure;
filtered_blur = imfilter(noise_image,filter,'replicate');
imshow(filtered_blur);figure;


