n = 5;
y = randi(10,[1,5]); 
x = x';
y = y';

G = [ x.^0 x.^1 x.^2 x.^3 x.^4 ];


 
  m = inv(G)*y;
  
  xi = linspace(x(1),x(end),1000);
  xi = xi';
  G1 = [ ];
  for j = 0:(n-1);
      G1 = [G1 xi.^j]
  end
  disp(G1)
  
 
  yi = G1*m
  plot(xi,yi)
  hold on 
  plot(x,y,'o')
      