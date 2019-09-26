function [x, f1] = draw_1()
  x = [-2 * pi : 0.05 : 2 * pi];
  
  f1 = arrayfun(@(x) tan(x), x);
  
  fplot(@tan, [-2 * pi, 2 * pi]);
  set (gca, 'ylim', [-10 10]) 
  title('tan(x)');
  xlabel('x');
  ylabel('y');

  if nargout < 2
        x = [];
        x(:, 1) = [x1 : 0.05 : x2];
        x(:, 2) = f1;
  end
endfunction