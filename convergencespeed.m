

## Author: ThomasGuily, Gustavo Maganna Lopez
## Created: 2018-11-26

function convergencespeed (x, z)
  for i = 1 : size(x)(1)-1    
    C(i) =  ((((x(i+1,1) - x(size(x)(1),1))^2 + (x(i+1,2) - x(size(x)(1),2))^2))/(((x(i,1) - x(size(x)(1),1))^2 + (x(i,2) - x(size(x)(1),2))^2)))^0.5;
  endfor
  %calcule selon la formule la vitesse de convergence les valeurs de celle-ci a chaque iteree.
  
  m = linspace(1, size(x)(1)-1,size(x)(1)-1); 
  %cree un vecteur representant le nombre d'iterations
  
  figure
  %cree une nouvelle figure afin de ne pas cacher la visualisation en 3D 
  plot(m, C,'r');
  hold on;

endfunction
