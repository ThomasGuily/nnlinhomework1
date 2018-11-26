%Main
clear all, close all,
fprintf(' 0 = probleme specifique \n 1 = moindre carr�s \n ')
choix = input ('Choix :  ');
n=0;
if (choix == 0)
  n = input ('Choix des dimensions: n = ');
  [Q, x0, c, p] = quadfunctiongenerator(n,choix);
  
  maxiter = input ( 'Nombre de iterations : '); 
  [x, z] = coordinatedescent(Q,c,p,x0,maxiter);
  visualizer(x, z, Q, c, p);
  convergencespeed (x, z);
  
else
  
  n = input ('Choix des dimensions: n = ');
  [Q, x0, c, p] = quadfunctiongenerator(n,choix);
  
  maxiter = input ( 'Nombre de iterations : ');
  %[Q, c, p] = coordinatedescentLS(A, b, x0, maxiter);
  
  [x, z] = coordinatedescent(Q, c, p, x0, maxiter);
  
  visualizer(x, z, Q, c, p);
  convergencespeed (x, z);
endif
