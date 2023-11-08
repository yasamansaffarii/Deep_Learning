clc;
clear all;
close all;

x = -4:.1:6; 
y = -4:.1:4;

mu = [-1,0];
sigma = [1.2 0; 0 1.8]; 
 
mu1 = [3,0];
sigma1 = [1.2 0; 0 1.8]; 
 
[X,Y] = meshgrid(x,y); 

Z = mvnpdf([X(:) Y(:)],mu,sigma); 
Z1 = mvnpdf([X(:) Y(:)],mu1,sigma1);
Z2=Z1+Z;
Z2 = reshape(Z2,size(X)); 
subplot(2,2,1); surf(X,Y,Z2); title('surf');
subplot(2,2,2); contour(X,Y,Z2,20); title('contour');
subplot(2,2,3); contour3(X,Y,Z2,20); title('contour3d');
 
