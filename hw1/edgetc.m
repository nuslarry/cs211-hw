%step4
%A is second order derivative image
%x = the ith pixel is edge pixel
%y = the jth pixel is edge pixel
function[Y]=edgedtc(A,x,y)
Az = padarray(A,[1 1]);
temp = zeros(3);
for i=1:3
    for j=1:3
        temp(i,j)= Az(x+i-1,y+j-1);
    end
end
V=mean(temp(:).^2)-(mean(temp(:)))^2;
if V<0.005
    %0.02
    %0.0005
    %0.0007
    Y=1;
else
    Y=0;
end
end
