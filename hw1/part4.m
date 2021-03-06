% Part 4

% step 1

pic1 = imread('/Users/larry1285/Desktop/cs211/gallery/text.jpg');
pic1 = im2double(pic1);
kernel=fspecial('average',2);

pic1_G_A0 = pic1;
pic1_G_A1 = conv2(pic1_G_A0,kernel,'same');
pic1_G_A1 = pic1_G_A1(2:2:size(pic1_G_A1,1),2:2:size(pic1_G_A1,2));
pic1_G_A2 = conv2(pic1_G_A1,kernel,'same');
pic1_G_A2 = pic1_G_A2(2:2:size(pic1_G_A2,1),2:2:size(pic1_G_A2,2));
pic1_G_A3 = conv2(pic1_G_A2,kernel,'same');
pic1_G_A3 = pic1_G_A3(2:2:size(pic1_G_A3,1),2:2:size(pic1_G_A3,2));
pic1_G_A4 = conv2(pic1_G_A3,kernel,'same');
pic1_G_A4 = pic1_G_A4(2:2:size(pic1_G_A4,1),2:2:size(pic1_G_A4,2));
pic1_G_A5 = conv2(pic1_G_A4,kernel,'same');
pic1_G_A5 = pic1_G_A5(2:2:size(pic1_G_A5,1),2:2:size(pic1_G_A5,2));
pic1_G_A6 = conv2(pic1_G_A5,kernel,'same');
pic1_G_A6 = pic1_G_A6(2:2:size(pic1_G_A6,1),2:2:size(pic1_G_A6,2));
pic1_G_A7 = conv2(pic1_G_A6,kernel,'same');
pic1_G_A7 = pic1_G_A7(2:2:size(pic1_G_A7,1),2:2:size(pic1_G_A7,2));
pic1_G_A8 = conv2(pic1_G_A7,kernel,'same');
pic1_G_A8 = pic1_G_A8(2:2:size(pic1_G_A8,1),2:2:size(pic1_G_A8,2));

pic1_L_A0 = double(pic1_G_A0)-imresize(pic1_G_A1,size(pic1_G_A0));
pic1_L_A1 = double(pic1_G_A1)-imresize(pic1_G_A2,size(pic1_G_A1));
pic1_L_A2 = double(pic1_G_A2)-imresize(pic1_G_A3,size(pic1_G_A2));
pic1_L_A3 = double(pic1_G_A3)-imresize(pic1_G_A4,size(pic1_G_A3));
pic1_L_A4 = double(pic1_G_A4)-imresize(pic1_G_A5,size(pic1_G_A4));
pic1_L_A5 = double(pic1_G_A5)-imresize(G_A6,size(pic1_G_A5));
pic1_L_A6 = double(pic1_G_A6)-imresize(G_A7,size(pic1_G_A6));
pic1_L_A7 = double(pic1_G_A7)-imresize(G_A8,size(pic1_G_A7));
pic1_L_A8 = double(pic1_G_A8)

pic2 = imread('/Users/larry1285/Desktop/cs211/gallery/CARTOON.jpg');
pic2 = im2double(pic2);
kernel=fspecial('average',2);

pic2_G_A0 = pic2;
pic2_G_A1 = conv2(pic1_G_A0,kernel,'same');
pic2_G_A1 = pic2_G_A1(2:2:size(pic2_G_A1,1),2:2:size(pic2_G_A1,2));
pic2_G_A2 = conv2(pic2_G_A1,kernel,'same');
pic2_G_A2 = pic2_G_A2(2:2:size(pic2_G_A2,1),2:2:size(pic2_G_A2,2));
pic2_G_A3 = conv2(pic1_G_A2,kernel,'same');
pic2_G_A3 = pic2_G_A3(2:2:size(pic2_G_A3,1),2:2:size(pic2_G_A3,2));
pic2_G_A4 = conv2(pic2_G_A3,kernel,'same');
pic2_G_A4 = pic2_G_A4(2:2:size(pic2_G_A4,1),2:2:size(pic2_G_A4,2));
pic2_G_A5 = conv2(pic2_G_A4,kernel,'same');
pic2_G_A5 = pic2_G_A5(2:2:size(pic2_G_A5,1),2:2:size(pic2_G_A5,2));
pic2_G_A6 = conv2(pic2_G_A5,kernel,'same');
pic2_G_A6 = pic2_G_A6(2:2:size(pic2_G_A6,1),2:2:size(pic2_G_A6,2));
pic2_G_A7 = conv2(pic2_G_A6,kernel,'same');
pic2_G_A7 = pic2_G_A7(2:2:size(pic2_G_A7,1),2:2:size(pic2_G_A7,2));
pic2_G_A8 = conv2(pic2_G_A7,kernel,'same');
pic2_G_A8 = pic2_G_A8(2:2:size(pic2_G_A8,1),2:2:size(pic2_G_A8,2));

