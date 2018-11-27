%Main
clear all, close all
fprintf(' 0 = probleme specifique \n 1 = moindre carr�s \n ')
choix = input ('Choix :  ');
n=0;
if (choix == 0)
  
  [Q, x0, c, p] = quadfunctiongenerator(choix);
  %generer soit meme la fonction quadratique
  
  maxiter = input ( 'Nombre de iterations : '); 
  
  [x, z] = coordinatedescent(Q,c,p,x0,maxiter);
  % implemente la descente de coordonnees en choisissant 
  % les variables aleatoirement.
  
  visualizer(x, z, Q, c, p);
  % visualisation graphique des iterations et de la fonction
  
  % convergencespeed (x, z);
  % doit calculer et mettre sous graphique la vitesse de convergence (ne marche pas)
else
  
  
  [Q, x0, c, p] = quadfunctiongenerator(choix);
  % generer soit meme le probleme des moindres carres
  
  maxiter = input ( 'Nombre de iterations : ');
  
  [x, z] = coordinatedescent(Q, c, p, x0, maxiter);
  % coordinate descent marche pour les deux exercices !
  
  visualizer(x, z, Q, c, p);
  
  %convergencespeed (x, z);
endif
