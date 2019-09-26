a = 0
b = 1.6
h = 0.16

function [x, fx] = fun_14(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (x ^ 3 - 3 * x + 8 / sqrt(1 + x ^ 2)), x);
  if nargout < 2
        x = []
        x(:, 1) = [a : h : b]
        x(:, 2) = fx
  end
endfunction

fun_14(0, 1.7, 0.17)