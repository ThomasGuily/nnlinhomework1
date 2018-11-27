%Main
clear all, close all
fprintf(' 0 = probleme specifique \n 1 = moindre carr�s \n ')
choix = input ('Choix :  ');
n=0;
if (choix == 0)
  
  [Q, x0, c, p] = quadfunctiongenerator(choix);
  %g�n�rer soit m�me la fonction quadratique
  
  maxiter = input ( 'Nombre de iterations : '); 
  
  [x, z] = coordinatedescent(Q,c,p,x0,maxiter);
  %impl�mente la descente de coordonn�e en choisissant les variable al�atoirement
  
  visualizer(x, z, Q, c, p);
  %visualisation graphique des it�rations et de la fonction
  
  %convergencespeed (x, z);
  %doit calculer et mettre sous graphique la vitesse de convergence (ne marche pas)
else
  
  
  [Q, x0, c, p] = quadfunctiongenerator(choix);
  %g�n�rer soit m�me le probl�me des moindres carr�s
  
  maxiter = input ( 'Nombre de iterations : ');
  %[Q, c, p] = coordinatedescentLS(A, b, x0, maxiter);
  
  [x, z] = coordinatedescent(Q, c, p, x0, maxiter);
  %coordinate descent marche pour les deux exercices !
  
  visualizer(x, z, Q, c, p);
  
  %convergencespeed (x, z);
endif
