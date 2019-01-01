% Name: John W. Martin
% Due Date: October 29, 2018
% Course: Intro to Machine Learning
% Instructor: Daniel Pimentel-Alarcon
% Homework 3

% Read original image
original_img = imread('20180531_132756.jpg');
original_img = imrotate(original_img, 90); % Rotate 90 degrees
figure, imshow(original_img); % Show image
title('Original Image'); % Show image title

grayscale_img = rgb2gray(original_img); % Convert to grayscale
figure, imshow(grayscale_img); % Display grayscale image
title('Grayscale'); % Give title to grayscale image

bw_img_1 = im2bw(grayscale_img, 0.25); % Convert to black-and-white using .25 threshold
figure, subplot(1, 3, 1), imshow(bw_img_1); % Display black-and-white image
title('Black and white image 1 (0.25 threshold)'); % Give title

bw_img_2 = im2bw(grayscale_img, 0.5); % Convert to black-and-white using .5 threshold
subplot(1, 3, 2), imshow(bw_img_2); % Display image
title('Black and white image 2 (0.50 threshold)'); % Give title

bw_img_3 = im2bw(grayscale_img, 0.75); % Convert to black-and-white using .75 threshold
subplot(1, 3, 3), imshow(bw_img_3); % Display image
title('Black and white image 3 (0.75 threshold)'); % Give title

% Generate 4 random numbers for a rectangle's coordinates, width, and
% height for image
rand_x = randi(1500);
rand_y = randi(1500);
rand_width = randi(1500);
rand_height = randi(1500);

% Crop image from grayscale according to random numbers generated
sub_image = imcrop(grayscale_img, [rand_x rand_y rand_width rand_height]);
figure, imshow(sub_image); % Show sub-image
title('Randomly generated sub-image from grayscale image');

% Resize sub-image to 512 x 512
sub_image_resize = imresize(sub_image, [512 512]);
figure, imshow(sub_image_resize); % Display resized image
title('Sub-image resized to 512x512 image');