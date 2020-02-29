%%
syms u(x) v(x);
d_uv = diff(u(x)*v(x))
%%
syms x;
diff(x*cos(x))
%%
x = linspace(-5,5,100);
a = -1;
plot(x, exp(a*x.^2)), grid on
title(['y = exp(',num2str(a),'x^2)'])
