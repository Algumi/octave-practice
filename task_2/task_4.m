a = 0
b = 1.6
h = 0.16

function [x, fx] = fun_21(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (asin(e ^ -(x ^ 2 / 5))), x);
  if nargout < 2
        x = []
        x(:, 1) = [a : h : b]
        x(:, 2) = fx
  end
endfunction

fun_21(8, 13, 0.5)