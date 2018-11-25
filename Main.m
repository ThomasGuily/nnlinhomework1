%Main
clear all, close all,
fprintf(' 0 = probleme specifique \n 1 = probleme random \n 2 = Tapez votre propre probleme\n')
choix = input ('Choix :  ');
n=0;
if (choix == 0)
  
  [Q, x0, c, p] = quadfunctiongenerator(n,choix)
  
  maxiter = input ( 'Nombre de iterations :'); 
  [x, z] = coordinatedescent(Q,c,p,x0,maxiter);
  visualizer(x, z, Q, c, p);
  
else
  
  n = input ('Choix des dimensions: n = ');
  [Q, x0, c, p] = quadfunctiongenerator(n,choix);
  
endif
