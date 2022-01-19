I = imread('cameraman.tif'); % Reading cameraman image
imshow(I);  %Displaying the cameraman image
title('Figure1:Cameraman Image'); %Title for the image
filter=[-1 -1 -1 ; -1 8 -1 ; -1 -1 -1]; %Defining laplacian filter
filtered_lap = imfilter(I,filter,'replicate');%Applying laplacian filter to image
sharp=I+filtered_lap % Sharp image obtained using laplacian filter and we add or subtract image from laplacian filtered image , it depends on laplacian filter
imshow(sharp,[]);  %Displaying sharpened image
title('Figure2:sharpened image using laplacian filter1'); %Title for the image
gaussian= fspecial('gaussian',3,0.5); %Defining 3*3 gaussian filter with sigma as 0.5
blurred=imfilter(I,gaussian); %Applying Gaussian filter to image 
imshow(blurred);  %Blurred image
title('Figure3:blurred with sigma 0.5'); %Title for image
filter1=[0 1 0 ; 1 -4  1 ; 0 1 0]; %Defining Laplacian Filter
filtered_lap1 = imfilter(blurred,filter1,'replicate'); %Applying Laplacian filter to blurred image
sharp1=I-filtered_lap1 %Obtaining Sharpened image by subtracting laplacian filtered image from original image
imshow(sharp1); %Displaying Sharpened Image
title('Figure4:blurred and sharp with sigma 0.5'); %Title for image
gaussian1= fspecial('gaussian',3,1); %Defining 3*3 gaussian filter with sigma as 1
blurred1=imfilter(I,gaussian1);%Applying Gaussian filter to image 
imshow(blurred1);%Blurred image with sigma 1
title('Figure5:blurred with sigma 1'); %Title for Image
filter2=[1 1 1 ; 1 -8  1 ; 1 1 1]; %Defining Gaussian filter
filtered_lap2 = imfilter(blurred1,filter2,'replicate'); %Applying Laplacian filter to blurred image
sharp2=I-filtered_lap2 %Obtaining Sharpened image by subtracting laplacian filtered image from original image
imshow(sharp2);%Displaying Image
title('Figure6:blurred and sharp with sigma 1'); %Title for the Image







