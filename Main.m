%Main

choix = input ('Choix : 0 = problème spécifique ; 1 = problème random ; 2 = Tapez votre propre problème ==>');

if (choix == 0)
  
  [Q, x0, c, p] = quadfunctiongenerator(n,choix)
  [f] = fcalculator (Q, x0, c, p)
  maxiter = 1000 ; 
  %x = coordinatedescent(Q,c,p,x0,maxiter);
  
  
else
  
  n = input ('choix des dimensions: n = ');
  [Q, x0, c, p] = quadfunctiongenerator(n,choix);
endif

