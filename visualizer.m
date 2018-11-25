
function [x1, x2, fuf] = visualizer(x, z, Q, c, p)
clf;
% Pour le cas le plus general, apres on fera:
% iters = 1:size(x)(1);
% plot(iters,x(:,1))
if size(x)(2)
  % Afficher les iterees: 

  
  
  % Display the function's surface:
  %% Calculate limits:
  x1_low = x(1,1);
  x1_hi  = x(size(x)(1),1) - x1_low;
  x2_low = x(1,2);
  x2_hi  = x(size(x)(1),2) - x2_low;
  
  % Resolution will be the number of points:
  resolution = 50;
  x1 = (linspace(x1_low, x1_hi, resolution))';
  x2 = (linspace(x2_low, x2_hi, resolution))';
  f = [];
  

  
  for i=1:resolution
    for j=1:resolution
      [_tmp, _] = fcalculator(Q, [x1(i),x2(j)], c, p);
      f(i,j) = _tmp;
    endfor
  endfor 
  
  plot3(x(:,1), x(:,2), z,'r');
  hold on;
  scatter3(x(:,1), x(:,2), z,'k');
  hold on;
  hidden off;
  [xx, yy] = meshgrid (x1, x2);
  meshc(x1,x2,f);
  
endif

endfunction
