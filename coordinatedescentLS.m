function [x, z] = coordinatedescentLS(A, b, x0, maxiter)
  % Entrees :
  % A est une matrice m x n
  % b est un vecteur m x 1s
  % x0 est l'itere initial (vecteur n x 1)
  % maxiter est le nombre d'iterations a effectuer
  
  % Sortie :
  % x est vecteur n x 1 (minimisant ||Ax-b||_2^2)
  
  % ICI :Algorithme a implementer
  
  % A partir de notre deduction:
  Q = (A')*A;
  c = (b')*A;
  p = (b')*b;
  
  [x, z] = coordinatedescent(Q, c, p, x0, maxiter);

end
