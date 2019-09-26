a = 0
b = 1.6
h = 0.16

function [x, fx] = fun_3(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (2 * e ^ x)/(2 * pi + x ^ 3), x);
  if nargout < 2
        x = []
        x(:, 1) = [a : h : b]
        x(:, 2) = fx
  end
endfunction

fun_3(0, 1.6, 0.16)