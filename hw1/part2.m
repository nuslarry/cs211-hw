clear all
clc

cartoon = imread('https://www.ics.uci.edu/~majumder/VC/new-assn/img-gallery/text.jpg');

cartoon = im2double(cartoon);
G1=fspecial('average',2);
%part1 
G_A0 = cartoon;

G_A1 = conv2(G_A0,G1);
G_A1 = G_A1(2:2:size(G_A1,1),2:2:size(G_A1,2));
GA1 = imresize(G_A1,size(G_A0),'bilinear');

G_A2 = conv2(G_A1,G1);
G_A2 = G_A2(2:2:size(G_A2,1),2:2:size(G_A2,2));
GA2 = imresize(G_A2,size(G_A0),'bilinear');

G_A3 = conv2(G_A2,G1);
G_A3 = G_A3(2:2:size(G_A3,1),2:2:size(G_A3,2));
GA3 = imresize(G_A3,size(G_A0),'bilinear');

G_A4 = conv2(G_A3,G1);
G_A4 = G_A4(2:2:size(G_A4,1),2:2:size(G_A4,2));
GA4 = imresize(G_A4,size(G_A0),'bilinear');

G_A5 = conv2(G_A4,G1);
G_A5 = G_A5(2:2:size(G_A5,1),2:2:size(G_A5,2));
GA5 = imresize(G_A5,size(G_A0),'bilinear');

G_A6 = conv2(G_A5,G1);
G_A6 = G_A6(2:2:size(G_A6,1),2:2:size(G_A6,2));
GA6 = imresize(G_A6,size(G_A0),'bilinear');

G_A7 = conv2(G_A6,G1);
G_A7 = G_A7(2:2:size(G_A7,1),2:2:size(G_A7,2));
GA7 = imresize(G_A7,size(G_A0),'bilinear');

G_A8 = conv2(G_A7,G1);
G_A8 = G_A8(2:2:size(G_A8,1),2:2:size(G_A8,2));
GA8 = imresize(G_A8,size(G_A0),'bilinear');


 
% figure(1)
% subplot(3,3,1),imshow(G_A0)
% subplot(3,3,2),imshow(GA1)
% subplot(3,3,3),imshow(GA2)
% subplot(3,3,4),imshow(GA3)
% subplot(3,3,5),imshow(GA4)
% subplot(3,3,6),imshow(GA5)
% subplot(3,3,7),imshow(GA6)
% subplot(3,3,8),imshow(GA7)
% subplot(3,3,9),imshow(GA8)

LP1 = G_A0-GA1;
LP2 = GA2-GA1;
LP3 = GA3-GA2;
LP4 = GA4-GA3;
LP5 = GA5-GA4;
LP6 = GA6-GA5;
LP7 = GA7-GA6;
LP8 = GA8-GA7;
LP9 = GA8;
figure(2)
       
subplot(3,3,1),imshow(LP1,[])
subplot(3,3,2),imshow(LP2,[])
subplot(3,3,3),imshow(LP3,[])
subplot(3,3,4),imshow(LP4,[])
subplot(3,3,5),imshow(LP5,[])
subplot(3,3,6),imshow(LP6,[])
subplot(3,3,7),imshow(LP7,[])
subplot(3,3,8),imshow(LP8,[])
subplot(3,3,9),imshow(LP9,[])



