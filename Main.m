%Main
clear all, close all
fprintf(' 0 = probleme specifique \n 1 = moindre carrés \n ')
choix = input ('Choix :  ');
n=0;
if (choix == 0)
  
  [Q, x0, c, p] = quadfunctiongenerator(choix);
  
  maxiter = input ( 'Nombre de iterations : '); 
  [x, z] = coordinatedescent(Q,c,p,x0,maxiter);
  visualizer(x, z, Q, c, p);
  convergencespeed (x, z);
  
else
  
  
  [Q, x0, c, p] = quadfunctiongenerator(choix);
  
  maxiter = input ( 'Nombre de iterations : ');
  %[Q, c, p] = coordinatedescentLS(A, b, x0, maxiter);
  
  [x, z] = coordinatedescent(Q, c, p, x0, maxiter);
  
  visualizer(x, z, Q, c, p);
  convergencespeed (x, z);
endif
