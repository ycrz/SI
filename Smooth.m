%SMOOTHING IMAGES

close all
clear all
clc
%%%%
axes('Position',[0.5,1.05,0.08,0.08])
xlabel('SMOOTHING IMAGES - YCRZ');
%%%%
image = imread('pears.png');
subplot(2,2,1);
imshow(image);
title('Original Pears');
%%%%
avgimage = imfilter(image,fspecial('average',[3 3]));
subplot(2,2,2);
imshow(avgimage);
title('Average Pears');
%%%%
[height, width, depth] = size(avgimage);
if(depth>1)
    gray = rgb2gray(avgimage);
end
subplot(2,2,3);
imshow(gray);
title('Gray Picture');
%%%%
doublegradient = double(gray);
[Px,Py] = gradient(doublegradient);
gequation = sqrt(Px.*Px + Py.*Py);
gray = gequation;
gray = uint8(gray);
subplot(2,2,4);
imshow(gray);
title('Gradient');
%%%%

%This Program is Originaly Developed by Yosua Christianov. Any use of the
%%codes in this program or the images are permited and code lisence : CC
%%%https://creativecommons.org/licenses/by/3.0/deed.en_US
%%%%This Program is already submited to https://github.com/YCRZ