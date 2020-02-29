t = 1:0.1:5;
e2 = exp(2*t);
%plot(t,e2), hold on % быстро растущая функция
plot(t,log(e2))
semilogy(t,e2) % прямая y = 2*t

x = 0:0.1:10;
y = exp(x);

semilogy(x,y);