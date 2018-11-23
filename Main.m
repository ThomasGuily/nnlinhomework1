%Main
clear all, close all,
choix = input ('Choix : 0 = probl�me sp�cifique ; 1 = probl�me random ; 2 = Tapez votre propre probl�me ==>');
n=0;
if (choix == 0)
  
  [Q, x0, c, p] = quadfunctiongenerator(n,choix)
  
  maxiter = input ( 'Nbre it�rations :'); 
  [x, z] = coordinatedescent(Q,c,p,x0,maxiter);
  visualizer(x, z);
  
else
  
  n = input ('choix des dimensions: n = ');
  [Q, x0, c, p] = quadfunctiongenerator(n,choix);
endif