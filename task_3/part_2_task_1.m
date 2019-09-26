function [x, f1, f2] = draw_2()
  x1 = input("x1 = ");
  x2 = input("x2 = ");
  if x1 > x2
    "Incorrect interval"
    return;
  end
  x = [x1 : 0.05 : x2];
  
  f1 = arrayfun(@(x) 2 * sin(x), x);
  f2 = arrayfun(@(x) sin(x + pi / 2), x);
  
  plot(x, f1, "^g", x, f2, "sm");
  title('2 * sin(x) and sin(x + pi / 2)');
  xlabel('x');
  ylabel('y');

  if nargout < 2
        x = [];
        x(:, 1) = [x1 : 0.05 : x2];
        x(:, 2) = f1;
        x(:, 3) = f2;
  end
endfunction