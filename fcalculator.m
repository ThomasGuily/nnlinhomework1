

## Author: ThomasGuily, Gustavo Maga�a Lopez
## Created: 2018-11-19

function [f,delta] = fcalculator (Q, x0, c, p)

  f = 0.5*(x0*Q*x0') - (c * x0') + p ;
  %calcule la valeur de f � chaques it�r�es.
  delta = 0.5*(x0*Q)- c; 
  %calcule le gradient � chaques it�r�es.
 
endfunction
