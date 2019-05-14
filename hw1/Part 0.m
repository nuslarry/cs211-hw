% 為什麼每次只能顯示最後一張圖
% 能執行某一段代碼嗎


% Part 0

% a.)
A = imread('/Users/larry1285/Desktop/cs211/gallery/hellokitty.jpg');
A = rgb2gray(A);
A = im2double(A);
A = imresize(A,[100,100]);

A_vector = reshape(A,[1,10000]);
A_vector=sort(A_vector);
imshow(A)
% plot([1:10000],A_vector);

% b.)
% histogram(A_vector,32);

% c.)
% 0 black, 1 white
BW = im2bw(A,0.98);
% imshow(BW)

% d.)  ??????????????????????????????
A_prime=A;
A_mean=mean(A_vector);
A_prime=A_prime-A_mean;
A_prime(A_prime<0)=0;
% imshow(A_prime);

% e.)
y=[1:8];
y=reshape(y,[4,2]);

% f.)
% matrix index starts from 1
subsampledImage = A(1:2:end, 1:2:end);
% imshow(subsampledImage);
% g.)
G=fspecial('average',3);
ABlur3 = imfilter(A,G)
% imshow(ABlur3);

G=fspecial('average',6);
ABlur6 = imfilter(A,G);
% imshow(ABlur6);

G=fspecial('average',9);
ABlur9 = imfilter(A,G);
% imshow(ABlur9);


% h.)
% i do not see any difference

G=fspecial('average',9);
ABlur = conv2(A,G);
% imshow(ABlur);
