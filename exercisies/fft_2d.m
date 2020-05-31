clc
clear all

%n the following exercise, you will practice the 2D FFT in MATLAB
...using some generated data. The data generated below will have the 
...correct shape already, so you should just need to use steps 3-6
...from above. You can use the following starter code:

% 2-D Transform
% The 2-D Fourier transform is useful for processing 2-D signals and other 2-D data such as images.
% Create and plot 2-D data with repeated blocks.

P = peaks(20);
X = repmat(P,[5 10]);
imagesc(X)

%get the size of the matrix
[M,N] = size(X);

%Run the 2D FFT across both the dimensions.
signal_fft = fft2(X, M, N);

% Shift zero-frequency terms to the center of the array
signal_fft = fftshift(signal_fft);

%Take the absolute value
signal_fft = abs(signal_fft);

%Here since it is a 2D output, it can be plotted as an image.
imagesc(signal_fft);
