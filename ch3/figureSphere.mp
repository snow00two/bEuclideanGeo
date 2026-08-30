prologues := 3;
verbatimtex
%&latex
\documentclass{article}
\usepackage{verbatim}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
%\usepackage[rgb]{xcolor}
\begin{document}
etex;

numeric a, b;
a=10pt;
b=12pt;
beginfig(1);
z0=(5a,6a);
for i=0 upto 17:
	z[1+i] = (5a*cosd(90+20i),5a*sind(90+20i));
endfor;
for i=0 upto 17:
	z[21+i] = z[1+i] +z0;
endfor;

numeric c;
c = 0.4; %x ratio to y
for i=0 upto 17:
	x[41+i] = c*x[1+i]+x0;
	y[41+i] = y[1+i]+y0;
endfor;
draw z41{dir 180}..
for j = 1 upto 8:
	z[41+j]..
endfor
{dir 0}z50;

draw z50{dir 0}..
for j = 10 upto 17:
	z[41+j]..
endfor
{dir 180}z41 dashed evenly;

%plane
z90 = z0 + (-3a,6a);
z91 = z90 + (6a,a);
z92 = z91 + (0,-6.5a);
z93 = z92 + (0,-6.5a);
z94 = z93 - (6a,a);
z95 = z94 + (0,6.5a);

path p, q, r, s, t ;
%p: contour of sphere
p = z21..
for j = 1 upto 17:
	z[21+j]..
endfor
z21;
%q, r, s, t: division of the contour of the plane
q = z91--z92;
r = z92--z93;
s = z94--z95;
t = z95--z90;
z96 = p intersectionpoint q;
z97 = p intersectionpoint r;
z98 = p intersectionpoint s;
z99 = p intersectionpoint t;
draw z97--z93--z94--z90--z91--z96;
draw z96--z97 dashed evenly;
%
draw z99..
for j = 2 upto 7:
	z[21+j]..
endfor
z98;
draw z99..z22..z21 dashed evenly;
draw z98..z29..z30 dashed evenly;

draw z30{dir 0}..
for j = 10 upto 17:
	z[21+j]..
endfor
{dir 180}z21;

for i=0 upto 17:
	z[101+i] = z0 + (1.5c*a*cosd(90+20i),1.5a*sind(90+20i));
endfor;

draw z0--z44 dashed evenly;
draw z0--z47 dashed evenly;
draw 
for i=4 upto 6:
	z[100+i]..
endfor
z107;

pickup pencircle scaled 1pt;
draw 
for i=44 upto 46:
	z[i]..
endfor
z47;
dotlabel.rt(btex $\mathbf 0$ etex,z0);
dotlabel.rt(btex $A$ etex,z44);
dotlabel.rt(btex $B$ etex,z47);

endfig;

beginfig(2);
for i=0 upto 11: %x-axis
    for j=0 upto 11: %y-axis
       z[i*100+j]=(i*b,j*b);
    endfor;
endfor;

z2000=0.25[z303,z0];
z2001=0.3[z303,z501];
z2002=0.3[z303,z309];
z2003=0.3[z303,z507];

drawarrow z303---z1003;
drawarrow z303--z311;
drawarrow z303--z0;
drawarrow z303--z507;

draw z501--z507 dashed evenly withcolor red;
draw z303--z501 dashed evenly;
draw z309--z507 dashed evenly withcolor red;
draw z101--z501 dashed evenly withcolor red;
draw z501--z703 dashed evenly withcolor red;
draw z303..z404..z507 dashed evenly;

draw z2000{right}..{dir 30}z2001;
draw z2002{dir 340}..{dir 320}z2003;

label.lft(btex $x$ etex,z0);
label.rt(btex $y$ etex,z1003);
label.top(btex $z$ etex,z311);
label.ulft(btex $\mathbf 0$ etex,z303);
label.rt(btex $\mathbf x$ etex,z507);
label.rt(btex $r$ etex,z404);
label.top(btex $\theta$ etex,0.7[z305,z405]);
label.bot(btex $\phi$ etex,z302);
dotlabel.lft(btex $r\cos \theta$ etex,z309);

endfig;

beginfig(3);
z4000=(3a,2a);
z4001=z4000+(0,6a);

for i=0 upto 18: %latitude
    for j=0 upto 18: %longitude 
    	z[100i+j]=z4000+(0,6a*cosd(10i)) +(6a*cosd(10j)*sind(10i),-2a*sind(10j)*sind(10i));
    endfor;
endfor;
%shift z[100i+j] to the outer direction of the same magnitude. 
for i=0 upto 18:
	for j=0 upto 18:
		z[50+100i+j]=1.2[z4000,z[100i+j]];
	endfor;
endfor;

for i=9 upto 9:
	draw 
		for j=1 upto 11:
			z[100i+j]..
		endfor
		z[100i+12];
endfor;

for j=1 upto 1:
	draw z[j]..
		for i=0 upto 8:
			z[100i+j]..
		endfor
		z[900+j];
endfor;
for j=6 upto 6:
	draw z[j]..
		for i=0 upto 8:
			z[100i+j]..
    		endfor
    		z[900+j];
endfor;
for j=7 upto 7:
	draw z[j]..
		for i=0 upto 8:
			z[100i+j]..
		endfor
		z[900+j];
endfor;
for j=12 upto 12:
    draw z[j]..
    for i=0 upto 8:
    	z[100i+j]..
    endfor
    z[900+j];
endfor;
for j=6 upto 7:
    draw z[50+500+j]..z[50+600+j];
endfor;

for i=5 upto 6:
    draw 
    for j=6 upto 7:
    	z[100i+j]..
    endfor
    z[100i+7];
endfor;
for i=5 upto 6:
    draw 
    for j=6 upto 7:
    	z[50+100i+j]..
    endfor
    z[50+100i+7];
endfor;
for i=5 upto 6:
    for j=6 upto 6:
    	draw z4000--z[50+100i+j] dashed evenly;
    endfor;
    for j=7 upto 7:
    	draw z4000--z[50+100i+j];
    endfor;
endfor;
for i=9 upto 9:
    for j=6 upto 6:
    	draw z4000--z[100i+j] dashed evenly;
    endfor;
    for j=7 upto 7:
    	draw z4000--z[100i+j];
    endfor;
endfor;

drawarrow z4000---1.3[z4000,z901];
drawarrow z4000--1.3[z4000,z912];
drawarrow z4000--1.3[z4000,z4001];

label.lft(btex $x$ etex,1.3[z4000,z912]);
label.ulft(btex $r$ etex,z912);
label.rt(btex $y$ etex,1.3[z4000,z901]);
label.bot(btex $r$ etex,z901);
label.top(btex $z$ etex,1.3[z4000,z4001]);
label.urt(btex $r$ etex,z4001);
label.urt(btex $dr$ etex,z556);
label.rt(btex $rd\theta$ etex,0.5[z656,z556]);
label.lrt(btex $r\sin \theta d\varphi$ etex,0.5[z656,z657]);

endfig;


beginfig(4);
%spherical biangle
z0=(6a,6a);
for i=0 upto 17:
	z[1+i] = (6a*cosd(20i),6a*sind(20i));
endfor;

for i=0 upto 17:
	z[21+i] = z[1+i] +z0;
endfor;
draw z21{dir 90}..
for j = 1 upto 17:
	z[21+j]..
endfor
{dir 90}z21;

numeric c, d;
c = 0.5; %y ratio to x
d = 40; %angle of rotation x axis
for i=0 upto 17:
	x[61+i] = x[1+i]*cosd(d)-y[1+i]*c*sind(d)+x0;
	y[61+i] = x[1+i]*sind(d)+y[1+i]*c*cosd(d)+y0;
endfor;

numeric c, d;
c = 0.15; %y ratio to x
d = 80; %angle of rotation x axis
for i=0 upto 17:
	x[81+i] = x[1+i]*cosd(d)-y[1+i]*c*sind(d)+x0;
	y[81+i] = x[1+i]*sind(d)+y[1+i]*c*cosd(d)+y0;
endfor;

%3+3 intersections :
path q, r;

q = z61.. 
for j = 1 upto 8:
	z[61+j]..
endfor
z70;

r = z81.. 
for j = 1 upto 8:
	z[81+j]..
endfor
z90;

z101 = q intersectionpoint r;

%test part for position of guide point
%for i = 81 upto 90:
%	dotlabel("",z[i]);
%endfor;

path q, r;

q = z70.. 
for j = 1 upto 8:
	z[70+j]..
endfor
z61;

r = z90.. 
for j = 1 upto 8:
	z[90+j]..
endfor
z81;

z104 = q intersectionpoint r;

path p;
%p = z103..z75..z74..z104--z104..z93..z94..z105--z105..z55..z56..z103-- cycle; 
p = z69..z70..z71..z72..z73..z104--z104..z92..z91..z90--z34..z33..z32..z69-- cycle; 
fill p withcolor 0.9white;
path q;
q = z101..z65..z66..z67..z68..z69..z32..z33..z34..z90..z89..z88..z87..z86..z85..z84..z101-- cycle; 
fill q withcolor 0.8white;

%2 circles
%40+90
draw z61{dir 130}.. 
for j = 1 upto 8:
	z[61+j]..
endfor
%130+180
{dir 310}z70;

draw z70{dir 310}..
for j = 10 upto 17:
	z[61+j]..
endfor
{dir 130}z61 dashed evenly;

%80+90
draw z81{dir 170}.. 
for j = 1 upto 8:
	z[81+j]..
endfor
{dir 350}z90;
%170+180
draw z90{dir 350}.. 
for j = 10 upto 17:
	z[81+j]..
endfor
{dir 170}z81 dashed evenly;

