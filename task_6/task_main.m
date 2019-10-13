warning("off");

fx3 = @(x) x ^ 3 - 9 * x ^ 2 + 5 * x - 6;
fx17 = @(x) x ^ 2 + log(x) - 4;


subplot(2, 1, 1)
fplot(fx3, [-7, 15])
xlabel('x');
ylabel('y')
title('task 3');

subplot(2, 1, 2)
fplot(fx17, [-5, 5])
xlabel('x');
ylabel('y');
title('task 17');


[x_3_b, fx0_3_b] = bisection_method(fx3, 0, 10, 0.00001)
display("\n");
[x_17_b, fx0_17_b] = bisection_method(fx17, -100, 100, 0.00001)

display("\n");
[x_3_c, fx0_3_c] = chord_method(fx3, 0, 10, 0.00001)
display("\n");
[x_17_c, fx0_17_c] = chord_method(fx17, 1, 10, 0.00001)

display("\n");
[x, xval, info, out] = fzero(fx3, [0, 10])
[x, xval, info, out] = fzero(fx17, [1, 10])

pkg load symbolic;
syms x;
fx3_f = fx3(x);
fx17_f = fx17(x);

display("\n");
solve(fx3_f)
solve(fx17_f)
