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

[x, y] = fun_3(0, 12, 0.1)
plot(x, y)
title('(2 * e ^ x)/(2 * pi + x ^ 3)')
xlabel('x')
ylabel('y')
