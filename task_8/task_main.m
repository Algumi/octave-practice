f = @(x) (1 / (x * log(x)));

a = 1.5;
b = 3.;
h = (b - a) / 30;

args = a + h : h : b - h;
fx = arrayfun(f, args);

ans_1 = h * (sum(fx) + (f(a) + f(b)) / 2)

x = a : 0.0001 : b;
y = arrayfun(f, x);
ans_2 = trapz(x, y)

ans_3 = quad(f, a, b)