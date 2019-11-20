f_3 = @(x, y) sin(x) - cos(y);


y0 = 1;
a = 0;
b = 10;
h = 0.1;

x = a : h : b;

ans_f_3_1 = [];
for i = x
  ans_f_3_1 = [ans_f_3_1 y0];
  y0 = runge_kutta_4(f_3, i, y0, h);
endfor

y0 = 1;
ans_f_3_2 = [];
for i = x
  ans_f_3_2 = [ans_f_3_2 y0];
  y0 = runge_kutta_3(f_3, i, y0, h);
endfor

# pkg load symbolic;
# syms x y(x)
# de = diff(y, x) == sin(x) - cos(x);
# ans = dsolve(de)

subplot(2, 2, 1)
xlabel('x');
ylabel('y');
plot(x, ans_f_3_1)
title('runge kutta 4')

subplot(2, 2, 2)
xlabel('x');
ylabel('y');
plot(x, ans_f_3_2)
title('runge kutta 3')

[T, Y] = ode23(f_3, x, 1);
subplot(2, 2, 3)
xlabel('x');
ylabel('y');
plot(T, Y)
title('ode23')