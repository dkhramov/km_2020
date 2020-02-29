%% Найти корни f(x) = 0
f = @(x) x.^3 - 5*x.^2 - x + 2;
x = linspace(-4,8,100);
plot(x,f(x)), grid on

%%
f = @(x) x.^5 + x + 1;
f = @(x) x.^3 - 5*x.^2 - x + 2;
f = @(x) x.^4 + 2*x.^3 - 4*x.^2 + 7;
% x = linspace(-2,2,100);
% plot(x,f(x)), grid on

a = -10;             % Set a lower bound for the function.
b = 10;              % Set an upper bound for the function.
n = 100;
r = NaN*ones(n,1);             % Initializes x.
starting_points = linspace(a,b,n);
for i=1:n
        % Look for the zeros in the function's current window.
        r(i) = fzero(f, starting_points(i))
end
%roots_unique = r([1;diff(r)>1e-12])

%%
f = @(x) x.^4 + 2*x.^3 - 4*x.^2 + 7;
x = linspace(-4,4,100);
plot(x,f(x)), grid on

%%

dat = importdata('data/weekly.txt');
dat.data
dat.colheaders

%%
%dat = dlmread('data/weekly.txt');
dat = dlmread('data/weekly.txt',' ',1,0);
dat = dat(:,sum(dat)~=0);

%%
chr = '0.41 8.24 3.57 6.24 9.27';
C = textscan(chr,'%f');
C = textscan(chr,'%f%f%f%f%f');

%%
fid = fopen('data/data.txt');
C = textscan(fid,'%s%f%d%s');
fclose(fid);

class(C)
for i = 1:4, disp(C{1,i}), end

%%
x = 0:.1:2*pi;
A = [x; sin(x)];
