%%
t = 0:.2:4*pi;
x = 3*(cos(t) - cos(3*t)/3);
y = 3*(sin(t) - sin(3*t)/3);
z = 3*t;
plot3(x,y,z), grid on
D = [x',y',z'];
dlmwrite('cdata1.csv', D, ',');

%%
t = 0:.1:10*pi;
x = 3*(cos(t) - cos(3*t)/3);
y = 3*(sin(t) - sin(3*t)/3);
z = 3*t;
plot3(x,y,z), grid on
D = [x',y',z'];
dlmwrite('cdata2.csv', D, ',');

%%
t = 0:.2:10*pi;
x = 15*cos(t) - 5*cos(3*t);
y = 15*sin(t) - 2*sin(3*t);
z = 15*t;
plot3(x,y,z), grid on
D = [x',y',z'];
dlmwrite('cdata3.csv', D, ',');

%%
[x, y] = meshgrid(linspace(0, 3, 64), linspace(0, 1, 41));
z = -(1-cos(4*pi*y)).^(1/4).*(1-cos(2*pi*x)).^(1/4);
meshc(x, y, z);
%[C, H] = contour(x, y, z);
%clabel(C, H)

%%
[x, y] = meshgrid(linspace(-1, 1, 31));
z = exp(-sqrt(x.^2+y.^2)).*cos(4*x).*cos(4*y);
%contour(x, y, z);
meshc(x, y, z);

%%
[r, theta] = meshgrid(linspace(0, 1.7, 60), linspace(0, 2*pi, 73));
x = r.*cos(theta);
y = r.*sin(theta);
z = exp(-r).*cos(4*x).*cos(4*y);
meshc(x, y, z);
