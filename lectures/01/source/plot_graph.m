dat = csvread('ebola2014.csv', 1, 1);
plot(dat)
legend('Guinea', 'Liberia', 'Sierra Leone')
grid on