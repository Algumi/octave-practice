## Copyright (C) 2019 alex_
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} chord_method (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: alex_ <alex_@DESKTOP>
## Created: 2019-10-13

function [x0, fx0] = chord_method (fx, a, b, e)
  if sign(fx(a)) == sign(fx(b))
    x0 = "no roots";
    fx0 = "no roots";
    return;
  endif
  fa = fx(a);
  c = a - (b - a) / (fx(b) - fa) * fa;
  fc = fx(c);
  while (abs(fc) >= e)
    if (fa * fc < 0)
      b = c;
    else
      a = c;
    endif
    fa = fx(a);
    c = a - (b - a) / (fx(b) - fa) * fa;
    fc = fx(c);
  endwhile
  x0 = c;
  fx0 = fx(c);
endfunction
