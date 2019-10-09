in = fopen('input_task_1.txt','rt');


n = fscanf(in, "%d", 1)
data = dlmread(in, " ", 1, 0)
A = data(1:n, 1:n)
B = data(:, n + 1)

X = A \ B

if (A * X == B)
  "X is correct"
else
  "X is not correct"
endif
