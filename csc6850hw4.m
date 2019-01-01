% Name: John W. Martin
% Due Date: November 5, 2018
% Intro to Machine Learning
% Instructor: Daniel Pimentel-Alarcon
% Homework 4

% Load dataset of images
dataset = 'C:\Users\JackHammer\Documents\Bacteria Dataset\';
imgs = dir(fullfile(dataset, '*.jpg'));

% Generate random image from dataset
random = randi([1 size(imgs, 1)]);
rand_img = imgs(random).name;

% Load and read image x0, our randomly generated image
x_0 = imread(rand_img);
figure, imshow(x_0);

% Transform image to grayscale, and display it
x_gray = rgb2gray(x_0);
figure, imshow(x_gray);

% Rescale grayscale image to 28x28 and display
x_28 = imresize(x_gray, [28 28]);
figure, imshow(x_28);

% Convert 28x28 image to vector
x_i = x_28(:);

% Load excel file, load row containing selected image, and store in vector
excel_data = xlsread('Perron_phenotype-GSU-training.csv');

data_len = length(excel_data);

dash_loc = strfind(rand_img, '-'); % Find location of first dash
underscore_loc = strfind(rand_img, '_'); % Location of underscore

% Extract strain number from filename
img_strain_num = rand_img(dash_loc + 1:underscore_loc - 1);
img_strain_num = str2num(img_strain_num);

% Get row containing image
ind_strain = find(excel_data == img_strain_num);

% Store row containing image in vector
y_i = excel_data(ind_strain, :);

% Get size of vector and print, output gives [1, 27]
y_i_size = size(y_i);
disp(y_i_size);