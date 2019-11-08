f = @(x) cos(2 * x) + sin(x);

vec_x = 0 : 0.1 : 3
vec_y = arrayfun(f, vec_x)

pkg load symbolic;
syms x y;
dy = diff("cos(2 * x) + sin(x)", x)
vec_dy = arrayfun(function_handle(dy), vec_x)