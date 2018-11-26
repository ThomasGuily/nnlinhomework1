

## Author: ThomasGuily <ThomasGuily@THOMASGUILY-PC>
## Created: 2018-11-19

function [f,delta] = fcalculator (Q, x0, c, p)

  a= size(x0);
  n = a(2);
  f = 0.5*(x0*Q*x0') - (c * x0') + p ;
  %  ^ c parait etre l'envers mais c'est juste la definition dans Octave.
  delta = 0.5*(Q*x0')- c'; 
  %  pareil, ici normalement c'devrait etre c
 
endfunction
