A = imread('/Users/larry1285/Desktop/cs211/gallery/coloredpic1.png');
A = rgb2gray(A);
A = im2double(A);
A = imresize(A,[64,64]); %64x64
% figure(1)
% imshow(A)
ftimage_64x64 = fft2(A);
figure(2)
imshow(ftimage_64x64) %如果用[]會整個變黑色
NewCol = zeros(64,64);
A= [A NewCol]
NewRow = zeros(64,128);
A= [A ;NewRow] % 128 x 128
ftimage_128x128 = fft2(A);
figure(3)
imshow(ftimage_128x128) 

NewCol = zeros(128,128);
A= [A NewCol]
NewRow = zeros(128,256);
A= [A ;NewRow] % 256 x 256
ftimage_256x256 = fft2(A);
figure(4)
imshow(ftimage_256x256) 


NewCol = zeros(256,256);
A= [A NewCol]
NewRow = zeros(256,512);
A= [A ;NewRow] % 512 x 512
ftimage_512x512 = fft2(A);
figure(5)
imshow(ftimage_512x512) 