% %part2
% LP1 = GA1-G_A0;%size256x256
% 
% LP2 = imresize(G_A2,size(G_A1),'bilinear')-G_A1;
% LP_2 = imresize(LP2,size(LP1),'bilinear');
% 
% LP3 = imresize(G_A3,size(G_A2),'bilinear')-G_A2;
% LP_3 = imresize(LP3,size(LP1),'bilinear');
% 
% LP4 = imresize(G_A4,size(G_A3),'bilinear')-G_A3;
% LP_4 = imresize(LP4,size(LP1),'bilinear');
% 
% LP5 = imresize(G_A5,size(G_A4),'bilinear')-G_A4;
% LP_5 = imresize(LP5,size(LP1),'bilinear');
% 
% LP6 = imresize(G_A6,size(G_A5),'bilinear')-G_A5;
% LP_6 = imresize(LP6,size(LP1),'bilinear');
% 
% LP7 = imresize(G_A7,size(G_A6),'bilinear')-G_A6;
% LP_7 = imresize(LP7,size(LP1),'bilinear');
% 
% LP8 = imresize(G_A8,size(G_A7),'bilinear')-G_A7;
% LP_8 = imresize(LP8,size(LP1),'bilinear');
% 
% LP9 = G_A8;
% LP_9 = imresize(LP9,size(LP1),'bilinear');
% 
% 
% figure(2)
% imshow(LP1)
% a1=subplot(3,3,1);imshow(LP1)
% xs = get(a1, 'xlim'); ys = get(a1, 'ylim');
% a2=subplot(3,3,2);imshow(LP_2);
% set(a2, 'xlim', xs, 'ylim', ys);
% a3=subplot(3,3,3);imshow(LP_3);
% set(a3, 'xlim', xs, 'ylim', ys);
% a4=subplot(3,3,4);imshow(LP_4);
% set(a4, 'xlim', xs, 'ylim', ys);
% a5=subplot(3,3,5);imshow(LP_5)
% set(a5, 'xlim', xs, 'ylim', ys);
% a6=subplot(3,3,6);imshow(LP_6)
% set(a6, 'xlim', xs, 'ylim', ys);
% a7=subplot(3,3,7);imshow(LP_7)
% set(a7, 'xlim', xs, 'ylim', ys);
% a8=subplot(3,3,8);imshow(LP_8)
% set(a8, 'xlim', xs, 'ylim', ys);
% a9=subplot(3,3,9);imshow(LP_9)
% set(a9, 'xlim', xs, 'ylim', ys);

