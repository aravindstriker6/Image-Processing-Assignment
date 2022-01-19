I = imread('cameraman.tif'); % Reading cameraman image
R= [cosd(33.5) -sind(33.5) 0; sind(33.5) cosd(33.5) 0; 0 0 1] % Rotation matrix and it is used to rotate image by 33.5 degree 
S= [2.4 0 0; 0 (1/1.4) 0; 0 0 1] % This is a scaling matrix used to zoom 2.4 times along rows and shrink 1.4 times along column
T= R*S % Multiply both rotation and scaling matrix and we get final transformation matrix
tform = maketform('affine',T); % Here we create affine transformation and transformation matrix is T
Scaled_Rotated_image= imtransform(I,tform,'bicubic'); % Here transformation takes place and we have applied bicubic interpolation 
imshow(Scaled_Rotated_image) % Display image
title('Figure1:Scaled and Rotated Image'); % Title of figure1
T_inv=inv(T) % Inverse matrix for inverse transformation
tform1 = maketform('affine',T_inv);% Here we create affine transformation and transformation matrix is T_inv
Inverse_transform_image= imtransform(Scaled_Rotated_image,tform1,'bicubic'); % Here transformation takes place and we have applied bicubic interpolation 
imshow(Inverse_transform_image) %Display image
title('Figure2:Inverse Transformed Image'); %Title for figure2
padded_image=padarray(I,[118 118],0,'both') % We cannot find diffrence between 2 images because they are of diffrent dimension so we apply zero padding to original image
Difference_image= imabsdiff(padded_image,Inverse_transform_image) % Now we can find the difference as the dimensions are same
imshow(Difference_image) %Display image
title('Figure3:Difference between original and inverse transform image'); %Title for figure3





