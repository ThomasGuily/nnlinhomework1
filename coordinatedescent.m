function x=coordinatedescent(Q,c,p,x0,maxiter)
  % Entrées :
  % Q est une matrice n x n
  % c est un vecteur n x 1
  % p est un scalaire
  % x0 est l'itéré initial (vecteur n x 1)
  % maxiter est le nombre d'itérations à effectuer
  
  % Sortie :
  % x est vecteur n x 1
  
  % ICI :Algorithme à implémenter
  a = size (c);
  n = a(2);
  
  
 
  for i=1:maxiter
    A = 0;
    [f,delta] = fcalculator (Q, x0, c, p)
    z(i) = f ; 
    j = ceil(rand(1)*n);
              
    if (delta(j) == 0)
           
    else   
      for o = 1:n
        A += (Q(j,o)*x0(o) + Q(o,j)*x0(o))/2; 
      endfor
      x0(j) = (A - (Q(j,j)*x0(j)) - c(j))/(-Q(j,j))
    endif 
  
##    if i>1
##      if (z(i) == z(i-1))
##        break;
##      endif
##    endif
    
  endfor
  fprintf('La valeur optimale de x est %f\n', x0);
  fprintf('La valeur optimale de la fonction est %f\n', f);
endfunction
