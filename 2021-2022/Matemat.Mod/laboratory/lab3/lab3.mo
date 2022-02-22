model lab3
parameter Real a = 0.36;
parameter Real b = 0.48;
parameter Real c = 0.49;
parameter Real h = 0.37;

parameter Real x0 = 52000;
parameter Real y0 = 49000;

Real x(start = x0);
Real y(start = y0);

equation
  der(x) = -a*x - b*y + sin(time+1)+1;
  der(y) = -c*x - h*y + cos(time+2) +1.1;
end lab3;
