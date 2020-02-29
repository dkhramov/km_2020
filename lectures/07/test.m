%% Пример
syms x
f = 4 - exp(x) - 2*x^2;
solve(f,x)
%%
x = -3:0.01:3;
y1= 4 - 2*x.^2;
y2= exp(x);
plot(x,y1,x,y2), grid on
%%
x = -3:0.01:3;
y = 4 - exp(x) - 2*x.^2;
plot(x,y), grid on
%% Задача 1
x = -3:0.01:3;
y = x.^5 - x - 2;
plot(x,y), grid on
%%
syms x real
f = x^5 - x - 2;
solve(f,x)
%% Задача 2
A = [9,-10,-1; 3,-7,8; 7,6,5];
b = [4;-3;-7];
xl = A\b
inv(A)*b
%%
syms x_1 x_2 x_3
eq1 = 9*x_1 - 10*x_2 - x_3 - 4;
eq2 = 3*x_1 - 7*x_2 + 8*x_3 + 3;
eq3 = 7*x_1 + 6*x_2 + 5*x_3 + 7;
[x_1,x_2,x_3] = solve(eq1,eq2,eq3,x_1,x_2,x_3)
xs = eval([x_1,x_2,x_3])'
%% Задача 3
syms x
f = (x^2-6*x+8)/(x^2-5*x+4);
limit(f,x,4)
%% Задача 4
syms x
f = sqrt(1-x^2);
diff(f,x)
diff(f,x,2)
%% Задача 5
int(cos(3*x))
syms a
int(x^2,-a,a)
%% Задача 6
syms x
y = taylor(f,x)
x = linspace(-1,1,100);
y1 = eval(f);
y2 = eval(y);
plot(x,y1,x,y2),grid on
%% Задача 7
syms n
f = 6/(9*n^2+12*n-5)
symsum(f,1,inf)
n = 1:100;
y = cumsum(eval(f));
plot(n,y)
