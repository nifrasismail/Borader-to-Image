I=imread('lenna.JPG');

if length(size(I)) == 3
    I=rgb2gray(I);
end

[row,col]=size(I);
J=zeros(row+4,col+4);
J(3:row+2,3:col+2) = I;
J=uint8(J);
subplot(1,2,1);imshow(I);
subplot(1,2,2);imshow(J);
