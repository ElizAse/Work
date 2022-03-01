model Lab4_2
parameter Real w = sqrt(20) ;
parameter Real g = 1.0;
parameter Real x0 = -0.3 ;
parameter Real y0 = 1.3 ;

Real x(start = x0);
Real y(start = y0);

function f
  input Real t;
  output Real res;
algorithm
  res := 0;
end f;

equation
  der(x) = y;
  der(y) = -w*w*x - g*y - f(time);
end Lab4_2;
