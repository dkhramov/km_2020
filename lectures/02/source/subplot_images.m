% �������� ��������
A = imread('lena.png');

% Red
subplot(2,2,1), imshow(A(:,:,1))
% Green
subplot(2,2,2), imshow(A(:,:,2))
% ��������� ������ ����� �����
A(:,:,[1,2]) = [];
subplot(2,2,3), imshow(A);
% ���������� �� ������
subplot(2,2,4), plot(-pi:.1:pi, sin(-pi:.1:pi));
