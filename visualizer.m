
function visualizer(x, z)

% Pour le cas le plus general, apres on fera:
% iters = 1:size(x)(1);
% plot(iters,x(:,1))
if size(x)(2)
  plot3(x(:,1), x(:,2), z)
  hold on;
endif

endfunction
