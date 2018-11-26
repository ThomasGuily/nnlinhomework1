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

function [Q, x0, c, p] = quadfunctiongenerator (choix)

%fonction reprise des sï¿½ances d'exercices
%(x+y)^2
if (choix == 0)
  
  
  n = input ('Choix du nombre de variables: n = ');
  fprintf ('Entrer les valeures des éléments de Q, de c et de la constante p \n');
  
  for i = 1 : n
    for j = 1 : n
      fprintf('Q(%d', i),fprintf(',%d', j), Q(i,j) = input (')==>');
    endfor  
  endfor
  
  for i = 1 : n
    fprintf('c(%d', i), c(i) = input (')==>');
  endfor
  p = input ('p ==>');
  
  fprintf ('Entrer les valeures de litérée initiale \n');
  
  for i = 1 : n
    fprintf('x0(%d', i), x0(i) = input (')==>');
  endfor
  
  fprintf ('le problème est carctérisé par: \n');
  Q , c, p, x0 
  

  

  
  %fonction minimisant ||Ax-b||_2^2)
else 
  n = input ('Choix du nombre de variables: n = ');
  fprintf ('Entrer les valeures des éléments de A et de b qui caractérise le problême du moindre carré min||Ax-b||_2^2 \n');
  
  for i = 1 : n
    for j = 1 : n
      fprintf('A(%d', i),fprintf(',%d', j), A(i,j) = input (')==>');
    endfor  
  endfor
  
  for i = 1 : n
    fprintf('b(%d', i), b(i) = input (')==>');
  endfor
  
  fprintf ('Entrer les valeures de litérée initiale \n');
  
  for i = 1 : n
    fprintf('x0(%d', i), x0(i) = input (')==>');
  endfor
  
  fprintf ('le problème est carctérisé par: \n');
  Q = 0.5*A'*A, c = b*A, p = 0.5*b'*b, x0 
  
  
  
  
  

endif



endfunction

