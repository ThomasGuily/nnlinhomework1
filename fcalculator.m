## Copyright (C) 2018 ThomasGuily
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
## @deftypefn {} {@var{retval} =} fcalculator (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThomasGuily <ThomasGuily@THOMASGUILY-PC>
## Created: 2018-11-19

function [f,delta] = fcalculator (Q, x0, c, p)

  a= size(x0);
  n = a(2);
  f = (x0*Q*x0') - (c * x0') + p ;
   %  ^ c parait etre l'envers mais c'est juste la definition dans Octave.
  delta = (Q*x0')- c'; 
  % ^ pareil, ici normalement c'devrait etre c
 
endfunction
