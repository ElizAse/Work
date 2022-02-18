s = 12.2; // начальное расстояние от лодки до катера
v = 4.1; // во сколько раз скорость катера больше скорости браконьерской лодки
fi = %pi/4;

//функция, описывающая движение катера береговой охраны
function ber=f(tetha,r)
    ber = r/sqrt(v*v -1);
endfunction;

//начальные условия в случае 1
r0 = s/(v+1);
tetha0 = 0;
tetha=0:0.01:2*%pi
r=ode(r0,tetha0,tetha,f);

// функция, описывающая движение лодки браконьеров
function brack=f2(t)
    brack = tan(fi)*t;
endfunction

t = 0:1:10;

polarplot(tetha, r, style = color('green'));
plot2d(t,f2(t),style = color('red'));

// начальные условия в случае 2
r0 = s/(v-1);
tetha0 = -%pi;
tetha=0:0.01:2*%pi
r=ode(r0,tetha0,tetha,f);
figure();

t = 0:1:30;

polarplot(tetha, r, style = color('green'));
plot2d(t,f2(t),style = color('red'));




