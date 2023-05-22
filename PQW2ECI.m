%https://github.com/ssw14/seosnagwon_19011248.git
%
function[arg_prg,inc_angle,RAAN]=PQW2ECI(A)
%perifocal_frame-> eci frame
%
arg_prg=input('enter number');
inc_angle=input('enter number');
RAAN=input('enter number');

perifocal();

r1=[cos(arg_prg) -sin(arg_prg) 0; sin(arg_prg) cos(arg_prg) 0; 0 0 1;]
r2=[1 0 0; 0 cos(inc_angle) -sin(inc_angle); 0 sin(inc_angle) cos(inc_angle)]
r3=[cos(RAAN) -sin(RAAN) 0; sin(RAAN) cos(RAAN) 0; 0 0 1;]
a=perifocal*r1;
a=a*r2;
A=a*r3;
