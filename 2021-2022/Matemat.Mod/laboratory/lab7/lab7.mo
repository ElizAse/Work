model lab7

parameter Real N = 860; // максимальное кол-во людей, которых может заинтересовать товар
parameter Real N0 = 2 ; // сколько людей знает изначально

Real n(start = N0);

function x
  input Real t;
  output Real res;
algorithm
  //res:= 0.66; // первый случай
  //res:= 0.000056; // второй случай
  res:= 0.66*sin(t); // третий случай
end x;

function y
  input Real t;
  output Real res;
algorithm
  //res:= 0.000061;  // первый случай
  //res:= 0.66; // второй случай
  res:= 0.66*sin(6*t); // третий случай
end y;

equation
der(n) = (x(time) + y(time) * n) * (N-n);

end lab7;
