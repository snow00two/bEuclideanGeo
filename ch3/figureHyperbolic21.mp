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

beginfig(1);
% generic lattice M_1
z0 = (0,-a);
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
		=z0 + (i-1)*(2a,0) +(j-1)*(2a*cosd(75),2.3a*sind(75));
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

numeric a;
a = 12pt;
beginfig(4);
% generic lattice M_1
z0 = (0,-a);
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
dotlabel.lrt(btex $0$ etex,z220);
label.lrt(btex $\omega_1$ etex,z420);
label.urt(btex $\omega_1+ \omega_2$ etex,z440);
label.ulft(btex $\omega_2$ etex,z240);
dotlabel.lrt(btex $\frac{\omega_1}2$ etex,z320);
dotlabel.ulft(btex $\frac{\omega_1}2$ etex,z230);
dotlabel.urt(btex $\frac{\omega_1+\omega_2}2$ etex,z330);

endfig;

numeric b;
b=20pt;
beginfig(5);
%tessellation of the upper half space 
z0 = (0,0);
z1 = z0 + (6b,0);
z2 = z0 + (b,0);
z3 = z0 + (3b,0);
z4 = z0 + (5b,0);
z5 = z2 + (0,6b);
z6 = z3 + (0,6b);
z7 = z4 + (0,6b);

draw z0--z1;
for i=2 upto 4:
	draw z[i]--z[i+3];
endfor;

for i = 0 upto 0:
	numeric c; %we used this trick to compile correctly!
	c = 2**i ;    % 
	for j = 0 upto 3 * c:
		z[10 + i + 10j ] = z0 + (2j*b/c, 2b/c);
		if j = 0 :
			draw z[10 + i+ 10j]{right}..{down}(x[10 +i + 10j] + 2b/c, y0);
		else : if  j = 3 * c :
			draw (x[10+ i+ 10j] - 2b/c, y0){up}..{right}z[10+ i + 10j];
		else :
			draw (x[10+ i+ 10j] - 2b/c, y0)..z[10+ i + 10j]..(x[10+ i + 10j] + 2b/c, y0);
		fi;
		fi;
	endfor;
endfor;
for i = 1 upto 5:
	numeric c; %we used this trick to compile correctly!
	c = 2**i ;    % 
	for j = 1 step 2  until 3 * c:
		z[10 + i + 10j ] = z0 + (2j*b/c, 2b/c);
		if j = 0 :
			draw z[10 + i+ 10j]{right}..{down}(x[10 +i + 10j] + 2b/c, y0);
		else : if  j = 3 * c :
			draw (x[10+ i+ 10j] - 2b/c, y0){up}..{right}z[10+ i + 10j];
		else :
			draw (x[10+ i+ 10j] - 2b/c, y0)..z[10+ i + 10j]..(x[10+ i + 10j] + 2b/c, y0);
		fi;
		fi;
	endfor;
endfor;

endfig;



verbatimtex
\end{document}
etex;
end