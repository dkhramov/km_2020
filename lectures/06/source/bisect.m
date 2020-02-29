% ���������
f = @(x) x.^3-1.1*x.^2-2.2*x+1.8;
% ����� � ������ ������� ��������� ������ �����
a = -1.5; b = -1;
% ��������
delta = 1e-4;

%root = fzero(f, [-1.5 -1])

x = linspace(a,b,100);
plot(x,f(x)),grid on,hold on

ya=f(a);
yb=f(b);

if ya*yb > 0, error('������'), end

while b-a >= delta
	c = (a+b)/2;
	yc = f(c);
	if yc == 0
		a = c;
		b = c;
	elseif yb*yc>0
		b = c;
		yb = yc;
	else
		a = c;
		ya = yc;
	end
end

% ������
root = (a+b)/2
% ������ ����������� �����
error = abs(b-a)
