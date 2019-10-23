x = [-0.5, 0.0, 0.5, 1.0, 1.5];
y = [-5.15, 0.0, 1.85, 0.4, -4.3];

x_1 = [-0.5 : 0.1 : 1.5];

y_1 = [];
for i = 2:5
  x_prev = x(i - 1);
  x_cur = x(i);
  
  a = (y(i) - y(i - 1)) / (x_cur - x_prev);
  b = y(i - 1) - a * x_prev;
  for j = x_prev : 0.1 : (x_cur - 0.1)
    y_1 = [y_1; a * j + b];
  endfor
endfor
y_1 = [y_1; y(5)];



y_2 = [];
for i = 3:2:5
  x_prev = x(i - 2);
  x_cur = x(i - 1);
  x_next = x(i);
  
  m = [x_prev ^ 2, x_prev, 1; x_cur ^ 2, x_cur, 1; x_next ^ 2, x_next, 1];
  ans = [y(i - 2); y(i - 1); y(i)];
  temp = m \ ans;
  a = temp(1);
  b = temp(2);
  c = temp(3);
  for j = x_prev : 0.1 : (x_next - 0.1)
    y_2 = [y_2; (a * j ^ 2 + b * j + c)];
  endfor
endfor
y_2 = [y_2; y(5)];


y_3_a = interp1(x, y, x_1, 'linear');
y_3_b = interp1(x, y, x_1, 'spline');

subplot(2, 2, 1)
plot(x_1, y_1)
xlabel('x');
ylabel('y')

subplot(2, 2, 2)
plot(x_1, y_2)
xlabel('x');
ylabel('y')

subplot(2, 2, 3)
plot(x_1, y_3_a)
xlabel('x');
ylabel('y')

subplot(2, 2, 4)
plot(x_1, y_3_b)
xlabel('x');
ylabel('y')