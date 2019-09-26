A = zeros(5, 5)
a = [6:10]
A = diag(a)

B(1:5, 1:5) = 2
b = [1:5]
B(2, :) = b

A([1,2], :) = 5
A = A * 3
A = A.'

A = A .* A
C = A * B
E = A .* B

B = B * B
D = A + B


min(min(C))
min(min(D))

max(max(C))
max(max(D))

prod(prod(C))
prod(prod(D))

sum(sum(C))
sum(sum(D))

mean(mean(C))
mean(mean(D))