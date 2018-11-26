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
## @deftypefn {} {@var{retval} =} QuadFunctionGenerator (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThomasGuily <ThomasGuily@THOMASGUILY-PC>
## Created: 2018-11-19

function [Q, x0, c, p] = quadfunctiongenerator (n, choix)

%fonction reprise des sï¿½ances d'exercices
%(x+y)^2
if (choix == 0)
  Q = [2,1 ; 1,2]
  x0 = [1, 1]
  c = [0,0]
  p = 0
  A = [];
  b = [];
  fprintf ('La fonction (x+y)^2 est minimisée : \n');

  
  %fonction minimisant ||Ax-b||_2^2)
else 
  A = [1,1 ; 1, 1] ;
  x0 = [1,1] ; 
  b = [0,0] ;
  Q = 0.5*A'*A;
  c = b*A;
  p = 0.5*b*b';  
  fprintf ('La fonction ||Ax-b||_2^2 est minimisée : \n');
  

endif



endfunction

