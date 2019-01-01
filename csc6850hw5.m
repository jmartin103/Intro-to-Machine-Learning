% Name: John W. Martin
% Due Date: November 12, 2018
% Intro to Machine Learning
% Instructor: Daniel Pimentel-Alarcon
% Homework 5

% Problem 1
p_0 = 0:0.01:1; % Probability that P = 0
p_1 = 0:0.01:1; % Probability that P = 1

[P_0, P_1] = hist(p_0, p_1); % Create histogram of probability

% Calculate entropy
H = -P_0 .* log2(P_0) + (P_1) .* log2(P_1);

plot(P_1, H); % Plot entropy (y-axis) vs. probability of 1 (x-axis)

% Problem 2
% We can conclude that the entropy is falling when P < 0.4, and then 
% rising when P >= 0.4.