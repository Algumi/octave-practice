function [x, f1, f2] = draw_2()
  x1 = input("x1 = ");
  x2 = input("x2 = ");
  if x1 > x2
    "Incorrect interval"
    return;
  end
  x = [x1 : 0.05 : x2];
  
  f1 = arrayfun(@(x) x ^ 3, x);
  f2 = arrayfun(@(x) (-x) ^ 3, x);
  
  subplot(1, 2, 1)
  plot(x, f1, "g");
  title('x ^ 3');
  xlabel('x');
  ylabel('y');
  
  subplot(1, 2, 2)
  plot(x, f2, "m");
  title('- x ^ 3');
  xlabel('x');
  ylabel('y');

  if nargout < 2
        x = [];
        x(:, 1) = [x1 : 0.05 : x2];
        x(:, 2) = f1;
        x(:, 3) = f2;
  end
endfunction