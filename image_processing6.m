I = double(imread('Friends-1.tif'));   %Reading Image
figure;imshow(I./255);
title('Figure1:Friends Image');
redChannel = I(:,:,1); % Red channel
greenChannel =I(:,:,2); % Green channel
blueChannel =I(:,:,3); % Blue channel
figure;imshow(redChannel./255);
title('Figure2:Red Channel');
figure;imshow(greenChannel./255);
title('Figure3:Green Channel');
figure;imshow(blueChannel./255);
title('Figure4:Blue Channel');
hsv = rgb2hsv(I);
H= hsv(:,:,1); % H channel
S=hsv(:,:,2); % S channel
V=hsv(:,:,3); % V channel
figure;imshow(H);
title('Figure5:H Channel');
figure;imshow(S);
title('Figure6:S Channel');
figure;imshow(V./255);
title('Figure7:V Channel');
rgb_sum = (redChannel) + (greenChannel) + (blueChannel);
NormalizedRed = (redChannel)./rgb_sum;
NormalizedGreen = (greenChannel)./rgb_sum;
NormalizedBlue = (blueChannel)./rgb_sum;