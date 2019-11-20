function retval = runge_kutta_4 (func, x, pvi, h)
    K1 = h * func(x, pvi);
    K2 = h * func(x + 0.5 * h, pvi + 0.5 * K1);
    K3 = h * func(x + h, pvi + 2 * K2 - K1);
    retval = pvi + (K1 + 4 * K2 + K3) / 6;
endfunction