%for i = 100 upto 102:
%	draw z[i]--z[i+3] dashed evenly;
%endfor;
draw z101--z104 dashed evenly;
dotlabel.rt(btex $\mathbf 0$ etex,z0);
dotlabel.ulft(btex $A$ etex,z101);
dotlabel.lrt(btex $A'$ etex,z104);

%pickup pencircle scaled 1pt;
%for i = 100 upto 102:
%	drawarrow z0--z[i];
%endfor;
endfig;


beginfig(5);
%spherical triangle
z0=(6a,6a);
for i=0 upto 17:
	z[1+i] = (6a*cosd(20i),6a*sind(20i));
endfor;

for i=0 upto 17:
	z[21+i] = z[1+i] +z0;
endfor;
draw z21{dir 90}..
for j = 1 upto 17:
	z[21+j]..
endfor
{dir 90}z21;

numeric c, d;
c = 0.14; %y ratio to x
d = -10; %angle to x axis
for i=0 upto 17:
	x[41+i] = x[1+i]*cosd(d)-y[1+i]*c*sind(d)+x0;
	y[41+i] = x[1+i]*sind(d)+y[1+i]*c*cosd(d)+y0;
endfor;

numeric c, d;
c = 0.5; %y ratio to x
d = 40; %angle of rotation x axis
for i=0 upto 17:
	x[61+i] = x[1+i]*cosd(d)-y[1+i]*c*sind(d)+x0;
	y[61+i] = x[1+i]*sind(d)+y[1+i]*c*cosd(d)+y0;
endfor;

numeric c, d;
c = 0.15; %y ratio to x
d = 80; %angle of rotation x axis
for i=0 upto 17:
	x[81+i] = x[1+i]*cosd(d)-y[1+i]*c*sind(d)+x0;
	y[81+i] = x[1+i]*sind(d)+y[1+i]*c*cosd(d)+y0;
endfor;

%3+3 intersections :
path p, q, r;
p = z41..
for j = 1 upto 8:
	z[41+j]..
endfor
z50;

q = z61.. 
for j = 1 upto 8:
	z[61+j]..
endfor
z70;

r = z81.. 
for j = 1 upto 8:
	z[81+j]..
endfor
z90;

z100 = p intersectionpoint q;
z101 = q intersectionpoint r;
z102 = r intersectionpoint p;

path p;
p = z100..z66..z65..z101--z101..z84..z85..z102--z102..z46..z47..z100-- cycle; 
fill p withcolor 0.8white;

%test part for position of guide point
%for i = 81 upto 88:
%	dotlabel("",z[i]);
%endfor;

path p , q, r;
p = z50..
for j = 1 upto 8:
	z[50+j]..
endfor
z41;

q = z70.. 
for j = 1 upto 8:
	z[70+j]..
endfor
z61;

r = z90.. 
for j = 1 upto 8:
	z[90+j]..
endfor
z81;

z103 = p intersectionpoint q;
z104 = q intersectionpoint r;
z105 = r intersectionpoint p;

path p;
p = z103..z75..z74..z104--z104..z93..z94..z105--z105..z55..z56..z103-- cycle; 
fill p withcolor 0.8white;


% 3 circles
%-10+90
draw z41{dir 80}..
for j = 1 upto 8:
	z[41+j]..
endfor
%80+180
{dir 260}z50;

draw z50{dir 260}..
for j = 10 upto 17:
	z[41+j]..
endfor
{dir 80}z41 dashed evenly;

%40+90
draw z61{dir 130}.. 
for j = 1 upto 8:
	z[61+j]..
endfor
%130+180
{dir 310}z70;

draw z70{dir 310}..
for j = 10 upto 17:
	z[61+j]..
endfor
{dir 130}z61 dashed evenly;

%80+90
draw z81{dir 170}.. 
for j = 1 upto 8:
	z[81+j]..
endfor
{dir 350}z90;
%170+180
draw z90{dir 350}.. 
for j = 10 upto 17:
	z[81+j]..
endfor
{dir 170}z81 dashed evenly;

%test part ;check 
%pickup pencircle scaled 1pt;
%draw z102..z46..z47..z100;
%draw z101..z65..z66..z100;
%draw z101..z84..z85..z102;
for i = 100 upto 102:
	draw z[i]--z[i+3] dashed evenly;
endfor;

dotlabel.rt(btex $\mathbf 0$ etex,z0);
dotlabel.top(btex $A$ etex,z100);
dotlabel.ulft(btex $B$ etex,z101);
dotlabel.urt(btex $C$ etex,z102);

%pickup pencircle scaled 1pt;
%for i = 100 upto 102:
%	drawarrow z0--z[i];
%endfor;
endfig;


beginfig(6);
z0=(5a,6a);
for i = 2 upto 6:
	for j = 1 upto 6:
		z[10i+j] = z0 +( i*a*cosd(30+60j), i*a*sind(30+60j));
	endfor;
endfor;

%path p;
%p = z21--z23--z25-- cycle;
%fill p withcolor 0.8white;
%draw p;
%
%draw z21--z92--z23--z94--z25--z96-- cycle;
%draw z92--z94--z96-- cycle;

draw z62..z21..z25..z64;
draw z64..z23..z21..z66;
draw z62..z23..z25..z66;
draw z62..z53..z64;
draw z64..z55..z66;
draw z66..z51..z62;

dotlabel.top(btex $A$ etex,z21);
dotlabel.llft(btex $B$ etex,z23);
dotlabel.lrt(btex $C$ etex,z25);
label(btex $\alpha$ etex,z0);
label(btex $\varepsilon$ etex,z41);
label(btex $\zeta$ etex,z32);
label(btex $\eta$ etex,z43);
label(btex $\beta$ etex,z34);
label(btex $\gamma$ etex,z45);
label(btex $\delta$ etex,z36);
endfig;

beginfig(7);
z0=(10a,4a);
for i=0 upto 17:
	z[1+i] = (5a*cosd(20i),5a*sind(20i));
endfor;
for i=0 upto 17:
	z[21+i] = z[1+i] +z0;
endfor;

numeric c;
c = 0.4; %x ratio to y
for i=0 upto 17:
	x[41+i] = x[1+i]+x0;
	y[41+i] = c * y[1+i]+y0;
endfor;
draw z41{dir 90}..
for j = 1 upto 8:
	z[41+j]..
endfor
{dir -90}z50 dashed evenly;

draw z50{dir -90}..
for j = 10 upto 17:
	z[41+j]..
endfor
{dir 90}z41;

%plane
z90 = z0 + (7.5a,-3a);
z91 = z90 + (2a,6a);
z92 = z91 + (-8.5a,0);
z93 = z92 + (-8.5a,0);
z94 = z93 - (2a,6a);
z95 = z94 + (7.5a,0);

path p, q, r, s, t ;
%p: contour of sphere
p = z21..
for j = 1 upto 17:
	z[21+j]..
endfor
z21;
%q, r, s, t: division of the contour of the plane
q = z91--z92;
r = z92--z93;
s = z94--z95;
t = z95--z90;
z96 = p intersectionpoint q;
z97 = p intersectionpoint r;
z98 = p intersectionpoint s;
z99 = p intersectionpoint t;
draw z97--z93--z94--z90--z91--z96;
draw z96--z97 dashed evenly;
%
draw z99..z38..z21  dashed evenly ; 
draw 
for j = 0 upto 8:
	z[21+j]..
endfor
z30;
draw z30..z31..z98 dashed evenly ;
draw z98..
for j = 0 upto 2:
	z[32+j]..
endfor
z99;

z100 = z94  + (a,a);
z101= z25 -(a,a);
z102 = 0.7[z100,z101];
z103 = z91  - (a,a);
z104 = z91 + (0,2a);

draw z100--z102;
draw z102--z101 dashed evenly;

dotlabel.rt(btex $0$ etex,z0);
dotlabel.bot(btex $z$ etex,z100);
dotlabel.top(btex $\infty$ etex,z101);
dotlabel.top(btex $ $ etex,z102);
label(btex $\mathbf C$ etex,z103);
label.lft(btex $\mathbf R^3$ etex,z104);
endfig;

beginfig(8);
z0 = (6a, 5a );
for i=1 upto 18:
	z[i]=z0 + 5a*(cosd(20i),sind(20i));
endfor;

draw 
for i=1 upto 18:
	z[i]..
endfor
cycle;

draw z16--z6--z11;
draw z16--z2--z11;
draw z16--z13--z11;

dotlabel.lrt(btex $z_3$ etex,z16);
dotlabel.llft(btex $z_4$ etex,z11);
dotlabel.urt(btex $z_1$ etex,z2);
dotlabel.ulft(btex $z_2$ etex,z6);
dotlabel.bot(btex $z'_2$ etex,z13);
endfig;

%Apollonius’ circle 9, 10
beginfig(9);
z0= (0,0);
z1=z0+ (0,4a);
z2 = z1+(a,0);%A
z3 = z2+(8a,0);%B
z4 = 0.3[z3,z2];%C
z5 = 1.75[z2,z3];%D
z6 = 0.5[z4, z5];%center of the sphere
z7 = z6 +8a* (cosd(95), sind(95));
draw z2--z5;
z8 = z6 + (0, x5-x6);

path p, q;
p = z4..z8..z5.. cycle;
q = z6--z7;
z10 =p  intersectionpoint q; %Z
draw p;
draw z3--z10;
draw z10--z4  withcolor green;

draw z10--z5 withcolor   (0,0.4,1);
z11 = 1.7[z2, z10];
z12 = z3 + 2(z10-z4);
z22 =z3 + (z10 -z5);

path p, q;
p =z2--z11;
q = z3--z12;
z13 = p  intersectionpoint q; %E
draw p;
draw z13--z3   withcolor green;

path p, q;
p =z2--z10;
q = z3--z22;
z23 = p  intersectionpoint q; %F
draw p;
draw z23--z3  withcolor   (0,0.4,1);

pickup pencircle scaled 1pt;
draw z10--z3 withcolor red;
draw z10--z13 withcolor red;
draw z10--z23 withcolor red;

dotlabel.bot(btex $A$ etex,z2);
dotlabel.bot(btex $B$ etex,z3);
dotlabel.lrt(btex $C$ etex,z4);
dotlabel.rt(btex $D$ etex,z5);

dotlabel.ulft(btex $Z$ etex,z10);
dotlabel.ulft(btex $E$ etex,z13);
dotlabel.ulft(btex $F$ etex,z23);%
endfig;

%beginfig(9);
%z0= (0,0);
%z1=z0+ (0,4a);
%z2 = z1+(a,0);%A
%z3 = z2+(8a,0);%B
%z4 = 0.3[z3,z2];%C
%z5 = 1.75[z2,z3];%D
%z6 = 0.5[z4, z5];%center of the sphere
%z7 = z6 +8a* (cosd(110), sind(110));
%draw z2--z5;
%
%path p,q;
%p = z4..z5.. cycle;
%q = z6--z7;
%z10 =p  intersectionpoint q; %X
%draw p;
%draw z3--z10--z4;
%
% z11 = 1.7[z2, z10];
% z12 = z3 + 2(z10-z4);
%
%path p, q;
% p =z2--z11;
% q = z3--z12;
% z13 = p  intersectionpoint q; 
%draw p;
%draw z3--z13;
%
%pickup pencircle scaled 1pt;
%draw z10--z3 withcolor red;
% draw z10--z13 withcolor red;
%
%dotlabel.bot(btex $A$ etex,z2);
%dotlabel.bot(btex $B$ etex,z3);
%dotlabel.lrt(btex $C$ etex,z4);
%dotlabel.rt(btex $D$ etex,z5);
%
%dotlabel.ulft(btex $Z$ etex,z10);
%dotlabel.ulft(btex $E$ etex,z13);
%endfig;
%
%beginfig(10);
%z0= (0,0);
%z1=z0+ (0,4a);
%z2 = z1+(a,0);%A
%z3 = z2+(8a,0);%B
%z4 = 0.3[z3,z2];%C
%z5 = 1.75[z2,z3];%D
%z6 = 0.5[z4, z5];%center of the sphere
%z7 = z6 +8a* (cosd(110), sind(110));
%draw z2--z5;
%
%path p,q;
%p = z4..z5.. cycle;
%q = z6--z7;
%z10 =p  intersectionpoint q; %X
%draw p;
%draw z3--z10;
%draw z10--z5;
%
% z11 = 1.7[z2, z10];
% z12 = z3 + 2(z10-z4);
% z22 = z4 + 2(z10-z5);
% path p, q;
% p =z2--z11;
% q = z3--z12;
% z13 = p  intersectionpoint q; 
%draw p;
%%draw z3--z13;
%
%path p, q;
% p =z2--z11;
% q = z3--z22;
% z23 = p  intersectionpoint q; 
%draw p;
%draw z23--z3;
%
%pickup pencircle scaled 1pt;
%draw z10--z23 withcolor red;
%draw z10--z3 withcolor red;
%
%dotlabel.bot(btex $A$ etex,z2);
%dotlabel.bot(btex $B$ etex,z3);
%dotlabel.lrt(btex $C$ etex,z4);
%dotlabel.rt(btex $D$ etex,z5);
%
%dotlabel.ulft(btex $Z$ etex,z10);
%dotlabel.ulft(btex $E$ etex,z13);
%dotlabel.ulft(btex $F$ etex,z23);
%endfig;

beginfig(11);
z0 = (0,0);
z1 = z0 + (5a,5a);
for i= 10 upto 45:
	z[i] = z1 + 5a*(cosd(10(i-10)), sind(10(i-10)));
endfor
draw 
	for  i= 10 upto 45:
		z[i]..
	endfor 
	cycle;

z50 = z17 + 5a*(cosd(-20), sind(-20));
z51 = whatever[z1,z11] = whatever[z17,z50];
z52 = whatever[z1,z51] = whatever[z17,z41];
z53 = 0.65[z1,z51];
draw z1--z41--z51--z17-- cycle;
draw z17--z41;

pickup pencircle scaled 1pt;
draw z1--z51;%--z17-- cycle;
dotlabel.lft(btex $a$ etex,z1);
dotlabel.lrt(btex $z$ etex,z52);
dotlabel.rt(btex $z^*$ etex,z51);
label.lft(btex $C$ etex,z28);
label.bot(btex $\ell$ etex,z53);
endfig;

numeric a;
a = 7pt;
beginfig(12);
%Steiner circles, 0, \infty
z0 = (0,0);
z1 = z0 + (20a,0);
z2 = z1 +  (0,20a);
z3 = z2 -  (20a,0);
z4 = 0.5[z0, z3];
z5 = 0.5[z1, z2];
z6 = 0.5[z0, z1];
z7 = 0.5[z2, z3];
z8 = 0.5[z0, z2];

for i = 0 upto 10:
	numeric b;
	b = 0.66**i ;
	for j = 0 upto 7:
		z[10+10i+j] = z8 + 11a*(cosd(45j), sind(45j) )*b ;
	endfor
endfor 
for i=1 upto 10:
	draw 
		for j = 0 upto 7:
			z[10+10i+j]..
		endfor 
		cycle;
endfor 
path p;
p = for j = 0 upto 7:
			z[10+j]..
	endfor 
	cycle;
path q;
q = z2--z5;
z120 = q intersectionpoint p;
path q;
q = z2--z7;
z121 = q intersectionpoint p;
draw z120..z11..z121;
path q;
q = z3--z7;
z122 = q intersectionpoint p;
path q;
q = z3--z4;
z123 = q intersectionpoint p;
draw z122..z13..z123;
path q;
q = z0--z4;
z124 = q intersectionpoint p;
path q;
q = z0--z6;
z125 = q intersectionpoint p;
draw z124..z15..z125;
path q;
q = z1--z6;
z126 = q intersectionpoint p;
path q;
q = z1--z5;
z127 = q intersectionpoint p;
draw z126..z17..z127;

path p;
p= z0--z1--z2--z3-- cycle;
for j = 0 upto 19:
	z[200+j] = z8 + 15a*(cosd(18j), sind(18j) );
	path r;
	r = z8--z[200+j];
	z[250+j] = r intersectionpoint p;
endfor 
for j = 0 upto 9:
	draw z[250+j]--z[250+10+j] withcolor red;
endfor 

endfig;

numeric b, c;
b=4a;
c=4a;
beginfig(13);
%Steiner circles
z0 = (0,0);
z1 = z0 + (20a,0);
z2 = z1 +  (0,20a);
z3 = z2 -  (20a,0);
z4 = 0.5[z0, z3];
z5 = 0.5[z1, z2];
z6 = 0.5[z0, z1];
z7 = 0.5[z2, z3];
z8 = 0.5[z0, z2];
z9 = z8 - (b,0);
z10 = z8 + (b,0);

for i = 1 upto 6:
	z[10 + i] = z8 +sind(18i)* (0,c)/(1+ cosd(18i)); %18=180/10
	z[20 + i] = z8 -sind(18i)* (0,c)/(1- cosd(18i));
endfor 
for i = 3 upto 6:
	draw z10..z[10 + i]..z9..z[20 + i].. cycle withcolor red;
endfor
for i = 1 upto 2:
	path p, q, r;
	p = z4--z0--z6;
	q= z5--z1--z6;
	r = z10..z[10 + i]..z9..z[20 + i].. cycle;
	z[30+ i] = r intersectionpoint p;
	z[40+ i] = r intersectionpoint q;
	draw z[30+ i]..z9..z10..z[40+ i]  withcolor red;
endfor

for i = 1 upto 6:
	z[50 + i] = z8 -sind(18i)* (0,c)/(1+ cosd(18i)); %18=180/10
	z[60 + i] = z8 +sind(18i)* (0,c)/(1- cosd(18i));
endfor 
for i = 3 upto 6:
	draw z10..z[50 + i]..z9..z[60 + i].. cycle withcolor red;
endfor
for i = 1 upto 2:
	path p, q, r;
	p = z4--z3--z7;
	q= z5--z2--z7;
	r = z10..z[50 + i]..z9..z[60 + i].. cycle;
	z[70+ i] = r intersectionpoint p;
	z[80+ i] = r intersectionpoint q;
	draw z[70+ i]..z9..z10..z[80+ i]  withcolor red;
endfor
draw z4--z5 withcolor red;
%shifted base points
z90 = z0 + (a/2,a/2);
z91 = z1 + (-a/2,a/2);
z92 = z2 + (-a/2,-a/2);
z93 = z3+(a/2,-a/2);
z94 = z4+(a/2,0);
z95 = z5+(-a/2,0);
z96 = z6+(0,-a/2);
z97 = z7+(0,a/2);
z98 = z1+(0,-a/2);

for i = 1 upto 2:
	path p, q, r;
	p = z94--z90--z96;
	q= z95--z91--z96;
	r = z10..z[10 + i]..z9..z[20 + i].. cycle;
	z[30+ 5+ i] = r intersectionpoint p;
	z[40+ 5+ i] = r intersectionpoint q;
endfor
for i = 1 upto 2:
	path p, q, r;
	p = z94--z93--z97;
	q= z95--z92--z97;
	r = z10..z[50 + i]..z9..z[60 + i].. cycle;
	z[70+5+ i] = r intersectionpoint p;
	z[80+ 5+ i] = r intersectionpoint q;
endfor

for j = 1 upto 7:
	z[100+ j] = z8 + (b*(1.5**j -1)/(1.5**j +1),0); %( (1- j/8)*b, 0);
	z[110+ j] = z8 + (b*(1.5**j +1)/(1.5**j -1),0);%(b/(1- j/8), 0);
	z[120+ j] = 0.5[z[100+ j], z[110+ j]];
	z[130+ j] = (x[120+j], y[120+j] + x[120+j] - x[100+ j]);
	z[140+ j] = (x[120+j], y[120+j] - x[120+j] + x[100+ j]);
endfor
for j = 3 upto 7:
	draw z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z7--z2--z5;
	q = z6--z1--z5;
	r = z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
	z[150+ j] = r intersectionpoint p;
	z[160+ j] = r intersectionpoint q;
	draw z[150+ j]..z[100+ j]..z[160+ j];
endfor
%
for j = 1 upto 7:
	z[200+ j] = z8 -(b*(1.5**j -1)/(1.5**j +1),0);
	z[210+ j] = z8 -(b*(1.5**j +1)/(1.5**j -1),0);
	z[220+j] = 0.5[z[200+ j], z[210+ j]];
	z[230+j] = (x[220+j], y[220+j] + x[200+j] - x[220+ j]);%
	z[240+j] =  (x[220+j], y[220+j] +  x[220+ j] - x[200+j] );%
endfor
for j = 3upto 7:
	draw z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z7--z3--z4;
	q= z6--z0--z4;
	r = z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
	z[250+ j] = r intersectionpoint p;
	z[260+ j] = r intersectionpoint q;
	draw z[250+ j]..z[200+ j]..z[260+ j];
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z97--z92--z95;
	q = z96--z91--z95;
	r = z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
	z[150+5+ j] = r intersectionpoint p;
	z[160+5+ j] = r intersectionpoint q;
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z97--z93--z94;
	q= z96--z90--z94;
	r = z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
	z[250+5+ j] = r intersectionpoint p;
	z[260+5+ j] = r intersectionpoint q;
endfor

draw z6--z7;

endfig;


beginfig(14);
%Steiner circles, Elliptic action
z0 = (0,0);
z1 = z0 + (20a,0);
z2 = z1 +  (0,20a);
z3 = z2 -  (20a,0);
z4 = 0.5[z0, z3];
z5 = 0.5[z1, z2];
z6 = 0.5[z0, z1];
z7 = 0.5[z2, z3];
z8 = 0.5[z0, z2];
z9 = z8 - (b,0);
z10 = z8 + (b,0);

for i = 1 upto 6:
	z[10 + i] = z8 +sind(18i)* (0,c)/(1+ cosd(18i)); %18=180/10
	z[20 + i] = z8 -sind(18i)* (0,c)/(1- cosd(18i));
endfor 
for i = 3 upto 6:
	draw z10..z[10 + i]..z9..z[20 + i].. cycle withcolor red;
endfor
for i = 1 upto 2:
	path p, q, r;
	p = z4--z0--z6;
	q= z5--z1--z6;
	r = z10..z[10 + i]..z9..z[20 + i].. cycle;
	z[30+ i] = r intersectionpoint p;
	z[40+ i] = r intersectionpoint q;
	draw z[30+ i]..z9..z10..z[40+ i]  withcolor red;
endfor

for i = 1 upto 6:
	z[50 + i] = z8 -sind(18i)* (0,c)/(1+ cosd(18i)); %18=180/10
	z[60 + i] = z8 +sind(18i)* (0,c)/(1- cosd(18i));
endfor 
for i = 3 upto 6:
	draw z10..z[50 + i]..z9..z[60 + i].. cycle withcolor red;
endfor
for i = 1 upto 2:
	path p, q, r;
	p = z4--z3--z7;
	q= z5--z2--z7;
	r = z10..z[50 + i]..z9..z[60 + i].. cycle;
	z[70+ i] = r intersectionpoint p;
	z[80+ i] = r intersectionpoint q;
	draw z[70+ i]..z9..z10..z[80+ i]  withcolor red;
endfor
draw z4--z5 withcolor red;
%shifted base points
z90 = z0 + (a/2,a/2);
z91 = z1 + (-a/2,a/2);
z92 = z2 + (-a/2,-a/2);
z93 = z3+(a/2,-a/2);
z94 = z4+(a/2,0);
z95 = z5+(-a/2,0);
z96 = z6+(0,-a/2);
z97 = z7+(0,a/2);
z98 = z1+(0,-a/2);

for i = 1 upto 2:
	path p, q, r;
	p = z94--z90--z96;
	q= z95--z91--z96;
	r = z10..z[10 + i]..z9..z[20 + i].. cycle;
	z[30+ 5+ i] = r intersectionpoint p;
	z[40+ 5+ i] = r intersectionpoint q;
endfor
for i = 1 upto 2:
	path p, q, r;
	p = z94--z93--z97;
	q= z95--z92--z97;
	r = z10..z[50 + i]..z9..z[60 + i].. cycle;
	z[70+5+ i] = r intersectionpoint p;
	z[80+ 5+ i] = r intersectionpoint q;
endfor

pickup pencircle scaled 1pt;

for j = 1 upto 7:
	z[100+ j] = z8 + (b*(1.5**j -1)/(1.5**j +1),0); %( (1- j/8)*b, 0);
	z[110+ j] = z8 + (b*(1.5**j +1)/(1.5**j -1),0);%(b/(1- j/8), 0);
	z[120+ j] = 0.5[z[100+ j], z[110+ j]];
	z[130+ j] = (x[120+j], y[120+j] + x[120+j] - x[100+ j]);
	z[140+ j] = (x[120+j], y[120+j] - x[120+j] + x[100+ j]);
endfor
for j = 3 upto 7:
	draw z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z7--z2--z5;
	q = z6--z1--z5;
	r = z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
	z[150+ j] = r intersectionpoint p;
	z[160+ j] = r intersectionpoint q;
	draw z[150+ j]..z[100+ j]..z[160+ j];
endfor
%
for j = 1 upto 7:
	z[200+ j] = z8 -(b*(1.5**j -1)/(1.5**j +1),0);
	z[210+ j] = z8 -(b*(1.5**j +1)/(1.5**j -1),0);
	z[220+j] = 0.5[z[200+ j], z[210+ j]];
	z[230+j] = (x[220+j], y[220+j] + x[200+j] - x[220+ j]);%
	z[240+j] =  (x[220+j], y[220+j] +  x[220+ j] - x[200+j] );%
endfor
for j = 3 upto 7:
	draw z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z7--z3--z4;
	q= z6--z0--z4;
	r = z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
	z[250+ j] = r intersectionpoint p;
	z[260+ j] = r intersectionpoint q;
	draw z[250+ j]..z[200+ j]..z[260+ j];
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z97--z92--z95;
	q = z96--z91--z95;
	r = z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
	z[150+5+ j] = r intersectionpoint p;
	z[160+5+ j] = r intersectionpoint q;
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z97--z93--z94;
	q= z96--z90--z94;
	r = z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
	z[250+5+ j] = r intersectionpoint p;
	z[260+5+ j] = r intersectionpoint q;
endfor
draw z6--z7;

for j=3 upto 6:
	path p, q;
	p = z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
	q = z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
	for i= 0 upto 0:
		path r, s;
		r = z10--z5;
		s = z9--z4;
		z[300 + 20i +j] = r intersectionpoint p;
		z[300 + 20i +j +10] = s intersectionpoint q;
	endfor
endfor
for j=1 upto 6:
	path p, q;
	p = z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
	q = z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
	for i= 1 upto 5:
		path r;
		r = z10..z[60 + i]..z9;
		z[300 + 20i +j] = r intersectionpoint p;
		z[300 + 20i +j +10] = r intersectionpoint q;
	endfor
	for i= 4 step -1 until 1:
		path r;
		r = z10..z[10 + i]..z9;
		z[300 +200 - 20i +j] = r intersectionpoint p;
		z[300 +200 - 20i +j +10] = r intersectionpoint q;
	endfor
	for i= 0 upto 0:
		path r;
		r = z10..z9;
		z[300 + 200+j] = r intersectionpoint p;
		z[300 + 200+j  +10] = r intersectionpoint q;
	endfor
	for i= 1 upto 5:
		path r;
		r = z10..z[50 + i]..z9;
		z[300 +200 + 20i+j] = r intersectionpoint p;
		z[300 +200 + 20i+j +10] = r intersectionpoint q;
	endfor
		for i= 5 step -1 until 1:
		path r;
		r = z10..z[20 + i]..z9;
		z[300 +420 - 20i +j] = r intersectionpoint p;
		z[300 +420 - 20i +j +10] = r intersectionpoint q;
	endfor
endfor
%%%copy for j=0
for j=0 upto 0:
	path p;
	p = z6--z7;
	for i= 3 upto 5:
		path r;
		r = z10..z[60 + i]..z9;
		z[300 + 20i +j] = r intersectionpoint p;
	endfor
	for i= 4 step -1 until 1:
		path r;
		r = z10..z[10 + i]..z9;
		z[300 +200 - 20i +j] = r intersectionpoint p;
	endfor
	for i= 0 upto 0:
		path r;
		r = z10..z9;
		z[300 + 200+j] = r intersectionpoint p;
	endfor
	for i= 1 upto 5:
		path r;
		r = z10..z[50 + i]..z9;
		z[300 +200 + 20i+j] = r intersectionpoint p;
	endfor
	for i= 5 step -1 until 3:
		path r;
		r = z10..z[20 + i]..z9;
		z[300 +420 - 20i +j] = r intersectionpoint p;
	endfor
endfor

%%
for j=3 upto 4:
	for i = 0 upto 18:
		drawarrow z[300 + 20i + j ]..z[300 + 20i + j + 20]..z[300 + 20i +j+ 40] ;
		drawarrow z[300 + 20i +10 + j ]..z[300 + 20i +10+ j + 20]..z[300 + 20i+10 +j+ 40] ;
	endfor
	for i = 19 upto 19:
		drawarrow z[300 + 20i + j ]..z[300 + 20i + j + 20]..z[300 +j] ;
		drawarrow z[300 + 20i + j + 20]..z[300 +j]..z[300 +j+20] ;
		drawarrow z[300 + 20i +10+ j ]..z[300 + 20i +10+ j + 20]..z[300+10 +j] ;
		drawarrow z[300 + 20i +10+ j + 20]..z[300 +10+j]..z[300+10 +j+20] ;
	endfor
endfor
for j=2 upto 2:
	for i = 1 upto 18:
		drawarrow z[300 + 20i + j ]..z[300 + 20i + j + 20]..z[300 + 20i +j+ 40] ;
		drawarrow z[300 + 20i +10 + j ]..z[300 + 20i +10+ j + 20]..z[300 + 20i+10 +j+ 40] ;
	endfor
	for i = 1 upto 1:
		drawarrow z152..z[300 + 20i + j ]..z[300 + 20i + j + 20];
		drawarrow z152..z157..z[300 + 20i + j ];
		drawarrow z252..z[300 + 20i + j +10 ]..z[300 + 20i + j + 20 +10 ];
		drawarrow z252..z257..z[300 + 20i + j  +10 ];
	endfor
endfor
for j=1 upto 1:
	for i = 2 upto 17:
		drawarrow z[300 + 20i + j ]..z[300 + 20i + j + 20]..z[300 + 20i +j+ 40] ;
		drawarrow z[300 + 20i +10 + j ]..z[300 + 20i +10+ j + 20]..z[300 + 20i+10 +j+ 40] ;
	endfor
	for i = 2 upto 2:
		drawarrow z151..z[300 + 20i + j ]..z[300 + 20i + j + 20];
		drawarrow z151..z156..z[300 + 20i + j ];
		drawarrow z251..z[300 + 20i + j +10]..z[300 + 20i + j + 20+10];
		drawarrow z251..z256..z[300 + 20i + j +10];
	endfor
endfor
for j=0 upto 0:
	for i = 3 upto 16:
		drawarrow z[300 + 20i + j ]..z[300 + 20i + j + 20]..z[300 + 20i +j+ 40] ;
	endfor
	for i = 3 upto 3:
		drawarrow z7..z[300 + 20i + j ]..z[300 + 20i + j + 20] ;
		drawarrow z7--z[300 + 20i + j ];
	endfor
endfor

endfig;

beginfig(15);
%Steiner circles: hyperbolic action 
z0 = (0,0);
z1 = z0 + (20a,0);
z2 = z1 +  (0,20a);
z3 = z2 -  (20a,0);
z4 = 0.5[z0, z3];
z5 = 0.5[z1, z2];
z6 = 0.5[z0, z1];
z7 = 0.5[z2, z3];
z8 = 0.5[z0, z2];
z9 = z8 - (b,0);
z10 = z8 + (b,0);

for i = 1 upto 6:
	z[10 + i] = z8 +sind(18i)* (0,c)/(1+ cosd(18i)); %18=180/10
	z[20 + i] = z8 -sind(18i)* (0,c)/(1- cosd(18i));
endfor 
for i = 3 upto 6:
	draw z10..z[10 + i]..z9..z[20 + i].. cycle withcolor red;
endfor
for i = 1 upto 2:
	path p, q, r;
	p = z4--z0--z6;
	q= z5--z1--z6;
	r = z10..z[10 + i]..z9..z[20 + i].. cycle;
	z[30+ i] = r intersectionpoint p;
	z[40+ i] = r intersectionpoint q;
endfor

for i = 1 upto 6:
	z[50 + i] = z8 -sind(18i)* (0,c)/(1+ cosd(18i)); %18=180/10
	z[60 + i] = z8 +sind(18i)* (0,c)/(1- cosd(18i));
endfor 
for i = 3 upto 6:
	draw z10..z[50 + i]..z9..z[60 + i].. cycle withcolor red;
endfor
for i = 1 upto 2:
	path p, q, r;
	p = z4--z3--z7;
	q= z5--z2--z7;
	r = z10..z[50 + i]..z9..z[60 + i].. cycle;
	z[70+ i] = r intersectionpoint p;
	z[80+ i] = r intersectionpoint q;
endfor
draw z4--z5 withcolor red;

%shifted base points
z90 = z0 + (a/2,a/2);
z91 = z1 + (-a/2,a/2);
z92 = z2 + (-a/2,-a/2);
z93 = z3+(a/2,-a/2);
z94 = z4+(a/2,0);
z95 = z5+(-a/2,0);
z96 = z6+(0,-a/2);
z97 = z7+(0,a/2);
z98 = z1+(0,-a/2);

for i = 1 upto 2:
	path p, q, r;
	p = z94--z90--z96;
	q= z95--z91--z96;
	r = z10..z[10 + i]..z9..z[20 + i].. cycle;
	z[30+ 5+ i] = r intersectionpoint p;
	z[40+ 5+ i] = r intersectionpoint q;
endfor
for i = 1 upto 2:
	path p, q, r;
	p = z94--z93--z97;
	q= z95--z92--z97;
	r = z10..z[50 + i]..z9..z[60 + i].. cycle;
	z[70+ 5+ i] = r intersectionpoint p;
	z[80+ 5+ i] = r intersectionpoint q;
endfor

for j = 1 upto 7:
	z[100+ j] = z8 + (b*(1.5**j -1)/(1.5**j +1),0); %( (1- j/8)*b, 0);
	z[110+ j] = z8 + (b*(1.5**j +1)/(1.5**j -1),0);%(b/(1- j/8), 0);
	z[120+ j] = 0.5[z[100+ j], z[110+ j]];
	z[130+ j] = (x[120+j], y[120+j] + x[120+j] - x[100+ j]);
	z[140+ j] = (x[120+j], y[120+j] - x[120+j] + x[100+ j]);
endfor
for j = 3 upto 7:
	draw z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z7--z2--z5;
	q = z6--z1--z5;
	r = z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
	z[150+ j] = r intersectionpoint p;
	z[160+ j] = r intersectionpoint q;
	draw z[150+ j]..z[100+ j]..z[160+ j];
endfor
%
for j = 1 upto 7:
	z[200+ j] = z8 -(b*(1.5**j -1)/(1.5**j +1),0);
	z[210+ j] = z8 -(b*(1.5**j +1)/(1.5**j -1),0);
	z[220+j] = 0.5[z[200+ j], z[210+ j]];
	z[230+j] = (x[220+j], y[220+j] + x[200+j] - x[220+ j]);%
	z[240+j] =  (x[220+j], y[220+j] +  x[220+ j] - x[200+j] );%
endfor
for j = 3upto 7:
	draw z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z7--z3--z4;
	q= z6--z0--z4;
	r = z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
	z[250+ j] = r intersectionpoint p;
	z[260+ j] = r intersectionpoint q;
	draw z[250+ j]..z[200+ j]..z[260+ j];
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z97--z92--z95;
	q = z96--z91--z95;
	r = z[100+ j]..z[130+j]..z[110+ j]..z[140+j].. cycle;
	z[150+5+ j] = r intersectionpoint p;
	z[160+5+ j] = r intersectionpoint q;
endfor
for j = 1 upto 2:
	path p, q, r;
	p = z97--z93--z94;
	q= z96--z90--z94;
	r = z[200+ j]..z[230+j]..z[210+ j]..z[240+j].. cycle;
	z[250+5+ j] = r intersectionpoint p;
	z[260+5+ j] = r intersectionpoint q;
endfor

draw z6--z7;

%%z300, z400
pickup pencircle scaled 1pt;
for i = 1 upto 2:
	draw z[30+ i]..z9..z10..z[40+ i]  withcolor red;
	draw z[70+ i]..z9..z10..z[80+ i]  withcolor red;
endfor

for i = 0 upto 5:
	path p;
	if i = 0:
		p = z10--z9;
	else :
   		p= z10..z[10 + i]..z9..z[20 + i].. cycle;
	fi
   	for j= 8 upto 8:%
   		z[300 + 10i + j] =  z10;
   	endfor
   	for j= 1 upto 7:
   		path q;
   		q = z[100+ j]..z[130+j]..z[110+ j] ;
   		z[300 + 10i + j] =  p intersectionpoint q;
   	endfor
   	for j= 0 upto 0:%
   		path q;
   		q = z7..z8 ;
   		z[300 + 10i + j] =  p intersectionpoint q;
   	endfor
endfor

for i = 0 upto 5:
	for j= 0 upto 5:
		drawarrow z[300 + 10i + j+2] ..z[300 + 10i + j+1]..z[300 + 10i + j] withcolor red;
	endfor
endfor

z[400] =  z10;
for i = 8  upto 8:%
	path p;
	p = z10--z5;
	for j= 3 upto 7:%1 upto 4
		path q;
		q = z[100+ j]..z[140+j]..z[110+ j] ;
		z[400 + 10i + j] =  p intersectionpoint q;
	endfor
endfor	
for i = 1  upto 6:%1  upto 5:
	path p;
	if i = 8:%
		p = z10--z5;
	else :
   		p= z10..z[10 + i]..z9..z[20 + i].. cycle;
	fi
   	for j= 8 upto 8:%0 upto 0
   		z[400 + 10i + j] =  z10;
   	endfor
   	for j= 1 upto 7:%
   		path q;
   		q = z[100+ j]..z[140+j]..z[110+ j] ;
   		z[400 + 10i + j] =  p intersectionpoint q;
   	endfor
 endfor
 
 for i = 3  upto 5:%3  upto 4:
	path p;
   	p= z10..z[10 + i]..z9..z[20 + i].. cycle;
	for j= 0 upto 0:%8 upto 8
   		path q;
   		q = z6--z8 ;
   		z[400 + 10i + j] =  p intersectionpoint q;
   	endfor
endfor

for i = 3 upto 4:%3 upto 4
	for j= 0 upto 5:% 0 upto 6
		drawarrow z[400 + 10i + j+2]..z[400 + 10i + j+1]..z[400 + 10i + j] withcolor red;
	endfor
endfor
for i = 2 upto 2:%7 upto 7
	for j= 1 upto 5:%5
		drawarrow z[400 + 10i + j+2]..z[400 + 10i + j+1]..z[400 + 10i + j] withcolor red;
	endfor
endfor
for i = 1 upto 1:%8 upto 8
	for j= 2 upto 4:
		drawarrow z[400 + 10i + j+2]..z[400 + 10i + j+1]..z[400 + 10i + j] withcolor red;
	endfor
endfor
for i = 8 upto 8:
	for j= 3 upto 5:
		drawarrow z[400 + 10i + j+2]..z[400 + 10i + j+1]..z[400 + 10i + j] withcolor red;
	endfor
endfor

%%z500, z600
for i = 1 upto 5:
	path p;
	p= z10..z[50 + i]..z9..z[60 + i].. cycle;
   	for j= 8 upto 8:
   		z[500 + 10i + j] =  z10;
   	endfor
   	for j= 1 upto 7:
   		path q;
   		q = z[100+ j]..z[140+j]..z[110+ j] ;%
   		z[500 + 10i + j] =  p intersectionpoint q;
   	endfor
   	for j= 0 upto 0:
   		path q;
   		q = z6..z8 ;
   		z[500 + 10i + j] =  p intersectionpoint q;
   	endfor
endfor

for i = 1 upto 5:
	for j= 0 upto 5:
		drawarrow z[500 + 10i + j+2]..z[500 + 10i + j+1]..z[500 + 10i + j] withcolor red;
	endfor
endfor

for i = 1  upto 5:
	path p;
	if i = 0:
		p = z10--z5;
	else :
   		p= z10..z[50 + i]..z9..z[60 + i].. cycle;
	fi
   	for j= 8 upto 8:
   		z[600 + 10i + j] =  z10;
   	endfor
   	for j= 1 upto 7:
   		path q;
   		q = z[100+ j]..z[130+j]..z[110+ j] ;
   		z[600 + 10i + j] =  p intersectionpoint q;
   	endfor
 endfor
 for i = 3  upto 4:
	path p;
   	p= z10..z[50 + i]..z9..z[60 + i].. cycle;
	for j= 0 upto 0:
   		path q;
   		q = z7--z8 ;
   		z[600 + 10i + j] =  p intersectionpoint q;
   	endfor
endfor

for i = 3 upto 4:
	for j= 0 upto 5:
		drawarrow z[600 + 10i + j+2]..z[600 + 10i + j+1]..z[600 + 10i + j] withcolor red;
	endfor
endfor
for i = 2 upto 2:
	for j= 1 upto 5:
		drawarrow z[600 + 10i + j+2]..z[600 + 10i + j+1]..z[600 + 10i + j] withcolor red;
	endfor
endfor
for i = 1 upto 1:
	for j= 2 upto 4:
		drawarrow z[600 + 10i + j+2]..z[600 + 10i + j+1]..z[600 + 10i + j] withcolor red;
	endfor
endfor

%%%z700, z800
for i = 0 upto 5:
	path p;
	if i = 0:
		p = z10--z9;
	else :
   		p= z10..z[10 + i]..z9..z[20 + i].. cycle;
	fi
   	for j= 8 upto 8:
   		z[700 + 10i + j] =  z9;
   	endfor
   	for j= 1 upto 7:
   		path q;
   		q = z[200+ j]..z[230+j]..z[210+ j] ;
   		z[700 + 10i + j] =  p intersectionpoint q;
   	endfor
   	for j= 0 upto 0:
   		path q;
   		q = z7..z8 ;
   		z[700 + 10i + j] =  p intersectionpoint q;
   	endfor
	for j= -1 upto -1:
    		z[700 + 10i + j] =  z[300 + 10i + 7];%%
   	endfor
endfor

for i = 0 upto 5:
	for j= -1 upto 3:
		drawarrow z[700 + 10i + j]..z[700 + 10i + j+1]..z[700 + 10i + j+2] withcolor red;
	endfor
endfor

z[800] =  z9;
for i = 8  upto 8:
	path p;
	p = z9--z4;%
	for j= 3 upto 7:
		path q;
		q = z[200+ j]..z[240+j]..z[210+ j] ;
		z[800 + 10i + j] =  p intersectionpoint q;
	endfor
endfor	
for i = 1 upto 5:%
	path p;
	if i = 8:%
		p = z9--z4;
	else :
   		p= z10..z[10 + i]..z9..z[20 + i].. cycle;
	fi
   	for j= 8 upto 8:
   		z[800 + 10i + j] =  z9;
   	endfor
   	for j= 1 upto 7:
   		path q;
   		q = z[200+ j]..z[240+j]..z[210+ j] ;%
   		z[800 + 10i + j] =  p intersectionpoint q;
   	endfor
 endfor
 for i = 3  upto 4:
	path p;
   	p= z10..z[10 + i]..z9..z[20 + i].. cycle;
	for j= 0 upto 0:
   		path q;
   		q = z6--z8 ;
   		z[800 + 10i + j] =  p intersectionpoint q;
   	endfor
	for j= -1 upto -1:
    		z[800 + 10i + j] =  z[400 + 10i + 1];%%
   	endfor
endfor
%%%%%
for i = 3 upto 4:
	for j= -1 upto 4:
		drawarrow z[800 + 10i + j]..z[800 + 10i + j+1]..z[800 + 10i + j+2] withcolor red;
	endfor
endfor
for i = 2 upto 2:
	for j= 1 upto 4:
		drawarrow z[800 + 10i + j]..z[800 + 10i + j+1]..z[800 + 10i + j+2] withcolor red;
	endfor
endfor
drawarrow z32..z[800 + 20 +1]..z[800 + 20 +2] withcolor red;
drawarrow z32..z37..z[800 + 20 +1] withcolor red;
for i = 1 upto 1:
	for j= 2 upto 4:
		drawarrow z[800 + 10i + j]..z[800 + 10i + j+1]..z[800 + 10i + j+2] withcolor red;
	endfor
endfor
drawarrow z31..z[800 + 10 +2]..z[800 + 10 +3] withcolor red;
drawarrow z31..z36..z[800 + 10 +2] withcolor red;

for i = 8 upto 8:
	for j= 3 upto 4:
		drawarrow z[800 + 10i + j]..z[800 + 10i + j+1]..z[800 + 10i + j+2] withcolor red;
	endfor
endfor
drawarrow z4--z[800 + 80 + 4] withcolor red;
drawarrow z4--z[800 + 80 + 3] withcolor red;

%%z900, z1000
for i = 	1 upto 5:
	path p;
	p= z10..z[50 + i]..z9..z[60 + i].. cycle;
   	for j= 8 upto 8:
   		z[900 + 10i + j] =  z9;
   	endfor
   	for j= 1 upto 7:
   		path q;
   		q = z[200+ j]..z[240+j]..z[210+ j] ;%
   		z[900 + 10i + j] =  p intersectionpoint q;
   	endfor
   	for j= 0 upto 0:
   		path q;
   		q = z6..z8 ;
   		z[900 + 10i + j] =  p intersectionpoint q;
   	endfor
	for j= -1 upto -1:
    		z[900 + 10i + j] =  z[500 + 10i + 7];%
   	endfor
endfor

for i = 1 upto 5:
	for j= -1 upto 3: %
		drawarrow z[900 + 10i + j]..z[900 + 10i + j+1]..z[900 + 10i + j+2] withcolor red;
	endfor
endfor
%%%%%
for i = 1  upto 5:
	path p;
	if i = 8:
		p = z9--z4;
	else :
   		p= z10..z[50 + i]..z9..z[60 + i].. cycle;
	fi
   	for j= 8 upto 8:
   		z[1000 + 10i + j] =  z9;
   	endfor
   	for j= 1 upto 7:
   		path q;
   		%q = z[100+ j]..z[130+j]..z[110+ j] ;
		q = z[200+ j]..z[230+j]..z[210+ j] ;%
   		z[1000 + 10i + j] =  p intersectionpoint q;
   	endfor
 endfor
 for i = 3  upto 4:
	path p;
   	p= z10..z[50 + i]..z9..z[60 + i].. cycle;
	for j= 0 upto 0:
   		path q;
   		q = z7--z8 ;
   		z[1000 + 10i + j] =  p intersectionpoint q;
   	endfor
	for j= -1 upto -1:
    		z[1000 + 10i + j] =  z[600 + 10i + 1];%%
   	endfor
endfor
%
for i = 3 upto 4:
	for j= -1 upto 4:
		drawarrow z[1000 + 10i + j]..z[1000 + 10i + j+1]..z[1000 + 10i + j+2] withcolor red;
	endfor
endfor
for i = 2 upto 2:
	for j= 1 upto 4:
		drawarrow z[1000 + 10i + j]..z[1000 + 10i + j+1]..z[1000 + 10i + j+2] withcolor red;
	endfor
endfor
drawarrow z72..z[1000 + 20 +1]..z[1000 + 20 +2] withcolor red;
drawarrow z72..z77..z[1000 + 20 +1] withcolor red;
for i = 1 upto 1:
	for j= 2 upto 4:
		drawarrow z[1000 + 10i + j]..z[1000 + 10i + j+1]..z[1000 + 10i + j+2] withcolor red;
	endfor
endfor
drawarrow z71..z[1000 + 10 +2]..z[1000 + 10 +3] withcolor red;
drawarrow z71..z76..z[1000 + 10 +2] withcolor red;
draw z6--z7;
endfig;

numeric b;
b = a/10;
beginfig(16);
%Steiner circles for parabolic
z0 = (0,0);
z1 = z0 + (20a,0);
z2 = z1 + (0,20a);
z3 = z2 -  (20a,0);
z4 = 0.5[z0, z3];
z5 = 0.5[z1, z2];
z6 = 0.5[z0, z1];
z7 = 0.5[z2, z3];
z8 = 0.5[z0, z2];

for i = 1 upto 11:
	numeric c;
	c = 1.5**i ;
	z[10+i] = z8 + c*(b,b);
	z[30+i] = z8 + c* (0, 2b);
	z[50+i] = z8 + c*(-b,b);
	z[110+i] = z8 + c*(b,-b);
	z[130+i] = z8 + c* (0, -2b);
	z[150+i] = z8 + c*(-b,-b);
endfor 
for i = 2 upto 9:
	draw z8..z[10+i]..z[30+i]..z[50+i].. cycle withcolor red;
	draw z8..z[110+i]..z[130+i]..z[150+i].. cycle withcolor red;
endfor;

for i = 10 upto 11:
	path p;
	p = z8..z[10+i]..z[30+i]..z[50+i].. cycle;
	path q, r;
	q = z5--z2--z7 ;
	r = z4--z3--z7 ;
	z[70+i] = q intersectionpoint p;
	z[90+i] = r intersectionpoint p;
endfor
for i = 10 upto 11:
	path p;
	p = z8..z[110+i]..z[130+i]..z[150+i].. cycle;
	path q, r;
	q = z5--z1--z6 ;
	r = z4--z0--z6 ;
	z[170+i] = q intersectionpoint p;
	z[190+i] = r intersectionpoint p;
endfor
draw z4--z5 withcolor red;

z204 = z2-(0,0.4a);
z205 = z3-(0,0.4a);
z206 = z1+(0,0.4a);
z207 = z0+(0,0.4a);
%%%%
for i = 1 upto 11:
	numeric c;
	c = 1.5**i ;
	z[200+10+i] = z8 + c*(b,b);
	z[200+30+i] = z8 + c* (2b,0);
	z[200+50+i] = z8 + c*(b,-b);
	z[200+110+i] = z8 + c*(-b,b);
	z[200+130+i] = z8 + c* (-2b,0);
	z[200+150+i] = z8 + c*(-b,-b);
endfor 

for i = 10 upto 11:
	path p;
	p = z8..z[200+10+i]..z[200+30+i]..z[200+50+i].. cycle;
	path q, r;
	q = z6--z1--z5 ;
	r = z7--z2--z5 ;
	z[200+70+i] = q intersectionpoint p;
	z[200+90+i] = r intersectionpoint p;
endfor

for i = 2 upto 9:
	draw z8..z[200+10+i]..z[200+30+i]..z[200+50+i].. cycle;
	draw z8..z[200+110+i]..z[200+130+i]..z[200+150+i].. cycle;
endfor;
for i = 10 upto 11:
	path p;
	p = z8..z[200+110+i]..z[200+130+i]..z[200+150+i].. cycle;
	path q, r;
	q = z7--z3--z4 ;
	r = z6--z0--z4 ;
	z[200+170+i] = q intersectionpoint p;
	z[200+190+i] = r intersectionpoint p;
endfor
for i = 10 upto 11:
	draw z[200+70+i]..z8..z[200+90+i];
	draw z[200+170+i]..z8..z[200+190+i];
endfor;
draw z6--z7;

for i = 3 upto 11:
	for j = 3 upto 11:
		path p, q;
		p= z[50+i]..z[30+i]..z[10+i]..z8 ;
		q= z[200+30+j]..z[200+10+j]..z8 ;
		z[400 + 10i + j ] = p intersectionpoint q;
	endfor;
endfor;
for i = 3 upto 11:
	for j = 3 upto 11:
		path p, q;
		p= z[130+i]..z[110+i]..z8 ;
		q= z[200+30+j]..z[200+50+j]..z8 ;
		z[600 + 10i + j ] = p intersectionpoint q;
	endfor;
endfor;

for i = 3 upto 11:
	for j = 3 upto 11:
		path p, q;
		p= z[50+i]..z[30+i]..z[10+i]..z8 ;
		q= z[200+30+j]..z[200+10+j]..z8 ;
		z[400 + 10i + j ] = p intersectionpoint q;
	endfor;
endfor;
for i = 3 upto 11:
   	path p, q;
	p= z[50+i]..z[30+i]..z[10+i]..z8 ;
	q= z7..z8 ;
	z[400 + 10i +12] = p intersectionpoint q;
endfor;

for i = 3 upto 11:
	for j = 3 upto 11:
		path p, q;
		p= z[30+i]..z[50+i]..z8 ;
		q= z[200+130+j]..z[200+110+j]..z8 ;
		z[800 + 10i + j ] = p intersectionpoint q;
	endfor;
endfor;
for i = 3 upto 9:
		path p, q;
		p = z[30+i]..z[50+i]..z8 ;
		q = z7--z8 ;
		z[800 + 10i + 12 ] = p intersectionpoint q;%
endfor;
for i = 10 upto 11:
		path p, q;
		p = z[30+i]..z[50+i]..z8 ;
		q = z204--z205 ;%
		z[800 + 10i + 12 ] = p intersectionpoint q;%
endfor;
for i = 3 upto 11:
	for j = 3 upto 11:
		path p, q;
		p= z[130+i]..z[150+i]..z8 ;
		q= z[200+130+j]..z[200+150+j]..z8 ;
		z[1000 + 10i + j ] = p intersectionpoint q;
	endfor;
endfor;
for i = 3 upto 11:
	path p, q;
	p= z[130+ i]..z[110+ i]..z8 ;
	q= z6..z8 ;
	z[600 + 10i + 12 ] = p intersectionpoint q;
endfor;
for i = 3 upto 9:
	path p, q;
	p= z[130+i]..z[150+i]..z8 ;
	q= z6..z8 ;
	z[1000 + 10i + 12 ] = p intersectionpoint q;%
endfor;
for i = 10 upto 11:
	path p, q;
	p= z[130+i]..z[150+i]..z8 ;
	q= z206..z207 ;
	z[1000 + 10i + 12 ] = p intersectionpoint q;%
endfor;
for i = 3 upto 9:
		path p, q;
		p= z[200+10+i]..z[200+30+i]..z[200+50+i] ;
		q= z5..z8 ;
		z[1200 + i] = p intersectionpoint q;
endfor;
for i = 3 upto 9:
		path p, q;
		p= z[200+110+i]..z[200+130+i]..z[200+150+i] ;
		q= z4..z8 ;
		z[1250 + i] = p intersectionpoint q;
endfor;

pickup pencircle scaled 1pt;
for i = 10 upto 11:
	draw z[70+i]..z8..z[90+i] withcolor red;
	draw z[170+i]..z8..z[190+i] withcolor red;
endfor;

for i = 4 upto 11:
	for j = 4 upto 9:
		drawarrow z[400 + 10i + j ]..z[400 + 10i + j+1]..z[400 + 10i + j +2] withcolor red;
		drawarrow z[600 + 10i + j ]..z[600 + 10i + j+1]..z[600 + 10i + j +2] withcolor red;
		drawarrow z[800 + 10i + j+2 ]..z[800 + 10i + j+1]..z[800 + 10i + j ] withcolor red;
		drawarrow z[1000 + 10i + j+2 ]..z[1000 + 10i + j+1]..z[1000 + 10i + j ] withcolor red;
	endfor;
endfor;
for i = 4 upto 9:
	for j = 10 upto 10:
		drawarrow z[400 + 10i + j ]..z[400 + 10i + j+1]..z[400 + 10i + j +2] withcolor red;
		drawarrow z[600 + 10i + j ]..z[600 + 10i + j+1]..z[600 + 10i + j +2] withcolor red;
		drawarrow z[800 + 10i + j+2 ]..z[800 + 10i + j+1]..z[800 + 10i + j ] withcolor red;
		drawarrow z[1000 + 10i + j+2 ]..z[1000 + 10i + j+1]..z[1000 + 10i + j ] withcolor red;
	endfor;
	drawarrow z[400+ 10i  +11]..z[800 + 10i +12]..z[800 + 10i +11] withcolor red;
	drawarrow z[600+ 10i  +11]..z[1000 + 10i +12]..z[1000 + 10i +11] withcolor red;
endfor;
%%
drawarrow z[90+10]..z[800 + 100 + 11]..z[800 + 100 + 10] withcolor red;
drawarrow z[90+10]..z[800 + 100 + 12]..z[800 + 100 + 11]  withcolor red;%
drawarrow z[90+11]..z[800 + 110 + 11]..z[800 + 110 + 10] withcolor red;
drawarrow z[90+11]..z[800 + 110 + 12]..z[800 + 110 + 11]withcolor red;%
drawarrow z[190+10]..z[1000 + 100 + 11]..z[1000 + 100 + 10] withcolor red;
drawarrow z[190+10]..z[1000 + 100 + 12]..z[1000 + 100 + 11] withcolor red;%
drawarrow z[190+11]..z[1000 + 110 + 11]..z[1000 + 110 + 10] withcolor red;
drawarrow z[190+11]..z[1000 + 110 + 12]..z[1000 + 110 + 11] withcolor red;%

for i = 3 upto 8 :
	drawarrow z[1200 + i]--z[1200 + i+1] withcolor red;
	drawarrow z[1250 + i+1]--z[1250 + i] withcolor red;
endfor;
drawarrow z4--z[1250 + 9] withcolor red;

endfig;

%beginfig(16);copy
%%Steiner circles for 
%z0 = (0,0);
%z1 = z0 + (20a,0);
%z2 = z1 +  (0,20a);
%z3 = z2 -  (20a,0);
%z4 = 0.5[z0, z3];
%z5 = 0.5[z1, z2];
%z6 = 0.5[z0, z1];
%z7 = 0.5[z2, z3];
%z8 = 0.5[z0, z2];
%
%for i = 1 upto 11:
%	numeric c;
%	c = 1.5**i ;
%	z[10+i] = z8 + c*(b,b);
%	z[30+i] = z8 + c* (0, 2b);
%	z[50+i] = z8 + c*(-b,b);
%	z[110+i] = z8 + c*(b,-b);
%	z[130+i] = z8 + c* (0, -2b);
%	z[150+i] = z8 + c*(-b,-b);
%endfor 
%for i = 2 upto 9:
%	draw z8..z[10+i]..z[30+i]..z[50+i].. cycle withcolor red;
%	draw z8..z[110+i]..z[130+i]..z[150+i].. cycle withcolor red;
%endfor;
%
%for i = 10 upto 11:
%	path p;
%	p = z8..z[10+i]..z[30+i]..z[50+i].. cycle;
%	path q, r;
%	q = z5--z2--z7 ;
%	r = z4--z3--z7 ;
%	z[70+i] = q intersectionpoint p;
%	z[90+i] = r intersectionpoint p;
%endfor
%for i = 10 upto 11:
%	path p;
%	p = z8..z[110+i]..z[130+i]..z[150+i].. cycle;
%	path q, r;
%	q = z5--z1--z6 ;
%	r = z4--z0--z6 ;
%	z[170+i] = q intersectionpoint p;
%	z[190+i] = r intersectionpoint p;
%endfor
%for i = 10 upto 11:
%	draw z[70+i]..z8..z[90+i] withcolor red;
%	draw z[170+i]..z8..z[190+i] withcolor red;
%endfor;
%draw z4--z5 withcolor red;
%
%%%%
%for i = 1 upto 11:
%	numeric c;
%	c = 1.5**i ;
%	z[200+10+i] = z8 + c*(b,b);
%	z[200+30+i] = z8 + c* (2b,0);
%	z[200+50+i] = z8 + c*(b,-b);
%	z[200+110+i] = z8 + c*(-b,b);
%	z[200+130+i] = z8 + c* (-2b,0);
%	z[200+150+i] = z8 + c*(-b,-b);
%endfor 
%for i = 10 upto 11:
%	path p;
%	p = z8..z[200+10+i]..z[200+30+i]..z[200+50+i].. cycle;
%	path q, r;
%	q = z6--z1--z5 ;
%	r = z7--z2--z5 ;
%	z[200+70+i] = q intersectionpoint p;
%	z[200+90+i] = r intersectionpoint p;
%endfor
%
%for i = 2 upto 9:
%	draw z8..z[200+10+i]..z[200+30+i]..z[200+50+i].. cycle;
%	draw z8..z[200+110+i]..z[200+130+i]..z[200+150+i].. cycle;
%endfor;
%for i = 10 upto 11:
%	path p;
%	p = z8..z[200+110+i]..z[200+130+i]..z[200+150+i].. cycle;
%	path q, r;
%	q = z7--z3--z4 ;
%	r = z6--z0--z4 ;
%	z[200+170+i] = q intersectionpoint p;
%	z[200+190+i] = r intersectionpoint p;
%endfor
%for i = 10 upto 11:
%	draw z[200+70+i]..z8..z[200+90+i];
%	draw z[200+170+i]..z8..z[200+190+i];
%endfor;
%draw z6--z7;
%endfig;

beginfig(17);
%Steiner circles, 0, \infty
z0 = (0,0);
z1 = z0 + (20a,0);
z2 = z1 +  (0,20a);
z3 = z2 -  (20a,0);
z4 = 0.5[z0, z3];
z5 = 0.5[z1, z2];
z6 = 0.5[z0, z1];
z7 = 0.5[z2, z3];
z8 = 0.5[z0, z2];

for i = 0 upto 10:
	numeric b;
	b = 0.66**i ;
	for j = 0 upto 7:
		z[10+10i+j] = z8 + 11a*(cosd(45j), sind(45j) )*b ;
	endfor
endfor 

path p;
p = for j = 0 upto 7:
		z[10+j]..
	endfor 
	cycle;
path q ;
q = z2--z5;
z120 = q intersectionpoint p;
path q;
q = z2--z7;
z121 = q intersectionpoint p;
path q;
q = z3--z7;
z122 = q intersectionpoint p;
path q;
q = z3--z4;
z123 = q intersectionpoint p;
path q;
q = z0--z4;
z124 = q intersectionpoint p;
path q;
q = z0--z6;
z125 = q intersectionpoint p;
path q;
q = z1--z6;
z126 = q intersectionpoint p;
path q;
q = z1--z5;
z127 = q intersectionpoint p;

z130 = z8 + 15a*(cosd(18+9), sind(18+9) );
path p, q;
p =  z120..z11..z121;
q = z8--z130;
z140 = q intersectionpoint p;
z132 = z8 + 15a*(cosd(6*18+9), sind(6*18+9) );
path p, q;
p =  z122..z13..z123;
q = z8--z132;
z142 = q intersectionpoint p;
z134 = z8 + 15a*(cosd(11*18+9), sind(11*18+9) );
path p, q;
p =  z124..z15..z125;
q = z8--z134;
z144 = q intersectionpoint p;
z136 = z8 + 15a*(cosd(16*18+9), sind(16*18+9) );
path p, q;
p =  z126..z17..z127;
q = z8--z136;
z146 = q intersectionpoint p;

path p;
p= z0--z1--z2--z3-- cycle;
for j = 0 upto 19:
	z[200+j] = z8 + 15a*(cosd(18j), sind(18j) );
	path r;
	r = z8--z[200+j];
	z[250+j] = r intersectionpoint p;
endfor 
for j = 0 upto 9:
	draw z[250+j]--z[250+10+j] withcolor red;
endfor 

for i=1 upto 10: 
	path p;
	p = for j = 0 upto 7:
		z[10+10i+j]..
	endfor cycle;
	for j = 0 upto 19:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
endfor 
for i=1 upto 10:
	draw 
		for j = 0 upto 7:
			z[10+10i+j]..
		endfor 
		cycle;
endfor 


pickup pencircle scaled 1pt;
draw z120..z11..z121;
draw z122..z13..z123;
draw z124..z15..z125;
draw z126..z17..z127;

for i=1 upto 6: 
	for j = 0 upto 17:
		drawarrow
			z[300+20i + j]..z[300+20i + j+1]..z[300+20i + j+2];
	endfor 
	for j = 18 upto 18:
		drawarrow
			z[300+20i + j]..z[300+20i + j+1]..z[300+20i + j + 2-20];
	endfor 
	for j = 19 upto 19:
		drawarrow
			z[300+20i + j]..z[300+20i + j+1-20]..z[300+20i + j + 2-20];
	endfor 
endfor 
for i=11 upto 11: 
	path p;
	p = z120..z11..z121;
	for j = 2 upto 3:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
	drawarrow z120..z[300+20i + 2]..z[300+20i + 3];
	drawarrow z120..z140..z[300+20i + 2];
	path p;
	p = z122..z13..z123;
	for j = 7 upto 8:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
	drawarrow z122..z[300+20i + 7]..z[300+20i + 8];
	drawarrow z122..z142..z[300+20i + 7];
	path p;
	p = z124..z15..z125;
	for j = 12 upto 13:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
	drawarrow z124..z[300+20i + 12]..z[300+20i + 13];
	drawarrow z124..z144..z[300+20i + 12];
	path p;
	p = z126..z17..z127;
	for j = 17 upto 18:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
	drawarrow z126..z[300+20i + 17]..z[300+20i + 18];
	drawarrow z126..z146..z[300+20i + 17];
endfor 

endfig;

beginfig(18);
%Steiner circles, 0, \infty
z0 = (0,0);
z1 = z0 + (20a,0);
z2 = z1 +  (0,20a);
z3 = z2 -  (20a,0);
z4 = 0.5[z0, z3];
z5 = 0.5[z1, z2];
z6 = 0.5[z0, z1];
z7 = 0.5[z2, z3];
z8 = 0.5[z0, z2];

for i = 0 upto 10:
	numeric b;
	b = 0.66**i ;
	for j = 0 upto 7:
		z[10+10i+j] = z8 + 11a*(cosd(45j), sind(45j) )*b ;
	endfor
endfor 

path p;
p = for j = 0 upto 7:
			z[10+j]..
	endfor 
	cycle;
path q;
q = z2--z5;
z120 = q intersectionpoint p;
path q;
q = z2--z7;
z121 = q intersectionpoint p;
draw z120..z11..z121;
path q;
q = z3--z7;
z122 = q intersectionpoint p;
path q;
q = z3--z4;
z123 = q intersectionpoint p;
draw z122..z13..z123;
path q;
q = z0--z4;
z124 = q intersectionpoint p;
path q;
q = z0--z6;
z125 = q intersectionpoint p;
draw z124..z15..z125;
path q;
q = z1--z6;
z126 = q intersectionpoint p;
path q;
q = z1--z5;
z127 = q intersectionpoint p;
draw z126..z17..z127;

path p;
p= z0--z1--z2--z3-- cycle;
for j = 0 upto 19:
	z[200+j] = z8 + 15a*(cosd(18j), sind(18j) );
	path r;
	r = z8--z[200+j];
	z[250+j] = r intersectionpoint p;
endfor 

for j = 0 upto 9:
	draw z[250+j]--z[250+10+j] withcolor red;
endfor 

for i=1 upto 10: 
	path p;
	p = for j = 0 upto 7:
		z[10+10i+j]..
	endfor cycle;
	for j = 0 upto 19:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
endfor

for i=0 upto 0: 
	path p;
	p = z120..z11..z121;
	for j = 2 upto 3:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
	path p;
	p = z122..z13..z123;
	for j = 7 upto 8:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
	path p;
	p =z124..z15..z125;
	for j = 12 upto 13:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
	path p;
	p =z126..z17..z127;
	for j = 17 upto 18:
		path q;
		q = z8--z[250+j];
		z[300+20i + j] = q intersectionpoint p;
	endfor 
endfor

for i=1 upto 10:
	draw 
		for j = 0 upto 7:
			z[10+10i+j]..
		endfor 
		cycle;
endfor 

pickup pencircle scaled 1pt;
for i=1 upto 8: 
	for j = 0 upto 19:
		drawarrow
			z[300+20i + j]--z[300+20(i+1) + j] withcolor red;
	endfor 
endfor 
for j = 0 upto 19:
	drawarrow z[250+j]--z[300+20 + j] withcolor red;
endfor 
for i=1 upto 8: 
	for j = 0 upto 19:
		drawarrow
			z[300+20i + j]--z[300+20(i+1) + j] withcolor red;
	endfor 
endfor 
for i=0 upto 0: 
	for j = 2 upto 3:
		drawarrow z[250+j]-- z[300+20i + j]  withcolor red;
	endfor
	for j = 7 upto 8:
		drawarrow z[250+j]-- z[300+20i + j]  withcolor red;
	endfor
	for j = 12 upto 13:
		drawarrow z[250+j]-- z[300+20i + j]  withcolor red;
	endfor
	for j = 17 upto 18:
		drawarrow z[250+j]-- z[300+20i + j]  withcolor red;
	endfor
endfor

endfig;

numeric a, b, c;
a = 16pt;
b = 1.2a;
c = 0.6a;

beginfig(19);
z0= (5a,4a);
z1= z0-(5a,0);
z2= z0+(5a,0);
z3= z0-(0,4a);
z4= z0+(0,4a);
z5 = z0-(4.5a,4a);
for i = 1 upto 17:
	for j= 0 upto 8 :
		z[10i + j]=z5 + (0.5i*a, j*a);
	endfor
endfor
for i= 3 step 2 until 16:
	draw z[10i+0]--z[10i+8];
endfor

%drawarrow z1--z2;
%drawarrow z3--z4;
%dotlabel.ulft(btex $\mathbf 0$ etex,z0);
%label.rt(btex $x$ etex,z2);
%label.top(btex $y$ etex,z4);

pickup pencircle scaled 1pt;
for j= 1 upto 7 :
	draw z[10 + j]--z[170 + j] withcolor red;
endfor
for  j =1 upto 7 :
	for i= 1 step 2 until 14:
		drawarrow z[10i + j]--z[10i + 20 + j] withcolor red;
	endfor
endfor
endfig;

numeric a;
a =10pt;

beginfig(20);
%spherical triangle
z0=(6a,6a);
for i=0 upto 17:
	z[1+i] = (6a*cosd(20i),6a*sind(20i));
endfor;

for i=0 upto 17:
	z[21+i] = z[1+i] +z0;
endfor;
draw z21{dir 90}..
for j = 1 upto 17:
	z[21+j]..
endfor
{dir 90}z21;

numeric c, d;
c = 0.14; %y ratio to x
d = -10; %angle to x axis
for i=0 upto 17:
	x[41+i] = x[1+i]*cosd(d)-y[1+i]*c*sind(d)+x0;
	y[41+i] = x[1+i]*sind(d)+y[1+i]*c*cosd(d)+y0;
endfor;

numeric c, d;
c = 0.5; %y ratio to x
d = 40; %angle of rotation x axis
for i=0 upto 17:
	x[61+i] = x[1+i]*cosd(d)-y[1+i]*c*sind(d)+x0;
	y[61+i] = x[1+i]*sind(d)+y[1+i]*c*cosd(d)+y0;
endfor;

numeric c, d;
c = 0.15; %y ratio to x
d = 80; %angle of rotation x axis
for i=0 upto 17:
	x[81+i] = x[1+i]*cosd(d)-y[1+i]*c*sind(d)+x0;
	y[81+i] = x[1+i]*sind(d)+y[1+i]*c*cosd(d)+y0;
endfor;

%3+3 intersections :
path p, q, r;
p = z41..
for j = 1 upto 8:
	z[41+j]..
endfor
z50;

q = z61.. 
for j = 1 upto 8:
	z[61+j]..
endfor
z70;

r = z81.. 
for j = 1 upto 8:
	z[81+j]..
endfor
z90;

z100 = p intersectionpoint q;
z101 = q intersectionpoint r;
z102 = r intersectionpoint p;

path p;
p = z100..z66..z65..z101--z101..z84..z85..z102--z102..z46..z47..z100-- cycle; 
fill p withcolor 0.8white;

%test part for position of guide point
%for i = 81 upto 88:
%	dotlabel("",z[i]);
%endfor;

path p , q, r;
p = z50..
for j = 1 upto 8:
	z[50+j]..
endfor
z41;

q = z70.. 
for j = 1 upto 8:
	z[70+j]..
endfor
z61;

r = z90.. 
for j = 1 upto 8:
	z[90+j]..
endfor
z81;

z103 = p intersectionpoint q;
z104 = q intersectionpoint r;
z105 = r intersectionpoint p;

path p;
p = z103..z75..z74..z104--z104..z93..z94..z105--z105..z55..z56..z103-- cycle; 
fill p withcolor 0.8white;


% 3 circles
%-10+90
draw z41{dir 80}..
for j = 1 upto 8:
	z[41+j]..
endfor
%80+180
{dir 260}z50;

draw z50{dir 260}..
for j = 10 upto 17:
	z[41+j]..
endfor
{dir 80}z41 dashed evenly;

%40+90
draw z61{dir 130}.. 
for j = 1 upto 8:
	z[61+j]..
endfor
%130+180
{dir 310}z70;

draw z70{dir 310}..
for j = 10 upto 17:
	z[61+j]..
endfor
{dir 130}z61 dashed evenly;

%80+90
draw z81{dir 170}.. 
for j = 1 upto 8:
	z[81+j]..
endfor
{dir 350}z90;
%170+180
draw z90{dir 350}.. 
for j = 10 upto 17:
	z[81+j]..
endfor
{dir 170}z81 dashed evenly;

%test part ;check 
%pickup pencircle scaled 1pt;
%draw z102..z46..z47..z100;
%draw z101..z65..z66..z100;
%draw z101..z84..z85..z102;
for i = 100 upto 102:
	draw z[i]--z[i+3] dashed evenly;
endfor;

dotlabel.rt(btex $\mathbf 0$ etex,z0);
dotlabel.top(btex $A$ etex,z100);
dotlabel.ulft(btex $B$ etex,z101);
dotlabel.urt(btex $C$ etex,z102);

%pickup pencircle scaled 1pt;
%for i = 100 upto 102:
%	drawarrow z0--z[i];
%endfor;
endfig;

numeric c, d, e, f, g;
c = -50; %angle of rotation of figure around z axis
d = 20; %angle of rotation of view point around y axis
e = 5; %10e = 50
f = 7; %10f = 70
g = 10;

beginfig(21);
z0 = (7a, 3a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0,cosd(d));

z4 = z0  + 8z1;
z5 = z0  + 8z2;
z6 = z0  + 8.5z3;
z7 = z0 - 8z1;
z8 =  z0  + 7z3;

z10 = z0 +  7sind(10e)*cosd(10f)*z1 + 7sind(10e)*sind(10f)*z2 +7 cosd(10e)* z3 ;
z40 = z0 +  7sind(10e)*cosd(10f)*z1 + 7sind(10e)*sind(10f)*z2;

for i = 1 upto f:
   z[10+i] = z0 +  7sind(10e)*cosd(10f -10i)*z1 + 7sind(10e)*sind(10f -10i)*z2 + 7cosd(10e)* z3 ;
   z[40+i] = z0 +  7sind(10e)*cosd(10f -10i)*z1 + 7sind(10e)*sind(10f -10i)*z2;
endfor;
for i = 0 upto e:
   z[70+i] = z0 + 7sind(10e-10i)*z1+ 7cosd(10e-10i)* z3 ;
endfor;

drawarrow z7--z4 ;
drawarrow z0--z5;
drawarrow z0--z6;

drawarrow z8--z10;
drawarrow z10..
   for i = 1 upto f -1 :
      z[10+i]..
   endfor
   z[10+f] dashed evenly ;
drawarrow z40..
   for i = 1 upto f -1:
      z[40+i]..
   endfor
   z[40+f] dashed evenly ;
drawarrow z70..
   for i = 1 upto e-1:
      z[70+i]..
   endfor
   z[70+e]  dashed evenly;

draw z40--z10  dashed evenly ;
draw z[40+f]--z[10+f]  dashed evenly ;

pickup pencircle scaled 1pt;
drawarrow z0--z8  withcolor red;
drawarrow z0--z10  withcolor red;
drawarrow z0--z[10+f]  withcolor red;

label.bot(btex $\mathbf 0$ etex,z0);
label.lft(btex $x$ etex,z4);
label.rt(btex $y$ etex,z5);
label.top(btex $z$ etex,z6);
label.rt(btex $\mathbf e_3$ etex,z8);
label.rt(btex $A\mathbf e_3$ etex,z10);
label.lft(btex $R_{-\varphi}A\mathbf e_3$ etex,z[10+f]);
label.lft(btex $L_{-\theta}R_{-\varphi}A\mathbf e_3 = $ etex,z8);
label.bot(btex $-\varphi$ etex,z44);
label.lft(btex $\theta$ etex,z72);
endfig;


beginfig(22);
z0 = (10a, 3a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0,cosd(d));

z4 = z0  + 8z1;
z5 = z0  + 8z2;
z6 = z0  + 8.5z3;
z7 = z0 - 8z1;
z8 =  z0  + 7z3;

z10 = z0 +  7sind(10e)*cosd(10f)*z1 + 7sind(10e)*sind(10f)*z2
    +7 cosd(10e)* z3 ;
z40 = z0 +  7sind(10e)*cosd(10f)*z1 + 7sind(10e)*sind(10f)*z2;

for i = 1 upto f:
   z[10+i] = z0 +  7sind(10e)*cosd(10f -10i)*z1 + 7sind(10e)*sind(10f -10i)*z2 + 7cosd(10e)* z3 ;
   z[40+i] = z0 +  7sind(10e)*cosd(10f -10i)*z1 + 7sind(10e)*sind(10f -10i)*z2;
endfor;
for i = 0 upto e:
   z[70+i] = z0 + 7sind(10e-10i)*z1+ 7cosd(10e-10i)* z3 ;
endfor;

z100 = z8 + 7z1;

z101 =   -7cosd(10e)*cosd(10f)*z1 - 7cosd(10e)*sind(10f)*z2 
   +7 sind(10e)* z3 ;
z102 =  7sind(10f)*z1 - 7cosd(10f)*z2;
z103 = z10+cosd(10g)*z101+ sind(10g)*z102;

z104 = 7cosd(10e)*z1+ 7sind(10e)*z3;
z105 = -7z2;
z106 = z[10 + f]+cosd(10g)*z104+ sind(10g)*z105;

z107 = 7z1;
z108 = -7z2;
z109 = z8 +cosd(10g)*z107+ sind(10g)*z108;

for i= 0 upto 36 - g:
	z[110+ i] =  z8 +cosd(10i)*z107- sind(10i)*z108;
endfor 

drawarrow z7--z4 ;
drawarrow z0--z5;
drawarrow z0--z6;

drawarrow z8--z10;
drawarrow z10..
   for i = 1 upto f -1 :
      z[10+i]..
   endfor
   z[10+f] dashed evenly ;
drawarrow z40..
   for i = 1 upto f -1:
      z[40+i]..
   endfor
   z[40+f] dashed evenly ;
drawarrow z70..
   for i = 1 upto e-1:
      z[70+i]..
   endfor
   z[70+e]  dashed evenly;

draw z40--z10  dashed evenly ;
draw z[40+f]--z[10+f]  dashed evenly ;

drawarrow z110..
   for i = 1 upto 36- g-1:
      z[110+i]..
   endfor
   z[110+36-g] dashed evenly;
   
pickup pencircle scaled 1pt;
drawarrow z0--z8  withcolor red;
drawarrow z0--z10  withcolor red;
drawarrow z0--z[10+f]  withcolor red;

drawarrow z8--z100 withcolor green;
drawarrow z10--z103 withcolor green;
drawarrow z[10 + f]--z106 withcolor green;
drawarrow z8--z109 withcolor green;

label.bot(btex $\mathbf 0$ etex,z0);
label.lft(btex $x$ etex,z4);
label.rt(btex $y$ etex,z5);
label.top(btex $z$ etex,z6);
label.top(btex $\mathbf e_1$ etex,z100);
label.lft(btex $A\mathbf e_1$ etex,z103);
label.top(btex $R_{-\psi}A\mathbf e_1$ etex,z106);
label.bot(btex $-\varphi$ etex,z43);
%label.top(btex $\theta$ etex,z71);
label.lft(btex $\psi$ etex,z125);
label.top(btex $L_{-\theta}R_{-\varphi}A\mathbf e_1 $ etex,z109);
endfig;

numeric c, d, e, f, g;
c = 20; %angle of rotation of figure around e3 axis
d = 3; %angle of rotation of view point around e'2 axis
e = 7; %
f = 4; %10f = 40
g = 4;

beginfig(23);
z0 = (3a, 5a);
z1 = 6a*(-1,0);
z2 = 6a*(0, -sind(c));
z3 = 6a*(0, cosd(c));

z5 = z0 ;
z6 = z0 + (0.15a,0);
z7 =  z0+ (0,0.25a);
z8 =  z0+ (0.15a,0.15a);;

for i = 1 upto 36:
	z[10 + i ]= cosd(10i)*z1 + sind(10i)*z2;
	z[50 + i ]= z5 + z[10 + i ];
endfor

z90 = z[10 + d ];
z91 = z[10+9 + d ];
z92 = z3;
z93 = z[10 + d +2];
z94 = z[10+9 + d +2];
z95 = z5 + z90;
z96 = z5 + z91;
z97 = z5 + z92;
z98 = z5 + z93;
z99 = z5 + z94;

z100 = z[10 + e ];
z101 = z[10+9 + e ];
z102 = z3;
z105 = z6 + z100;
z106 = z6 + z101;
z107 = z6 + z102;

for i = 0 upto 36:
	z[110 + i ]= cosd(10i)*z102 + sind(10i)*z100;
	z[150 + i ]= z7 + z[110 + i ];
endfor

z190 = z[110 + f ];
z191 = z101;
z192 = z[110 +9+ f ];
z193 = z[110 +2 ];
z194 = z[110 +9+2 ];
z195 = z7 + z190;
z196 = z7 + z191;
z197 = z7 + z192;
z198 = z7 + z193; 
z199 = z7 + z194; 

for i = 0 upto 36:
	z[210 + i ]= cosd(10i)*z192 + sind(10i)*z191;
	z[250 + i ]= z7 + z[210 + i ];
endfor

z290 = z[210 + 9+ g ];
z291 =  z[210 + g ];
z292 = z190;
z293 = z[210 + 9+ 2 ];
z294 =  z[210 +2 ];
z295 = z8 + z290;
z296 = z8 + z291;
z297 = z8 + z292;
z298= z8 + z293;
z299 = z8 + z294;

draw z51..
	for i = 2 upto 36:
		z[50+i]..
	endfor
	cycle dashed evenly ;

drawarrow z[50+d]..
	for i = d+1 upto e-1:
		z[50+i]..
	endfor
	z[50+e] withcolor    (0,0.4,1);
drawarrow z[50+9+d]..
	for i = d+1 upto e-1:
		z[50+9+i]..
	endfor
	z[50+9+e] withcolor   (0,0.4,1);

draw z151..
	for i = 2 upto 36:
		z[150+i]..
	endfor
	cycle dashed evenly;

drawarrow z150..
	for i = 1 upto f-1:
		z[150+i]..
	endfor
	z[150+f] withcolor green;
drawarrow z[150+9]..
	for i = 2 upto f-1:
		z[150+9+i]..
	endfor
	z[150+9+f] withcolor green;	

%draw z251..
%	for i = 2 upto 36:
%		z[250+i]..
%	endfor
%	cycle dashed evenly;
%
%drawarrow z250..
%	for i = 1 upto g-1:
%		z[250+i]..
%	endfor
%	z[250+g] withcolor red;
%drawarrow z[250+9]..
%	for i = 2 upto g-1:
%		z[250+9+i]..
%	endfor
%	z[250+9+g] withcolor red;		

pickup pencircle scaled 1pt;
drawarrow z5--z95 ;
drawarrow z5--z96 ;
drawarrow z5--z97 ;
label.bot(btex $\mathbf e_1$ etex,z95);
label.bot(btex $\mathbf e_2$ etex,z96);
label.top(btex $\mathbf e_3=\mathbf e'_3$ etex,z97);
label.bot(btex $\varphi$ etex,z98);
label.bot(btex $\varphi$ etex,z99);

drawarrow z6--z105 withcolor     (0,0.4,1);
drawarrow z6--z106 withcolor     (0,0.4,1);
drawarrow z6--z107 withcolor     (0,0.4,1);
label.llft(btex $\mathbf e'_1$ etex,z105);
label.rt(btex $\mathbf e'_2=\mathbf e''_2$ etex,z106);

drawarrow z7--z195 withcolor green;
drawarrow z7--z196 withcolor green; %
drawarrow z7--z197 withcolor green; 
label.llft(btex $\mathbf e''_3$ etex,z195);
label.bot(btex $\mathbf e''_1$ etex,z197);
label.lft(btex $\theta$ etex,z198);
label.lft(btex $\theta$ etex,z199);

%drawarrow z8--z295 withcolor red;
%drawarrow z8--z296 withcolor red; 
%drawarrow z8--z297 withcolor red; 
%label.rt(btex $\mathbf e'''_2$ etex,z295);
%label.bot(btex $\mathbf e'''_1$ etex,z296);
%label.rt(btex $\psi$ etex,z298);
%label.bot(btex $\psi$ etex,z299);
endfig;

beginfig(24);
z0 = (5a, 6a);
z1 = 6a*(-1,0);
z2 = 6a*(0, -sind(c));
z3 = 6a*(0, cosd(c));

z5 = z0 ;
z6 = z0 + (0.15a,0);
z7 =  z0+ (0,0.25a);
z8 =  z0+ (0.2a,0.2a);;

for i = 1 upto 36:
	z[10 + i ]= cosd(10i)*z1 + sind(10i)*z2;
	z[50 + i ]= z5 + z[10 + i ];
endfor

z90 = z[10 + d ];
z91 = z[10+9 + d ];
z92 = z3;
z93 = z[10 + d +2];
z94 = z[10+9 + d +2];
z95 = z5 + z90;
z96 = z5 + z91;
z97 = z5 + z92;
z98 = z5 + z93;
z99 = z5 + z94;

z100 = z[10 + e ];
z101 = z[10+9 + e ];
z102 = z3;
z105 = z6 + z100;
z106 = z6 + z101;
z107 = z6 + z102;

for i = 0 upto 36:
	z[110 + i ]= cosd(10i)*z102 + sind(10i)*z100;
	z[150 + i ]= z7 + z[110 + i ];
endfor

z190 = z[110 + f ];
z191 = z101;
z192 = z[110 +9+ f ];
z193 = z[110 +2 ];
z194 = z[110 +9+2 ];
z195 = z7 + z190;
z196 = z7 + z191;
z197 = z7 + z192;
z198 = z7 + z193; 
z199 = z7 + z194; 

for i = 0 upto 36:
	z[210 + i ]= cosd(10i)*z192 + sind(10i)*z191;
	z[250 + i ]= z7 + z[210 + i ];
endfor

z290 = z[210 + 9+ g ];
z291 =  z[210 + g ];
z292 = z190;
z293 = z[210 + 9+ 2 ];
z294 =  z[210 +2 ];
z295 = z8 + z290;
z296 = z8 + z291;
z297 = z8 + z292;
z298= z8 + z293;
z299 = z8 + z294;

%draw z51..
%	for i = 2 upto 36:
%		z[50+i]..
%	endfor
%	cycle dashed evenly ;
%
%drawarrow z[50+d]..
%	for i = d+1 upto e-1:
%		z[50+i]..
%	endfor
%	z[50+e] withcolor blue;
%drawarrow z[50+9+d]..
%	for i = d+1 upto e-1:
%		z[50+9+i]..
%	endfor
%	z[50+9+e] withcolor blue;

draw z151..
	for i = 2 upto 36:
		z[150+i]..
	endfor
	cycle dashed evenly;

drawarrow z150..
	for i = 1 upto f-1:
		z[150+i]..
	endfor
	z[150+f] withcolor green;
drawarrow z[150+9]..
	for i = 2 upto f-1:
		z[150+9+i]..
	endfor
	z[150+9+f] withcolor green;	

draw z251..
	for i = 2 upto 36:
		z[250+i]..
	endfor
	cycle dashed evenly;

drawarrow z250..
	for i = 1 upto g-1:
		z[250+i]..
	endfor
	z[250+g] withcolor red;
drawarrow z[250+9]..
	for i = 2 upto g-1:
		z[250+9+i]..
	endfor
	z[250+9+g] withcolor red;		

pickup pencircle scaled 1pt;
%drawarrow z5--z95 ;
%drawarrow z5--z96 ;
%drawarrow z5--z97 ;
%label.bot(btex $\mathbf e_1$ etex,z95);
%label.bot(btex $\mathbf e_2$ etex,z96);
%label.top(btex $\mathbf e_3=\mathbf e'_3$ etex,z97);
%label.bot(btex $\varphi$ etex,z98);
%label.bot(btex $\varphi$ etex,z99);

drawarrow z6--z105 withcolor   (0,0.4,1);
drawarrow z6--z106 withcolor   (0,0.4,1);
drawarrow z6--z107 withcolor   (0,0.4,1);
label.llft(btex $\mathbf e'_1$ etex,z105);
label.rt(btex $\mathbf e''_2$ etex,z106);

drawarrow z7--z195 withcolor green;
drawarrow z7--z196 withcolor green; %
drawarrow z7--z197 withcolor green;  
label.llft(btex $\mathbf e''_3=\mathbf e'''_3$ etex,z195);
label.bot(btex $\mathbf e''_1$ etex,z197);
label.lft(btex $\theta$ etex,z198);
label.lft(btex $\theta$ etex,z199);

drawarrow z8--z295 withcolor red;
drawarrow z8--z296 withcolor red; 
drawarrow z8--z297 withcolor red; 
label.rt(btex $\mathbf e'''_2$ etex,z295);
label.bot(btex $\mathbf e'''_1$ etex,z296);
label.rt(btex $\psi$ etex,z298);
label.bot(btex $\psi$ etex,z299);
endfig;

%numeric c, e;
%c = 30; %angle of rotation of figure around e3 axis
%e = 10;
%beginfig(25);
%z0 = (5a, 5a);
%z1 = 5a*(-1,0);
%z2 = 5a*(0, -sind(c));
%z3 = 5a*(0, cosd(c));
%
%z10 =z0 + (5a,0);
%z11 =z0 + (0, 5a);
%z12 =z0 + (-5a,0);
%z13 =z0 + (0,-5a);
%
%z20 = z0 +z3;
%
%for j=0 upto 5:
%   z[100+100j+1]= cosd(15j)*z1 ;
%   z[100+100j+2]= cosd(15j)*z2 ;
%   z[100+100j+3]= sind(15j)*z3;
%   
%   for i = -5 upto 18:
%   	z[100+100j+10 + i ]= cosd(18i)*z[100+100j+1] + sind(18i)*z[100+100j+2] +z[100+100j+3];
%   	z[100+100j+50 + i ]= z0 + z[100+100j+10 + i ];
%   endfor
%endfor
%
%for j= 1 upto 5:
%   z[600+100j+1]= cosd(15j)*z1 ;
%   z[600+100j+2]= cosd(15j)*z2 ;
%   z[600+100j+3]= -sind(15j)*z3;
%   
%   for i = -5 upto 18:
%   	z[600+100j+10 + i ]= cosd(18i)*z[600+100j+1] + sind(18i)*z[600+100j+2] +z[600+100j+3];
%   	z[600+100j+50 + i ]= z0 + z[600+100j+10 + i ];
%   endfor
%endfor
%
%for j=0 upto 1:
%   draw z[100+ 100j + 50]..
%   	for i = 1 upto 9:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +10];
%endfor 
%for j=2 upto 2:
%   draw z[100+ 100j + 50 -1 ]..
%   	for i = 0 upto 10:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +11];
%endfor 
%for j=3 upto 3:
%   draw z[100+ 100j + 50 -2 ]..
%   	for i = -1 upto 11:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +12];
%endfor 
%for j=4 upto 4:
%   draw z[100+ 100j + 50 -3 ]..
%   	for i = -2 upto 12:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +13];
%endfor 
%
%
%for j=1 upto 1:
%   draw z[600+100j + 50]..
%   	for i = 1 upto 9:
%   		z[600+100j + 50 + i ]..
%   	endfor
%   	z[600+100j + 50 +10];
%endfor
%for j=2 upto 2:
%   draw z[600+100j + 50+1]..
%   	for i = 2 upto 8:
%   		z[600+100j + 50 + i ]..
%   	endfor
%   	z[600+100j + 50 +9];
%endfor
%for j=3 upto 3:
%   draw z[600+100j + 50+2]..
%   	for i = 3 upto 7:
%   		z[600+100j + 50 + i ]..
%   	endfor
%   	z[600+100j + 50 +8];
%endfor
%
%draw z10..z11..z12..z13.. cycle;
%
%pickup pencircle scaled 1pt;
%for j=0 upto 1:
%   	for i = 0 upto 9:
%   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
%   	endfor
%endfor 
%for j=2 upto 2:
%   	for i = -1 upto 11:
%   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i+1 ];
%   	endfor
%endfor 
%for j=3 upto 3:
%   	for i = -2 upto 11:
%   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
%   	endfor
%endfor 
%for j=4 upto 4:
%   	for i = -3 upto 12:
%   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
%   	endfor
%endfor 
%
%for j=1 upto 1:
%   	for i = 0 upto 9:
%   		drawarrow z[600+100j + 50 + i ]..z[600+100j + 50 + i +1];
%   	endfor
%endfor
%for j=2 upto 2:
%   	for i = 1 upto 8:
%   		drawarrow z[600+100j + 50 + i ]..z[600+100j + 50 + i +1];
%   	endfor
%endfor
%for j=3 upto 3:
%   	for i = 2 upto 7:
%   		drawarrow z[600+100j + 50 + i ]..z[600+100j + 50 + i+1 ];
%   	endfor
%endfor
%
%%for j=5 upto 5: %we cannot write vectors
%%   	for i = -5 upto 14:
%%   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
%%   	endfor
%%endfor 
%for j=5 upto 5:
%   draw z[100+ 100j + 50 -5 ]..
%   	for i = -4 upto 14:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	cycle;
%endfor 
%
%dotlabel.top(btex $\infty$ etex,z20);
%endfig;

numeric c, e;
c = 30; %angle of rotation of figure around e3 axis
e = 10;

beginfig(26);
z0 = (8a, 5a);
z1 = 5a*(-1,0);
z2 = 5a*(0, -sind(c));
z3 = 5a*(0, cosd(c));

z7 = cosd(e)*z1+sind(e)*z2;
z8 = -sind(e)*z1 + cosd(e)*z2;

z10 =z0 + (5a,0);
z11 =z0 + (0, 5a);
z12 =z0 + (-5a,0);
z13 =z0 + (0,-5a);

z15 = z0 + 1.3 z7 -1.3 z8;
z16 = z0 + 1.3 z7 +1.3 z8;
z17 = z0 - 1.3 z7 +1.3 z8;
z18 = z0 - 1.3z7 -1.3 z8;
z19 = z0  -1.3 z8;

path p, q, r ;
p = z10..z11..z12..z13.. cycle;
q = z19--z15--z16;
r = z19--z18--z17;
z20 = p intersectionpoint  q;
z21 = p intersectionpoint  r;

z30 = z0 +z3;

for j=0 upto 5:
   z[100+100j+1]= cosd(13j)*z1 ;
   z[100+100j+2]= cosd(13j)*z2 ;
   z[100+100j+3]= sind(13j)*z3;
   
   for i = -5 upto 18:
   	z[100+100j+10 + i ]= cosd(18i)*z[100+100j+1] + sind(18i)*z[100+100j+2] +z[100+100j+3];
   	z[100+100j+50 + i ]= z0 + z[100+100j+10 + i ];
   endfor
endfor

for j= 1 upto 5:
   z[600+100j+1]= cosd(13j)*z1 ;
   z[600+100j+2]= cosd(13j)*z2 ;
   z[600+100j+3]= -sind(13j)*z3;
   
   for i = -5 upto 18:
   	z[600+100j+10 + i ]= cosd(18i)*z[600+100j+1] + sind(18i)*z[600+100j+2] +z[600+100j+3];
   	z[600+100j+50 + i ]= z0 + z[600+100j+10 + i ];
   endfor
endfor

%for j=0 upto 1:
%   draw z[100+ 100j + 50]..
%   	for i = 1 upto 9:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +10];
%endfor 
%for j=2 upto 2:
%   draw z[100+ 100j + 50 -1 ]..
%   	for i = 0 upto 10:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +11];
%endfor 
%for j=3 upto 3:
%   draw z[100+ 100j + 50 -2 ]..
%   	for i = -1 upto 11:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +12];
%endfor 
%for j=4 upto 4:
%   draw z[100+ 100j + 50 -3 ]..
%   	for i = -2 upto 12:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +13];
%endfor 
%
%
%for j=1 upto 1:
%   draw z[600+100j + 50]..
%   	for i = 1 upto 9:
%   		z[600+100j + 50 + i ]..
%   	endfor
%   	z[600+100j + 50 +10];
%endfor
%for j=2 upto 2:
%   draw z[600+100j + 50+1]..
%   	for i = 2 upto 8:
%   		z[600+100j + 50 + i ]..
%   	endfor
%   	z[600+100j + 50 +9];
%endfor
%for j=3 upto 3:
%   draw z[600+100j + 50+2]..
%   	for i = 3 upto 7:
%   		z[600+100j + 50 + i ]..
%   	endfor
%   	z[600+100j + 50 +8];
%endfor

draw z10..z11..z12..z13.. cycle;
draw z20--z15--z16--z17--z18--z21;

pickup pencircle scaled 1pt;
for j=0 upto 1:
   	for i = 0 upto 9:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
   	endfor
endfor 
for j=2 upto 2:
   	for i = -1 upto 11:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i+1 ];
   	endfor
endfor 
for j=3 upto 3:
   	for i = -2 upto 11:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
   	endfor
endfor 
for j=4 upto 4:
   	for i = -3 upto 12:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
   	endfor
endfor 

for j=1 upto 1:
   	for i = 0 upto 9:
   		drawarrow z[600+100j + 50 + i ]..z[600+100j + 50 + i +1];
   	endfor
endfor
for j=2 upto 2:
   	for i = 1 upto 8:
   		drawarrow z[600+100j + 50 + i ]..z[600+100j + 50 + i +1];
   	endfor
endfor
for j=3 upto 3:
   	for i = 2 upto 7:
   		drawarrow z[600+100j + 50 + i ]..z[600+100j + 50 + i+1 ];
   	endfor
endfor

for j=5 upto 5: %we cannot write vectors
   	for i = -5 upto 15:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
   	endfor
endfor 
%for j=5 upto 5:
%   draw z[100+ 100j + 50 -5 ]..
%   	for i = -4 upto 14:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	cycle;
%endfor 

dotlabel.bot(btex $\infty$ etex,z30);
endfig;

numeric c, d, e;
c = 30; %angle of rotation of figure around e3 axis
d = 75;%44; %angle of rotation of view point around e'2 axis
e = 10;

beginfig(27);
z0 = (9a, 5a);
z1 = 5a*(-1,0);
z2 = 5a*(0, -sind(c));
z3 = 5a*(0, cosd(c));

z4 = (-5a*cosd(d),  5a*sind(d));
z5 =  (-5a*sind(c)*sind(d), -5a*sind(c)*cosd(d));
z6 =  (5a*cosd(c)*sind(d), 5a*cosd(c)*cosd(d));

z7 = cosd(e)*z1+sind(e)*z2;
z8 = -sind(e)*z1 + cosd(e)*z2;

z10 =z0 + (5a,0);
z11 =z0 + (0, 5a);
z12 =z0 + (-5a,0);
z13 =z0 + (0,-5a);

z15 = z0 + 1.3 z7 -1.3 z8;
z16 = z0 + 1.3 z7 +1.3 z8;
z17 = z0 - 1.4 z7 +1.3 z8;
z18 = z0 - 1.4z7 -1.3 z8;
z19 = z0  -1.3 z8;

path p, q, r ;
p = z10..z11..z12..z13.. cycle;
q = z19--z15--z16;
r = z19--z18--z17;
z20 = p intersectionpoint  q;
z21 = p intersectionpoint  r;

z30 = z0 +z3;
z31 = z0 +z6;
z32 = 1.7[z30, z31];

for j=0 upto 0:
   for i = -5 upto 18:
   	z[100j+50 + i ]= z0 + cosd(18i)*cosd(13j)*z1 + sind(18i)*cosd(13j)*z2 +sind(13j)*z3;
   endfor
endfor

for j=0 upto 5:
   z[100+100j+1]= cosd(13j)*z4 ;
   z[100+100j+2]= cosd(13j)*z5 ;
   z[100+100j+3]= sind(13j)*z6;
   
   for i = -5 upto 18:
   	z[100+100j+10 + i ]= cosd(18i)*z[100+100j+1] + sind(18i)*z[100+100j+2] +z[100+100j+3];
   	z[100+100j+50 + i ]= z0 + z[100+100j+10 + i ];
   endfor
endfor

for j= 1 upto 5:
   z[600+100j+1]= cosd(13j)*z4 ;
   z[600+100j+2]= cosd(13j)*z5 ;
   z[600+100j+3]= -sind(13j)*z6;
   
   for i = -5 upto 18:
   	z[600+100j+10 + i ]= cosd(18i)*z[600+100j+1] + sind(18i)*z[600+100j+2] +z[600+100j+3];
   	z[600+100j+50 + i ]= z0 + z[600+100j+10 + i ];
   endfor
endfor

%for j=0 upto 1:
%   draw z[100+ 100j + 50]..
%   	for i = 1 upto 9:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +10];
%endfor 
for j=2 upto 2:
   draw z[100+ 100j + 50 -1 ]..
   	for i = 0 upto 10:
   		z[100+ 100j + 50 + i ]..
   	endfor
   	z[100+ 100j + 50 +11];
endfor 
%for j=3 upto 3:
%   draw z[100+ 100j + 50 -2 ]..
%   	for i = -1 upto 11:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +12];
%endfor 
%for j=4 upto 4:
%   draw z[100+ 100j + 50 -3 ]..
%   	for i = -2 upto 12:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	z[100+ 100j + 50 +13];
%endfor 
%
%
%for j=1 upto 1:
%   draw z[600+100j + 50]..
%   	for i = 1 upto 9:
%   		z[600+100j + 50 + i ]..
%   	endfor
%   	z[600+100j + 50 +10];
%endfor
%for j=2 upto 2:
%   draw z[600+100j + 50+1]..
%   	for i = 2 upto 8:
%   		z[600+100j + 50 + i ]..
%   	endfor
%   	z[600+100j + 50 +9];
%endfor
%for j=3 upto 3:
%   draw z[600+100j + 50+2]..
%   	for i = 3 upto 7:
%   		z[600+100j + 50 + i ]..
%   	endfor
%   	z[600+100j + 50 +8];
%endfor

draw z10..z11..z12..z13.. cycle;

for j=0 upto 0:
   draw z[100j + 50]..
   	for i = 1 upto 9:
   		z[ 100j + 50 + i ]..
   	endfor
   	z[100j + 50 +10];
endfor 

draw z20--z15--z16--z17--z18--z21;
draw z30--z32;

pickup pencircle scaled 1pt;
for j=0 upto 1:
   	for i = 0 upto 9:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
   	endfor
endfor 
for j=2 upto 2:
   	for i = 1 upto 11:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i+1 ];
   	endfor
endfor 
for j=3 upto 3:
   	for i = -2 upto 11:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
   	endfor
endfor 
for j=4 upto 4:
   	for i = -3 upto 10:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
   	endfor
endfor 

for j=1 upto 1:
   	for i = 0 upto 9:
   		drawarrow z[600+100j + 50 + i ]..z[600+100j + 50 + i +1];
   	endfor
endfor
for j=2 upto 2:
   	for i = 1 upto 8:
   		drawarrow z[600+100j + 50 + i ]..z[600+100j + 50 + i +1];
   	endfor
endfor
for j=3 upto 3:
   	for i = 2 upto 7:
   		drawarrow z[600+100j + 50 + i ]..z[600+100j + 50 + i+1 ];
   	endfor
endfor

for j=5 upto 5: %we cannot write vectors
   	for i = -5 upto 15:
   		drawarrow z[100+ 100j + 50 + i ]..z[100+ 100j + 50 + i +1];
   	endfor
endfor 
%for j=5 upto 5:
%   draw z[100+ 100j + 50 -5 ]..
%   	for i = -4 upto 14:
%   		z[100+ 100j + 50 + i ]..
%   	endfor
%   	cycle;
%endfor 

dotlabel.urt(btex $\infty$ etex,z30);
dotlabel(btex  etex,z31);

endfig;

verbatimtex
\end{document}
etex;
end