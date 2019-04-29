part1 = imread('/Users/larry1285/Desktop/cs211/gallery/moonlanding.png');
part1 = im2double(part1);
part1 = imresize(part1,[256,256]);
figure(3)
imshow(part1);
%// Change
spec_orig = fft2(double(part1)); 
spec_img = fftshift(spec_orig);
for j = 29:34
    for n = 1:255
        spec_img(n,j) = 0; 
    end
end
for j = 51:56
    for n = 1:255
        spec_img(n,j) = 0; 
    end
end
for j = 71:78
    for n = 1:255
        spec_img(n,j) = 0; 
    end
end
for j = 178:183
    for n = 1:255
        spec_img(n,j) = 0; 
    end
end
for j = 202:207
    for n = 1:255
        spec_img(n,j) = 0; 
    end
end
for j = 123:132
    for n = 200:220
        spec_img(n,j) = 0; 
    end
end
for j = 123:132
    for n = 70:85
        spec_img(n,j) = 0; 
    end
end
for j = 123:132
    for n = 50:65
        spec_img(n,j) = 0; 
    end
end
for j = 123:132
    for n = 20:35
        spec_img(n,j) = 0; 
    end
end

for j = 123:132
    for n = 200:240
        spec_img(n,j) = 0; 
    end
end
for j = 123:132
    for n = 170:180
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

for j = 150:255
    for n = 123:132
        spec_img(n,j) = 0; 
    end
end



for j = 150:170
    for n = 1:60
        spec_img(n,j) = 0; 
    end
end

for j = 1:115
    for n = 125:131
        spec_img(n,j) = 0; 
    end
end
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