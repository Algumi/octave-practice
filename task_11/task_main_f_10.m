f_10 = @(x, y) [y(2), -2 * y(2) + sqrt(y(1) ^ 3 + x ^ 2)];

y0 = [0.3, 1];
a = 0.3;
b = 3;
h = 0.1;

x = a : h : b;

ans_f_10_1 = [];
for i = x
  ans_f_10_1 = [ans_f_10_1; [y0(1), y0(2)]];
  y0 = runge_kutta_4(f_10, i, y0, h);
endfor
ans_f_10_1


y0 = [0.3, 1];
ans_f_10_2 = [];
for i = x
  ans_f_10_2 = [ans_f_10_2; [y0(1), y0(2)]];
  y0 = runge_kutta_3(f_10, i, y0, h);
endfor

length(x)
length(ans_f_10_1)
subplot(2, 2, 1)
xlabel('x');
ylabel('y');
plot(x, ans_f_10_1)
title('runge kutta 4')

subplot(2, 2, 2)
xlabel('x');
ylabel('y');
plot(x, ans_f_10_2)
title('runge kutta 3')

[T, Y] = ode23(f_10, x, [0.3, 1]);
subplot(2, 2, 3)
xlabel('x');
ylabel('y');
plot(T, Y)
title('ode23')