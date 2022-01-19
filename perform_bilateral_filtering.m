I = imread('cameraman.tif');   %Reading Image
noisy_image= imnoise(I,'gaussian',0,0.02); % Adding noise
K = wiener2(noisy_image,[3 3]);
figure, imshow(K)