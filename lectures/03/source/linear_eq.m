%% ����������� �������

x = linspace(-5,5,100);

y = x+1;

plot(x,y), grid on, hold on
xlabel('x'), ylabel('y')
text(-2.5,1,'x - y = 1')

y1 = -2*x+4;

plot(x,y1)
text(-1,7,'2x + y = 4')

%% ��������� �������

A = [ 1 -1;
      2  1];
b = [-1; 4]; 

X = A \ b
