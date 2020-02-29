h = 0.01;
x = 1:h:2;
%sum(x.^2*h)
left = sum(x(1:end-1).^2*h);
right = sum(x(2:end).^2*h);
mid = (left + right)/2
