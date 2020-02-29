x0 = 0; y0 = 0;
v0 = 100;
alpha = 35*pi/180;
g = 9.8;
t = linspace(0,10,100);
x = x0 + v0*t*cos(alpha);
y = y0 + v0*t*sin(alpha) - g*t.^2/2; 
plot(x,y)