model lab8
parameter Real M0_1 = 8.8;
parameter Real M0_2 = 9.9;
parameter Real p_cr = 30;
parameter Real N = 80;
parameter Real q = 1;
parameter Real tau_1 = 25;
parameter Real tau_2 = 20;
parameter Real p1 = 10.1;
parameter Real p2 = 11.5;

parameter Real a1 = p_cr/(tau_1*tau_1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau_2*tau_2*p2*p2*N*q);
parameter Real b = p_cr/(tau_1*tau_1*p1*p1*tau_2*tau_2*p2*p2*N*q);
parameter Real c1 = (p_cr - p1)/(tau_1*p1);
parameter Real c2 = (p_cr - p2)/(tau_2*p2);

Real M1(start=M0_1);
Real M2(start=M0_2);

equation
//Первый случай
//der(M1) = M1 - (b/c1)*M1*M2 - (a1/c1)*M1*M1;
//der(M2) = (c2/c1)*M2-(b/c1)*M1*M2-(a2/c1)*M2*M2;
//Второй случай
der(M1) = M1 - (b/c1+0.0002)*M1*M2 - (a1/c1)*M1*M1;
der(M2) = (c2/c1)*M2-(b/c1)*M1*M2-(a2/c1)*M2*M2;
end lab8;
