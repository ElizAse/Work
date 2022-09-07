model lab6
parameter Real beta = 1;
parameter Real nu = 0.3;
parameter Real mu = 0.125;

Real S(start=0.999);
Real I(start=0.001);
Real R(start=0.0);
  
equation

der(S)= - beta*S*I+mu*((S+I+R)-S);
der(I)=beta*S*I-nu*I-mu*I;
der(R)=nu*I-mu*R;

end lab6;
