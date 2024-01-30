clc
clear

church = double(imread('church.png'));
windows = double(imread('window.png'));

church = church-mean(church(:));
windows = windows - mean(windows(:));

pp= fliplr(flipud(windows));
r=conv2(church,pp,'same');
imagesc(r)
colorbar('north')