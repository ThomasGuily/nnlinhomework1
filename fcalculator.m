

## Author: ThomasGuily, Gustavo Magaña Lopez
## Created: 2018-11-19

function [f,delta] = fcalculator (Q, x0, c, p)

  f = 0.5*(x0*Q*x0') - (c * x0') + p ;
  %calcule la valeur de f à chaques itérées.
  delta = 0.5*(x0*Q)- c; 
  %calcule le gradient à chaques itérées.
 
endfunction
