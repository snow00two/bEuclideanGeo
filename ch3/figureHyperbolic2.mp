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

numeric a;
a=10pt;
beginfig(1);
% generic lattice M_1
z0 = (0,-a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0.2a) +(j-1)*(2.5a*cosd(75),2.5a*sind(75));
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
for i = 2 step 2 until 4:
	draw z[100i+10]--z[100i+50] dashed evenly;
endfor;
for i = 2 step 2 until 4:
	draw z[100+10i]--z[500+10i] dashed evenly;
endfor;

pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;

label(btex $\mathbf C$ etex,z150);
dotlabel.lrt(btex $a$ etex,z220);
dotlabel.lrt(btex $a+\omega_1$ etex,z420);
dotlabel.ulft(btex $a+\omega_2$ etex,z240);

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

numeric a;
a = 12pt;
beginfig(3);
% generic lattice M_1
z0 = (0,-2a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0) +(j-1)*(2.5a*cosd(75),2.5a*sind(75));
		for k = 1 upto 8:
			z[100i+10j +k] 
			= z[100i+10j]
			+ 
			(0.2a*cosd(45*(k+1)),0.2a*sind(45*(k+1)));
		endfor;
	endfor;
endfor;

path p;
p = z422--z444--z246--z228--  cycle ;
fill p withcolor 0.9white;

%for i = 2 step 2 until 6:
%	for j= 2  step 2 until  6:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%%		drawarrow z[330]--z[100i+10j+110];
%	endfor;
%endfor;
for i = 2 step 2 until 4:
    for j = 0 step 2 until 2:
    	drawarrow z[100i+10j+40+6]--z[100i+10j+20+8] ;
    	drawarrow  z[100i+10j+240+4]--z[100i+10j+40+6] ;
    	drawarrow  z[100i+10j+220+2]--z[100i+10j+240+4] ;
    	drawarrow  z[100i+10j+20+8]--z[100i+10j+220+2] ;
    	dotlabel(btex $ $ etex,z[100i+10j+138]);
%    	dotlabel(btex $ $ etex,z[100i+10j+133]);
    endfor;
endfor;

pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;

label(btex $\mathbf C$ etex,z150);% z422--z444--z246--z228
label.lft(btex $\gamma_1$ etex,z433);
label.bot(btex $\gamma_2$ etex,z345);
label.rt(btex $\gamma_3$ etex,z237);
label.top(btex $\gamma_4$ etex,z321);
label.rt(btex $\gamma_3$ etex,z437);
label.top(btex $\gamma_4$ etex,z341);
endfig;

beginfig(5);
% Dirichlet domain of generic lattice M_1
z0 = (0,-2a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0.2a) +(j-1)*(2.5a*cosd(75),2.5a*sind(75));
		for k = 1 upto 8:
			z[100i+10j +k] 
			= z[100i+10j]
			+ 
			(0.2a*cosd(45*(k+1)),0.2a*sind(45*(k+1)));
		endfor;
	endfor;
endfor;

path p;
p = z422--z444--z246--z228--  cycle ;
fill p withcolor 0.9white;

%for i = 2 step 2 until 6:
%	for j= 2  step 2 until  6:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%%		drawarrow z[330]--z[100i+10j+110];
%	endfor;
%endfor;
%for i = 2 step 2 until 4:
%    for j = 0 step 2 until 2:
%    	drawarrow z[100i+10j+40+6]--z[100i+10j+20+8] ;
%    	drawarrow  z[100i+10j+240+4]--z[100i+10j+40+6] ;
%    	drawarrow  z[100i+10j+220+2]--z[100i+10j+240+4] ;
%    	drawarrow  z[100i+10j+20+8]--z[100i+10j+220+2] ;
%    	dotlabel(btex $ $ etex,z[100i+10j+138]);
%%    	dotlabel(btex $ $ etex,z[100i+10j+133]);
%    endfor;
%endfor;

pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;

%label(btex $\mathbf C$ etex,z150);% z422--z444--z246--z228
%label.lft(btex $\gamma_1$ etex,z433);
%label.bot(btex $\gamma_2$ etex,z345);
%label.rt(btex $\gamma_3$ etex,z237);
%label.top(btex $\gamma_4$ etex,z321);
%label.rt(btex $\gamma_3$ etex,z437);
%label.top(btex $\gamma_4$ etex,z341);
endfig;

numeric a;
a = 12pt;
beginfig(4);
% generic lattice M_1
z0 = (0,-a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0.2a) +(j-1)*(2.5a*cosd(75),2.5a*sind(75));
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
for i = 2 step 2 until 4:
	draw z[100i+10]--z[100i+50] dashed evenly;
endfor;
for i = 2 step 2 until 4:
	draw z[100+10i]--z[500+10i] dashed evenly;
endfor;

pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;

label(btex $\mathbf C$ etex,z150);
label.lrt(btex $0$ etex,z220);
label.lrt(btex $\omega_1$ etex,z420);
label.ulft(btex $\omega_2$ etex,z240);
dotlabel.lrt(btex $\frac{\omega_1}2$ etex,z320);
dotlabel.ulft(btex $\frac{\omega_1}2$ etex,z230);
dotlabel.urt(btex $\frac{\omega_1+\omega_2}2$ etex,z330);
label.urt(btex $\omega_1+\omega_2$ etex,z440);
endfig;

