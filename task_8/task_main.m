f = @(x) (1 / (x * log(x)));

a = 1.5;
b = 3.;
h = (b - a) / 30;

x = a : h : b;
y = arrayfun(f, x);

odd_y = 0;
for i = 2 : 2 : length(y) - 1
  odd_y += y(i);
endfor 

even_y = 0;
for i = 3 : 2 : length(y) - 2
  even_y += y(i);
endfor

integral = h / 3 * (y(1) + y(length(y)) + 4 * odd_y + 2 * even_y)

ans_2 = trapz(x, y)

ans_3 = quad(f, a, b)