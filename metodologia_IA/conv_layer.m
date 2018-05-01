clear all;
close all;
clc;

%% Prepare variable for processing
img = imread('dog.jpg');
grayImg = rgb2gray(img);
filter = [-1, 0, 1;
    -2, 0, 2;
    -1, 0, 1];

%% Processing image
convImg = imfilter(grayImg, filter, 'conv');

%% Show results
figure();
subplot(1, 2, 1);
imshow(grayImg);
title('Imagen original');
subplot(1, 2, 2);
imshow(convImg);
title('Imagen convolucionada');