numeric b;
b = 15pt;
beginfig(6);
z0 = (6b,3b);
z1 = z0 - (6b,0);
z2 = z0 + (6b,0);
z3 = z0 - (0,3b);
z4 = z0 + (0, 3b);

for i =  1 upto 29:
	z[10+i] = z0 + b*(cosd(-45 + 3i),sind(-45 + 3i));
endfor;
for i =  1 upto 29:
	z[50+i] = z0 + 5b* cosd(-90 + 6i)*(cosd(-45 + 3i),sind(-45 + 3i));
	z[100+i] = z0 + 5b* cosd(270 + 6i)*(cosd(135 + 3i),sind(135 + 3i));
endfor;

draw z25..
for i =  26 upto 32:
	z[i]..
endfor
z33;

draw z0--z73;
drawarrow z1--z2;
drawarrow z3--z4;

pickup pencircle scaled 0.7pt;
draw z0..
for i =  1 upto 29:
	z[50+i]..
endfor
z0;

draw z0..
for i =  1 upto 29:
	z[100+i]..
endfor
z0;

label.lft(btex $\mathbf 0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);
label.rt(btex $\sqrt{\cos 2\theta}$ etex,0.5[z0,z73]); 
label.rt(btex $\theta$ etex,z30); 
label.lrt(btex $1$ etex,z65);
endfig;

numeric a, b;
a=10pt;
b=1.2a;
beginfig(7);
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
z30 = 0.5[z3,z21];
z31 = z30 + (0,1.4a);
z32 = z30 + (-a,0);
z33 = z30 + (0,-1.34a);
z34 = z30 + (a, 0);

z40 = 0.5[z9,z26];
z41 = z40 + (0,-1.68a);
z42 = z40 + (a,0);
z43 = z40 + (0,1.26a);
z44 = z40 + (-a, 0);
%draw z41..z42..z43..z44.. cycle  withcolor blue;

z90 = z0 + (7a,0);
z91 = z0 + (8a,0);
drawarrow z90--z91;
z100=z0 + (13a,0);
for i=0 upto 17:
	z[101+i] =z100+ (4a*cosd(20i),4a*sind(20i));
endfor;
for i=0 upto 17:
	z[120+i] = z100+ (4a*cosd(20i),1.5a*sind(20i));
endfor;
for i=0 upto 17:
	z[140+i] = z100+ (1.5a*cosd(90 + 20i), 4a*sind(90 +20i));
endfor;

for i=0 upto 17:
	z[160+i] = z100+ (4a*cosd(20i),3.5a*sind(20i));
endfor;

draw z101{dir 90}..
	for j = 1 upto 17:
		z[101+j]..
	endfor
	{dir 90}z101;
draw z120..
	for j = 0 upto 7:
		z[121+j]..
	endfor
	z129 dashed evenly;
draw z129..
	for j = 8 upto 16:
		z[121+j]..
	endfor
	z120 ;

dotlabel.rt(btex $0$ etex,z34);
dotlabel.lft(btex $\frac{\omega_1}{2}$ etex,z32);
dotlabel.rt(btex $\frac{\omega_2}{2}$ etex,z42);
dotlabel.lft(btex $\frac{\omega_1+\omega_2}{2}$ etex,z44);
dotlabel.bot(btex $e_1$ etex,z154);
dotlabel.top(btex $\infty$ etex,z157);
dotlabel.top(btex $e_2$ etex,z172);
dotlabel.top(btex $e_3$ etex,z175);

z190 = z0 + (0,5a);
z191 = z0 + (0,6a);
drawarrow z191--z190;
z200 = z0 + (-6a,7a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[200 + 10i+j ]
		=z200 + (i-1)*(2b,0.2b) +(j-1)*(2.5b*cosd(75),2.5b*sind(75));
	endfor;
endfor;

path p;
p = z222--z242--z243--z223-- cycle ;
fill p withcolor 0.9white;

%for i = 2 step 2 until 6:
%	for j= 2  step 2 until  6:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%%		drawarrow z[330]--z[100i+10j+110];
%	endfor;
%endfor;
for i = 2 step 2 until 4:
	draw z[200 + 10i+1]--z[200 + 10i+5] dashed evenly;
endfor;
for i = 2 step 2 until 4:
	draw z[200 + 10+i]--z[200 + 50+i] dashed evenly;
endfor;

pickup pencircle scaled 1pt;
draw z154..
 	for j = 14 upto 15:
		z[141+j]..
	endfor
	z157 withcolor red;
draw z172..
	for j = 12 upto 13:
		z[161+j]..
	endfor
	z175 withcolor blue;
draw z31{left}..z32..{right}z33  withcolor red;
draw z33{right}..z34..{left}z31 dashed evenly withcolor red;
draw z41{left}..z44..{right}z43  withcolor blue;
draw z43{right}..z42..{left}z41 dashed evenly withcolor blue;

draw z222--z242 withcolor red;
draw z223--z243 withcolor blue;

label(btex $\mathbf C$ etex,z215);
dotlabel.lrt(btex $0$ etex,z222);
label.lrt(btex $\omega_1$ etex,z242);
label.ulft(btex $\omega_2$ etex,z224);
dotlabel.lrt(btex $\frac{\omega_1}2$ etex,z232);
dotlabel.ulft(btex $\frac{\omega_1}2$ etex,z223);
dotlabel.top(btex $\frac{\omega_1+\omega_2}2$ etex,z233);
label.urt(btex $\omega_1+\omega_2$ etex,z244);
endfig;


verbatimtex
\end{document}
etex;
end