% %part3
% 
% %step1
% Lo = ones(3)*(-1/8);
% Lo(2,2) = 1;
% ALO = conv2(G_A0,Lo,'same');
% 
% % figure(6)
% % imshow(ALO)
% 
% %step2
% BWalo = im2bw(ALO,0);
% 
% 
% %step3&step4
% 
% f_img = zeros(size(ALO,1),size(ALO,2));
% 
% for i=1:size(BWalo,1)
%     for j =1:size(BWalo,2)
%         %pixel on the corner
%         if (i==1&&j==1)
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==1&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (j==1&&i==size(BWalo,1))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==size(BWalo,1)&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end    
%         end
%         
%         %pixel on the side
%         %upper line
%         if (i==1&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %bottom line
%         elseif (i==size(BWalo,1)&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %left line
%         elseif (j==1&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %right line
%         elseif(j==size(BWalo,2)&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%         %inner pixel
%         if(i>1&&j>1&&i<size(BWalo,1)&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%     end
% end
% 
% f_img0 = imresize(f_img,size(G_A0));
% 
% %step1
% Lo = ones(3)*(-1/8);
% Lo(2,2) = 1;
% ALO = conv2(GA1,Lo,'same');
% 
% % figure(6)
% % imshow(ALO)
% 
% %step2
% BWalo = im2bw(ALO,0);
% 
% 
% %step3&step4
% 
% f_img = zeros(size(ALO,1),size(ALO,2));
% 
% for i=1:size(BWalo,1)
%     for j =1:size(BWalo,2)
%         %pixel on the corner
%         if (i==1&&j==1)
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==1&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (j==1&&i==size(BWalo,1))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==size(BWalo,1)&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end    
%         end
%         
%         %pixel on the side
%         %upper line
%         if (i==1&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %bottom line
%         elseif (i==size(BWalo,1)&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %left line
%         elseif (j==1&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %right line
%         elseif(j==size(BWalo,2)&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%         %inner pixel
%         if(i>1&&j>1&&i<size(BWalo,1)&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%     end
% end
% 
% f_img1 = imresize(f_img,size(GA1));
% 
% %step1
% Lo = ones(3)*(-1/8);
% Lo(2,2) = 1;
% ALO = conv2(GA2,Lo,'same');
% 
% % figure(6)
% % imshow(ALO)
% 
% %step2
% BWalo = im2bw(ALO,0);
% 
% 
% %step3&step4
% 
% f_img = zeros(size(ALO,1),size(ALO,2));
% 
% for i=1:size(BWalo,1)
%     for j =1:size(BWalo,2)
%         %pixel on the corner
%         if (i==1&&j==1)
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==1&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (j==1&&i==size(BWalo,1))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==size(BWalo,1)&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end    
%         end
%         
%         %pixel on the side
%         %upper line
%         if (i==1&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %bottom line
%         elseif (i==size(BWalo,1)&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %left line
%         elseif (j==1&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %right line
%         elseif(j==size(BWalo,2)&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%         %inner pixel
%         if(i>1&&j>1&&i<size(BWalo,1)&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%     end
% end
% 
% f_img2 = imresize(f_img,size(G_A0));
% 
% %step1
% Lo = ones(3)*(-1/8);
% Lo(2,2) = 1;
% ALO = conv2(GA3,Lo,'same');
% 
% % figure(6)
% % imshow(ALO)
% 
% %step2
% BWalo = im2bw(ALO,0);
% 
% 
% %step3&step4
% 
% f_img = zeros(size(ALO,1),size(ALO,2));
% 
% for i=1:size(BWalo,1)
%     for j =1:size(BWalo,2)
%         %pixel on the corner
%         if (i==1&&j==1)
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==1&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (j==1&&i==size(BWalo,1))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==size(BWalo,1)&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end    
%         end
%         
%         %pixel on the side
%         %upper line
%         if (i==1&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %bottom line
%         elseif (i==size(BWalo,1)&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %left line
%         elseif (j==1&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %right line
%         elseif(j==size(BWalo,2)&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%         %inner pixel
%         if(i>1&&j>1&&i<size(BWalo,1)&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%     end
% end
% 
% f_img3 = imresize(f_img,size(G_A0));
% 
% %step1
% Lo = ones(3)*(-1/8);
% Lo(2,2) = 1;
% ALO = conv2(GA4,Lo,'same');
% 
% % figure(6)
% % imshow(ALO)
% 
% %step2
% BWalo = im2bw(ALO,0);
% 
% 
% %step3&step4
% 
% f_img = zeros(size(ALO,1),size(ALO,2));
% 
% for i=1:size(BWalo,1)
%     for j =1:size(BWalo,2)
%         %pixel on the corner
%         if (i==1&&j==1)
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==1&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (j==1&&i==size(BWalo,1))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==size(BWalo,1)&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end    
%         end
%         
%         %pixel on the side
%         %upper line
%         if (i==1&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %bottom line
%         elseif (i==size(BWalo,1)&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %left line
%         elseif (j==1&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %right line
%         elseif(j==size(BWalo,2)&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%         %inner pixel
%         if(i>1&&j>1&&i<size(BWalo,1)&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%     end
% end
% 
% f_img4 = imresize(f_img,size(G_A0));
% 
% %step1
% Lo = ones(3)*(-1/8);
% Lo(2,2) = 1;
% ALO = conv2(GA5,Lo,'same');
% 
% % figure(6)
% % imshow(ALO)
% 
% %step2
% BWalo = im2bw(ALO,0);
% 
% 
% %step3&step4
% 
% f_img = zeros(size(ALO,1),size(ALO,2));
% 
% for i=1:size(BWalo,1)
%     for j =1:size(BWalo,2)
%         %pixel on the corner
%         if (i==1&&j==1)
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==1&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (j==1&&i==size(BWalo,1))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==size(BWalo,1)&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end    
%         end
%         
%         %pixel on the side
%         %upper line
%         if (i==1&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %bottom line
%         elseif (i==size(BWalo,1)&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %left line
%         elseif (j==1&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %right line
%         elseif(j==size(BWalo,2)&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%         %inner pixel
%         if(i>1&&j>1&&i<size(BWalo,1)&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%     end
% end
% 
% f_img5 = imresize(f_img,size(G_A0));
% 
% %step1
% Lo = ones(3)*(-1/8);
% Lo(2,2) = 1;
% ALO = conv2(GA6,Lo,'same');
% 
% % figure(6)
% % imshow(ALO)
% 
% %step2
% BWalo = im2bw(ALO,0);
% 
% 
% %step3&step4
% 
% f_img = zeros(size(ALO,1),size(ALO,2));
% 
% for i=1:size(BWalo,1)
%     for j =1:size(BWalo,2)
%         %pixel on the corner
%         if (i==1&&j==1)
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==1&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (j==1&&i==size(BWalo,1))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==size(BWalo,1)&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end    
%         end
%         
%         %pixel on the side
%         %upper line
%         if (i==1&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %bottom line
%         elseif (i==size(BWalo,1)&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %left line
%         elseif (j==1&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %right line
%         elseif(j==size(BWalo,2)&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%         %inner pixel
%         if(i>1&&j>1&&i<size(BWalo,1)&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%     end
% end
% 
% f_img6 = imresize(f_img,size(G_A0));
% 
% %step1
% Lo = ones(3)*(-1/8);
% Lo(2,2) = 1;
% ALO = conv2(GA7,Lo,'same');
% 
% % figure(6)
% % imshow(ALO)
% 
% %step2
% BWalo = im2bw(ALO,0);
% 
% 
% %step3&step4
% 
% f_img = zeros(size(ALO,1),size(ALO,2));
% 
% for i=1:size(BWalo,1)
%     for j =1:size(BWalo,2)
%         %pixel on the corner
%         if (i==1&&j==1)
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==1&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (j==1&&i==size(BWalo,1))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==size(BWalo,1)&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end    
%         end
%         
%         %pixel on the side
%         %upper line
%         if (i==1&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %bottom line
%         elseif (i==size(BWalo,1)&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %left line
%         elseif (j==1&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %right line
%         elseif(j==size(BWalo,2)&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%         %inner pixel
%         if(i>1&&j>1&&i<size(BWalo,1)&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%     end
% end
% 
% f_img7 = imresize(f_img,size(G_A0));
% 
% %step1
% Lo = ones(3)*(-1/8);
% Lo(2,2) = 1;
% ALO = conv2(GA8,Lo,'same');
% 
% % figure(6)
% % imshow(ALO)
% 
% %step2
% BWalo = im2bw(ALO,0);
% 
% 
% %step3&step4
% 
% f_img = zeros(size(ALO,1),size(ALO,2));
% 
% for i=1:size(BWalo,1)
%     for j =1:size(BWalo,2)
%         %pixel on the corner
%         if (i==1&&j==1)
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==1&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (j==1&&i==size(BWalo,1))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         elseif (i==size(BWalo,1)&&j==size(BWalo,2))
%             if (BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end    
%         end
%         
%         %pixel on the side
%         %upper line
%         if (i==1&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i+1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %bottom line
%         elseif (i==size(BWalo,1)&&j>1&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %left line
%         elseif (j==1&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j+1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         %right line
%         elseif(j==size(BWalo,2)&&i>1&&i<size(BWalo,1))
%             if(BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j-1))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%         %inner pixel
%         if(i>1&&j>1&&i<size(BWalo,1)&&j<size(BWalo,2))
%             if(BWalo(i,j)~=BWalo(i+1,j+1)||BWalo(i,j)~=BWalo(i-1,j-1)||BWalo(i,j)~=BWalo(i+1,j-1)||BWalo(i,j)~=BWalo(i-1,j+1)||BWalo(i,j)~=BWalo(i,j-1)||BWalo(i,j)~=BWalo(i,j+1)||BWalo(i,j)~=BWalo(i-1,j)||BWalo(i,j)~=BWalo(i+1,j))
%                 f_img(i,j) = edgedtc(ALO,i,j);
%             end
%         end
%     end
% end
% 
% f_img8 = imresize(f_img,size(G_A0));
% 
% figure(3)
% subplot(3,3,1),imshow(f_img0,[])
% subplot(3,3,2),imshow(f_img1,[])
% subplot(3,3,3),imshow(f_img2,[])
% subplot(3,3,4),imshow(f_img3,[])
% subplot(3,3,5),imshow(f_img4,[])
% subplot(3,3,6),imshow(f_img5,[])
% subplot(3,3,7),imshow(f_img6,[])
% subplot(3,3,8),imshow(f_img7,[])
% subplot(3,3,9),imshow(f_img8,[])








