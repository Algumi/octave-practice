f = @(x) cos(2 * x) + sin(x);

a = 0;
b = 3;
h = 0.1;
x = a : h : b;
y = arrayfun(f, x);


pkg load symbolic;
syms sym_x;
dy_f = diff(f(sym_x))
dy = arrayfun(function_handle(dy_f), x)


dy_l = [];
for i = 2 : length(x)
  tmp = (f(x(i)) - f(x(i - 1))) / h;
  dy_l = [dy_l tmp];
endfor

dy_r = [];
for i = 1 : length(x) - 1
  tmp = (f(x(i + 1)) - f(x(i))) / h;
  dy_r = [dy_r tmp];
endfor

dy_c = [];
for i = 2 : length(x) - 1
  tmp = (f(x(i + 1)) - f(x(i - 1))) / (2 * h);
  dy_c = [dy_c tmp];
endfor


figure()
xlabel('x');
ylabel('y');
plot(x, double(dy), ";dy;", x([2:end]), dy_l,";dy_l;",
     x([1:end - 1]), dy_r, ";dy_r;", x([2:end - 1]),
     dy_c, ";dy_c;")
     
     

h_1 = 0.2;
x_1 = a : h_1 : b;
y_1 = arrayfun(f, x_1);

dy_c2 = [];
for i = 2 : length(x_1) - 1
  tmp = (f(x_1(i + 1)) - f(x_1(i - 1))) / (2 * h_1);
  dy_c2 = [dy_c2 tmp];
endfor


dy_cR = [];
k = 2;
p = 2;
dy_c0 = dy_c([2:2:end - 1]);
for i = 1 : length(dy_c2)
  tmp = dy_c0(i) + (dy_c0(i) - dy_c2(i)) / (k ^ p - 1);
  dy_cR = [dy_cR tmp];
endfor


e1 = [];
for i = 2 : 2 : length(dy_c)
  tmp = abs(dy_c(i) - dy(i + 1));
  e1 = [e1 tmp];
endfor

e2 = [];
dy0 = dy([3:2:end - 2]);
for i = 1:length(dy_cR)
  t = abs(dy_cR(i) - dy0(i));
  e2 = [e2 t];
endfor


figure()
xlabel('x');
ylabel('y');
plot([0.2:0.2:2.8], e1, [0.2:0.2:2.8], e2)
legend ({'|dy_c - dy|', '|dy_cR - dy|'});