pic2_L_A0 = double(pic2_G_A0)-imresize(pic2_G_A1,size(pic2_G_A0));
pic2_L_A1 = double(pic2_G_A1)-imresize(pic2_G_A2,size(pic2_G_A1));
pic2_L_A2 = double(pic2_G_A2)-imresize(pic2_G_A3,size(pic2_G_A2));
pic2_L_A3 = double(pic2_G_A3)-imresize(pic2_G_A4,size(pic2_G_A3));
pic2_L_A4 = double(pic2_G_A4)-imresize(pic2_G_A5,size(pic2_G_A4));
pic2_L_A5 = double(pic2_G_A5)-imresize(G_A6,size(pic2_G_A5));
pic2_L_A6 = double(pic2_G_A6)-imresize(G_A7,size(pic2_G_A6));
pic2_L_A7 = double(pic2_G_A7)-imresize(G_A8,size(pic2_G_A7));
pic2_L_A8 = double(pic2_G_A8)

% step 2

binaryMask = zeros(256,256);
for i = 128:255
    binaryMask(:,i)=1;
end
% step 3
G_A0 = binaryMask;
G_A1 = conv2(G_A0,kernel,'same');
G_A1 = G_A1(2:2:size(G_A1,1),2:2:size(G_A1,2));
G_A2 = conv2(G_A1,kernel,'same');
G_A2 = G_A2(2:2:size(G_A2,1),2:2:size(G_A2,2));
G_A3 = conv2(G_A2,kernel,'same');
G_A3 = G_A3(2:2:size(G_A3,1),2:2:size(G_A3,2));
G_A4 = conv2(G_A3,kernel,'same');
G_A4 = G_A4(2:2:size(G_A4,1),2:2:size(G_A4,2));
G_A5 = conv2(G_A4,kernel,'same');
G_A5 = G_A5(2:2:size(G_A5,1),2:2:size(G_A5,2));
G_A6 = conv2(G_A5,kernel,'same');
G_A6 = G_A6(2:2:size(G_A6,1),2:2:size(G_A6,2));
G_A7 = conv2(G_A6,kernel,'same');
G_A7 = G_A7(2:2:size(G_A7,1),2:2:size(G_A7,2));
G_A8 = conv2(G_A7,kernel,'same');
G_A8 = G_A8(2:2:size(G_A8,1),2:2:size(G_A8,2));
% step 4
LS0=zeros(256,256);
for i = 1:256
    for j = 1:256
        LS0(i,j)=G_A0(i,j)*pic1_L_A0(i,j)+(1-G_A0(i,j))*pic2_L_A0(i,j);
    end
end

LS1=zeros(128,128);
for i = 1:128
    for j = 1:128
        LS1(i,j)=G_A1(i,j)*pic1_L_A1(i,j)+(1-G_A1(i,j))*pic2_L_A1(i,j);
    end
end

LS2=zeros(64,64);
for i = 1:64
    for j = 1:64
        LS2(i,j)=G_A2(i,j)*pic2_L_A1(i,j)+(1-G_A2(i,j))*pic2_L_A2(i,j);
    end
end

LS3=zeros(32,32);
for i = 1:32
    for j = 1:32
        LS3(i,j)=G_A3(i,j)*pic2_L_A3(i,j)+(1-G_A3(i,j))*pic2_L_A3(i,j);
    end
end

LS4=zeros(16,16);
for i = 1:16
    for j = 1:16
        LS4(i,j)=G_A4(i,j)*pic2_L_A4(i,j)+(1-G_A4(i,j))*pic2_L_A4(i,j);
    end
end

LS5=zeros(8,8);
for i = 1:8
    for j = 1:8
        LS5(i,j)=G_A5(i,j)*pic2_L_A5(i,j)+(1-G_A5(i,j))*pic2_L_A5(i,j);
    end
end

LS6=zeros(4,4)
for i = 1:4
    for j = 1:4
        LS6(i,j)=G_A6(i,j)*pic2_L_A6(i,j)+(1-G_A6(i,j))*pic2_L_A6(i,j);
    end
end


LS7=zeros(2,2)
for i = 1:2
    for j = 1:2
        LS7(i,j)=G_A7(i,j)*pic2_L_A7(i,j)+(1-G_A7(i,j))*pic2_L_A7(i,j);
    end
end

LS8=zeros(1,1)
for i = 1:1
    for j = 1:1
        LS8(i,j)=G_A8(i,j)*pic2_L_A8(i,j)+(1-G_A8(i,j))*pic2_L_A8(i,j);
    end
end
% step 5

LS1_prime=imresize(LS1,size(LS0),'bilinear'); % size as G_A0
LS2_prime=imresize(LS2,size(LS0),'bilinear');
LS3_prime=imresize(LS3,size(LS0),'bilinear');
LS4_prime=imresize(LS4,size(LS0),'bilinear');
LS5_prime=imresize(LS5,size(LS0),'bilinear');
LS6_prime=imresize(LS6,size(LS0),'bilinear');
LS7_prime=imresize(LS7,size(LS0),'bilinear');
LS8_prime=imresize(LS8,size(LS0),'bilinear');
finalImage=zeros(256,256);

finalImage=finalImage+LS0+LS1_prime+LS2_prime+LS3_prime+LS4_prime+LS5_prime+LS6_prime+LS7_prime+LS8_prime;
imshow(finalImage)
imwrite(finalImage,'part1_text_CARTOON.jpg');
