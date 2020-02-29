n = 100;
series = 0;

for i=1:n
    series = series + 1/i^2;
end

disp(series)

series = sum(1./(1:100).^2)