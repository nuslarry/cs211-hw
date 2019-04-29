% A = imread('/Users/larry1285/Desktop/cs211/gallery/psnr2.png');
% A = rgb2gray(A);
% A = im2double(A);
% A = imresize(A,[256,256]);
% figure(1)
% imshow(A);
% ftimage = fft2(A);
% ftimage(:,12)=0
% iftimagem = ifft2(ftimage);
% figure(2)
% imshow(iftimagem);

part1 = imread('/Users/larry1285/Desktop/cs211/gallery/psnr2.png');
part1 = rgb2gray(part1);
part1 = im2double(part1);
part1 = imresize(part1,[256,256]);
% NewCol = zeros(256,256);
% part1= [part1 NewCol]
% NewRow = zeros(256,512);
% part1= [part1 ;NewRow]

figure(3)
imshow(part1);
%// Change
spec_orig = fft2(double(part1)); 
spec_img = fftshift(spec_orig);


for j = 123:135
    for n = 180:182
        spec_img(n,j) = 0; 
    end
end
for j = 123:135
    for n = 190:196
        spec_img(n,j) = 0; 
    end
end
for j = 123:135
    for n = 54:100
        spec_img(n,j) = 0; 
    end
end

for j = 140:160
    for n = 150:160
        spec_img(n,j) = 0; 
    end
end
for j = 180:200
    for n = 170:180
        spec_img(n,j) = 0; 
    end
end

% for j = 150:255
%     for n = 123:132
%         spec_img(n,j) = 0; 
%     end
% end



for j = 150:170
    for n = 1:60
        spec_img(n,j) = 0; 
    end
end

% for j = 1:115
%     for n = 125:131
%         spec_img(n,j) = 0; 
%     end
% end
for j = 220:255
    for n = 90:100
        spec_img(n,j) = 0; 
    end
end
for j = 1:50
    for n = 155:165
        spec_img(n,j) = 0; 
    end
end

figure(1)
temp = spec_img
spec_img = log(1 + spec_img);
imshow(spec_img,[]); 


%// Change
ptnfx = real(ifft2(ifftshift(temp)));
figure(2)
imshow(ptnfx,[]);