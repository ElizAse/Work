model lab5
parameter Real a= 0.63; // коэффициент естественной смертности хищников
parameter Real b= 0.59; // коэффициент естественного прироста жертв
parameter Real c= 0.019; // коэффициент увеличения числа хищников
parameter Real d= 0.018; // коэффициент смертности жертв 

//parameter Real x0 = 7;
//parameter Real y0 = 12;

parameter Real x0 = b/d;
parameter Real y0 = a/c;

Real x(start = x0);
Real y(start = y0);

equation

der(x) = -a*x + c*x*y;
der(y) = b*y - d*x*y;

end lab5;
