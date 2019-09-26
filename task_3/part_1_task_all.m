a = 0
b = 1.6
h = 0.16

function [x, fx] = fun_3(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (2 * e ^ x)/(2 * pi + x ^ 3), x);
  if nargout < 2
        x = [];
        x(:, 1) = [a : h : b];
        x(:, 2) = fx;
  end
endfunction


function [x, fx] = fun_10(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (sqrt(2 + 3 * x) * log(1 + 3 * x ^ 2)), x);
  if nargout < 2
        x = [];
        x(:, 1) = [a : h : b];
        x(:, 2) = fx;
  end
endfunction

function [x, fx] = fun_14(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (x ^ 3 - 3 * x + 8 / sqrt(1 + x ^ 2)), x);
  if nargout < 2
        x = [];
        x(:, 1) = [a : h : b];
        x(:, 2) = fx;
  end
endfunction

function [x, fx] = fun_21(a, b, h)
  x = [a : h : b];
  fx = arrayfun(@(x) (asin(e ^ -(x ^ 2 / 5))), x);
  if nargout < 2
        x = [];
        x(:, 1) = [a : h : b];
        x(:, 2) = fx;
  end
endfunction


[x, y] = fun_21(-6, 6, 0.1)
figure()
plot(x, y)
title('asin(e ^ -(x ^ 2 / 5))')
xlabel('x')
ylabel('y')


[x, y] = fun_14(-5, 5, 0.1)
figure()
plot(x, y)
title('x ^ 3 - 3 * x + 8 / sqrt(1 + x ^ 2)')
xlabel('x')
ylabel('y')


[x, y] = fun_10(-1, 5, 0.1)
figure()
plot(x, y)
title('sqrt(2 + 3 * x) * log(1 + 3 * x ^ 2)')
xlabel('x')
ylabel('y')

[x, y] = fun_3(0, 12, 0.1)
figure()
plot(x, y)
title('(2 * e ^ x)/(2 * pi + x ^ 3)')
xlabel('x')
ylabel('y')