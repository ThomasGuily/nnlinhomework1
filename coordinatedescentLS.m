
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
  
  % Le fichier coordinatedescentLS n'est pas utilise 
  % car il suffit de calculer Q, c' et p 
  % a partir de A et b et puis appeler la fonction coordinatedescent
  % depuis Main.
  % L'algorithme marche tres bien a partir du moment ou
  % Q est definie positive
end
