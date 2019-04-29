%Assignment two
%Part1
%a)
%step1
image = zeros(512,512);

%step2
for x=1:size(image,1)
    for y=1:size(image,2)
        image(x,y) = sin(0.2*x)+sin(0.3*x)+cos(0.4*x)+sin(sqrt(x^2+y^2)*0.15)+sin(sqrt(x^2+y^2)*0.35);
    end
end
figure(1)
imshow(image,[])

%step3
ftimage = fft2(image);
ftimagem = abs(ftimage);
lftimagem =log(abs(ftimage));
ftimagep = angle(ftimage);
s_ftimage = fftshift(ftimage);

figure(2)
imshow(lftimagem,[])
figure(3)
imshow(ftimagep,[])
figure(4)
imshow(log(s_ftimage),[])

%step4
ftimagem_d = ftimagem*2;
iftimagem_d = ifft2(ftimagem_d);

figure(5)
subplot(1,2,1),imshow(image,[])
subplot(1,2,2),imshow(iftimagem_d,[])

% b)
cross = imread('https://www.ics.uci.edu/~majumder/VC/new-assn/img-gallery-2/Cross.jpg');
cross = im2double(cross);
fcross = fft2(cross);

figure(6)
subplot(1,2,1),imshow(cross)
subplot(1,2,2),imshow(fcross)


