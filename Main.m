%Main
clear all, close all,
choix = input ('Choix : 0 = problème spécifique ; 1 = problème random ; 2 = Tapez votre propre problème ==>');
n=0;
if (choix == 0)
  
  [Q, x0, c, p] = quadfunctiongenerator(n,choix)
  
  maxiter = input ( 'Nbre itérations :'); 
  x = coordinatedescent(Q,c,p,x0,maxiter);
  
  
else
  
  n = input ('choix des dimensions: n = ');
  [Q, x0, c, p] = quadfunctiongenerator(n,choix);
endif