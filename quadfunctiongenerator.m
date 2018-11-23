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

%fonction reprise des s�ances d'exercices
%(x+y)�-(2x+4)�+(y-2)�
if (choix == 0)
  Q = [2,1 ; 1,2];
  x0 = [1, 1];
  c = [0,0];
  p = 0;
  
  fprintf ('La fonction (x+y)�-(2x+4)�+(y-2)� est caract�ris�e par :');

  
  %fonction est g�n�r�e al�atoirement
elseif (choix == 1)
  Q = 0;
  x0 = 1;
  c = 2 ; 
  p = 4 ; 
  
  %coefficients rentr�s par l'utilisateur
else
  Q = 0;
  x0 = 1;
  c = 2 ; 
  p = 4 ; 
endif








endfunction

