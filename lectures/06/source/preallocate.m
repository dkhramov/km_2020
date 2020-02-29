%%
clear; 
n = 1000000;
a(1) = 1;
b(1) = 0;
tic
for k = 2:n
a(k) = 0.99803 * a(k - 1) - 0.06279 * b(k - 1);
b(k) = 0.06279 * a(k - 1) + 0.99803 * b(k - 1);
end
elapsed_time = toc
%%
clear; 
n = 1000000;
a = zeros(1,n); % Preallocation
b = zeros(1,n);
a(1) = 1;
b(1) = 0;
tic
for k = 2:n
a(k) = 0.99803 * a(k - 1) - 0.06279 * b(k - 1);
b(k) = 0.06279 * a(k - 1) + 0.99803 * b(k - 1);
end
elapsed_time = toc