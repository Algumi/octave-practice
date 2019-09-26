a = 0
b = 1.6
h = 0.16

function [x, fx] = fun_10(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (sqrt(2 + 3 * x) * log(1 + 3 * x ^ 2)), x);
  if nargout < 2
        x = []
        x(:, 1) = [a : h : b]
        x(:, 2) = fx
  end
endfunction

fun_10(-0.1, 0.9, 0.1)