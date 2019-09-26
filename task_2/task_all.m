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

function [x, fx] = fun_10(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (sqrt(2 + 3 * x) * log(1 + 3 * x ^ 2)), x);
  if nargout < 2
        x = []
        x(:, 1) = [a : h : b]
        x(:, 2) = fx
  end
endfunction

function [x, fx] = fun_14(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (x ^ 3 - 3 * x + 8 / sqrt(1 + x ^ 2)), x);
  if nargout < 2
        x = []
        x(:, 1) = [a : h : b]
        x(:, 2) = fx
  end
endfunction

function [x, fx] = fun_21(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (asin(e ^ -(x ^ 2 / 5))), x);
  if nargout < 2
        x = []
        x(:, 1) = [a : h : b]
        x(:, 2) = fx
  end
endfunction

fun_3(0, 1.6, 0.16)
fun_10(-0.1, 0.9, 0.1)
fun_14(0, 1.7, 0.17)
fun_21(8, 13, 0.5)