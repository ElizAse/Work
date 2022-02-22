model lab3_2
parameter Real a = 0.11;
parameter Real b = 0.68;
parameter Real c = 0.6;
parameter Real h = 0.15;

parameter Real x0 = 52000;
parameter Real y0 = 49000;

Real x(start = x0);
Real y(start = y0);

equation
  der(x) = -a*x - b*y + sin(5*time)+1.1;
  der(y) = -c*x*y - h*y + cos(5*time) +1;

end lab3_2;
