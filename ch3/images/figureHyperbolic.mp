prologues := 3;
verbatimtex
%&latex
\documentclass{article}
\usepackage{verbatim}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\DeclareMathOperator{\RE}{Re}
\DeclareMathOperator{\IM}{Im}
\begin{document}
etex;
a=10pt;
b=6pt;

beginfig(1);
% generic lattice M_1
z0 = (0, -2a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0.2a) +(j-1)*(2a*cosd(75),2.3a*sind(75));
		for k = 1 upto 4:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			(0.5a*cosd(75+90*(k+1)),0.5a*sind(75+90*(k+1)));
		endfor;
	endfor;
endfor;

path p;
p = z220--z420--z440--z240-- cycle ;
fill p withcolor 0.9white;

%for i = 2 step 2 until 6:
%	for j= 2  step 2 until  6:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%%		drawarrow z[330]--z[100i+10j+110];
%	endfor;
%endfor;
for i = 2 step 2 until 6:
	draw z[100i+10]--z[100i+70] dashed evenly;
endfor;
for i = 2 step 2 until 6:
	draw z[100+10i]--z[700+10i] dashed evenly;
endfor;

pickup pencircle scaled 1pt;
drawarrow z220--z420;
drawarrow z220--z240;

label(btex $\mathbf C$ etex,z170);
label.bot(btex $0$ etex,z220);
label.bot(btex $\omega_1$ etex,z320);
label.lft(btex $\omega_2$ etex,z230);

endfig;


beginfig(2);
%torus 
z0 = (6a,4a);
z1 = z0 + (6a,0);
z2 = z0 + (5a,2.3a);
z3 = z0 + (4a,3a);
z4 = z0 + (0,4a);
z5 = z0 + (-4a,3a);
z6 = z0 + (-5a,2.3a);
z7 = z0 + (-6a,0);
z8 = z0 - (5a,2.3a);
z9 = z0 - (4a,3a);
z10 = z0 - (0,4a);
z11 = z0 + (4a,-3a);
z12 = z0 + (5a,-2.3a);

z20 = z0 + (3.1a,0);
z21 = z0 + (a,1.2a);
z22 = z0 + (0,1.3a);
z23 = z0 + (-a,1.2a);
z24 = z0 - (3.1a,0);

z25 = z0 + (3.5a,0.7a);
z26 =  z0 + (0,-a);
z27 =  z0 + (-3.5a,0.7a);

draw
for i= 1 upto 12:
	z[i]..
endfor
cycle;
draw
for i= 20 upto 23:
	z[i]..
endfor
z24;

draw z25..z20..z26..z24..z27;
endfig;


beginfig(3);
%fundamental domain of PSL(2,\mathbf R)
z0= (0,1.5a);
z1 = z0 + (a,0);
z2 = z0 + (3a,0);
z3 = z0 + (5a,0);
z4 =  z0 + (7a,0);
z5 = z0 + (9a,0);
z6 = z0 + (10a,0);

z7 = z2 + (0,10a);
z8 = z3 + (0,10.5a);
z9 = z4 +(0,10a);

for i = 0 upto 18:
	z[10+i] =z3 +  (4a*cosd(10i), 4a*sind(10i));
endfor;
path p;
p = z9--z16..z17..z18..z19..z20..z21..z22--z7-- cycle;
fill p withcolor 0.9white;

draw z0--z6;
draw z3--z8;
draw z1..z19..z5 dashed evenly;
draw z2--z7 dashed evenly;
draw z4--z9 dashed evenly;

pickup pencircle scaled 1pt;
draw z9--z16..z17..z18..z19;

label.rt(btex $\RE$ etex,z6);
label.top(btex $\IM$ etex,z8);
label.bot(btex $-1$ etex,z1);
label.bot(btex $-\frac{1}2$ etex,z2);
label.bot(btex $0$ etex,z3);
label.bot(btex $\frac{1}2$ etex,z4);
label.bot(btex $1$ etex,z5);
dotlabel.lrt(btex $i$ etex,z19);
endfig;


beginfig(4);
%upper half plane
z0= (0,0);
z1 = z0 + (5a,a);
z2 = z0 + (5a,11a);
z3 = z0 + (0,a);
z4 = z0 + (10a,a);

z5 = z0 + (a,a);
z6 = z5 + (8a,0);
z7 = z6 + (0,9a);
z8 = z7 - (8a,0);

z10 = z1 + (0,3a);
z11 = z1 + (a,4a);
z12 = z1 + (0,5a);
z13 = z1 + (-1.5a,6a);
z14 = z1 + (0,7a);

path p;
p = z5--z6--z7--z8-- cycle;
fill p withcolor 0.9white;

draw z3--z4;
draw z1--z2;
draw z10..z11..z12..z13..z14;

label.top(btex $\IM$ etex,z2);
label.bot(btex $0$ etex,z1);
label.rt(btex $\RE$ etex,z4);
label.lft(btex $iy_1$ etex,z10);
label.rt(btex $c(t)$ etex,z11);
label.rt(btex $iy_2$ etex,z14);
endfig;

numeric a;
a=12pt;
beginfig(5);
z0 = (0,0);
z1 = z0 + (5a,0) ;
z2 = z0 + (11a,0) ;
z3 = z0 + (12a,0) ;
z4 = z2 + (0, 7a);
z5 = z2 + (0, 3a);
z6 = z2 + (0, 6a);
draw z0--z3;
draw z2--z4;

for i = 0 upto 18:
	z[10+i] =z1 +  (4a*cosd(10i), 4a*sind(10i));
endfor;
z30 = 0.1[z20,z1];

draw
	for i= 0 upto 17:
		z[10+i]--
	endfor
	z28;
draw z16--z24;
draw z30--z1;
draw z16--z1--z24;
dotlabel.top(btex $z_2$ etex,z16);
dotlabel.top(btex $z_1$ etex,z24);
label.bot(btex $x_1$ etex,z28);
label.bot(btex $x_2$ etex,z10);
label.bot(btex $0$ etex,z2);
dotlabel.rt(btex $iy_1$ etex,z5);
dotlabel.rt(btex $iy_2$ etex,z6);
endfig;

beginfig(6);
z0 = (0, 0);
for i = 1 upto 16:
	z[i] = z0 + (a*i,0);
endfor;
z26 = z8 + (0,5a);
z27 = z8 + (0,3a);
z28 = z8 + (0,6a);
z29 = z8 + (0,7a);

draw z1--z14;
draw z8--z28;

draw z3..z26..z13;
draw z5..z27..z11;

z30 = z7 - (a*sqrt(26),0);
z31 = z7 + (a*sqrt(26),0);
draw z30{up}..z26..{down}z31 withcolor red;

label.bot(btex $0$ etex,z8);
label(btex $\RE$ etex,z15);
label(btex $\IM$ etex,z29);
endfig;


verbatimtex
\end{document}
etex;
end