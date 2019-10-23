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
## @deftypefn {} {@var{retval} =} bisection_method (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: alex_ <alex_@DESKTOP>
## Created: 2019-10-13


function [x0, fx0] = bisection_method (fx, a, b, e)
  if (fx(a) * fx(b) > 0)
    x0 = "no roots";
    fx0 = "no roots";
    return;
  endif
  c = (a + b) / 2;
  fc = fx(c);
  i = 0;
  while (abs(fc) >= e)
    fa = fx(a);
    if ((fa * fc) < 0)
      b = c;
    else
      a = c;
    endif
    c = (a + b) / 2;
    fc = fx(c);
  endwhile
  x0 = c;
  fx0 = fx(c);
endfunction
