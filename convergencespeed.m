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
## @deftypefn {} {@var{retval} =} convergencespeed (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThomasGuily <ThomasGuily@THOMASGUILY-PC>
## Created: 2018-11-26

function convergencespeed (x, z)
  for i = 1 : size(x)(1)-1
    
    C(i) =  ((((x(i+1,1) - x(size(x)(1),1))^2 + (x(i+1,2) - x(size(x)(1),2))^2))/(((x(i,1) - x(size(x)(1),1))^2 + (x(i,2) - x(size(x)(1),2))^2)))^0.5;
  endfor
  m = linspace(1, size(x)(1)-1,size(x)(1)-1);
  figure 
  plot(m, C,'r');
  hold on;
endfunction
