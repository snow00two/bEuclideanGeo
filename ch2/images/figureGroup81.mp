prologues := 3;
verbatimtex
%&latex
\documentclass{article}
\usepackage{verbatim}　
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\begin{document}
etex;
numeric a, b;
a = 8pt;
b = 6pt;

beginfig(1);
% generic lattice M_1 (P1)
z0 = (0,-a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0) +(j-1)*(2.5a*cosd(75),2.5a*sind(75));
	endfor;
endfor;

path p;
p = z220--z420--z440--z240-- cycle ;
fill p withcolor 0.8white;

for i = 2 step 2 until 6:
	for j= 2  step 2 until  6:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%		drawarrow z[330]--z[100i+10j+110];
		z[100i+10j +1] = z[100i+10j ] +(2a,a);
		z[100i+10j +2] =z[100i+10j +1] +(a,0);
		z[100i+10j +3] =z[100i+10j +1] +(0,sqrt(3)*a);
		path q;
		q = z[100i+10j +1]--z[100i+10j +2]--z[100i+10j +3]-- cycle ;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;
for i = 2 step 2 until 6:
	draw z[100i+10]--z[100i+70] dashed withdots;
endfor;
for i = 2 step 2 until 6:
	draw z[100+10i]--z[700+10i] dashed withdots;
endfor;

%pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;
%
%label.bot(btex $\mathbf a$ etex,z320);
%label.lft(btex $\mathbf b$ etex,z230);
%
endfig;

beginfig(2);
% generic lattice M2(P2)
z0 = (0,-a);
for i = 1 upto 6:
	for j = 1 upto 6:
		z[100i+10j ]
		=z0 + (i-1)*(3a,0) +(j-1)*(4a*cosd(75),4a*sind(75));
		for k = 1 upto 4:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			0.3a*(cosd(75+90*(k+1)),sind(75+90*(k+1)));
		endfor;
		for k = 5 upto 8:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			(0.5a*cosd(75+90*(k+1)),0.5a*sind(75+90*(k+1)));
		endfor;
	endfor;
endfor;

path p;
p = z220--z420--z440--z240-- cycle ;
fill p withcolor 0.8white;

for i = 2 step 2 until 4:
	draw z[100i+10]--z[100i+60] dashed withdots;
endfor;
for i = 2 step 2 until 4:
	draw z[100+10i]--z[600+10i] dashed withdots;
endfor;

%for i = 2 upto 5:
%	for j= 2 upto 5:
%		drawarrow z[100i+10j+5]..z[100i+10j+6]..z[100i+10j+7];
%	endfor;
%endfor;
%
for i = 2 step 2 until 5:
	for j= 2 step 2 until 5:
		path p, q, r;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor red;
		z[1000+100i+10j] = z[100i+10j] + (2a,a);
		z[2000+100i+10j] = z[1000+100i+10j] + (a,0);
		z[3000+100i+10j] = z[1000+100i+10j] + (0,2a);
		q = z[1000+100i+10j]--z[2000+100i+10j]--z[3000+100i+10j]-- cycle;
		fill q withcolor 0.6white;
		draw q;
		z[1000-100+100i+10j] = z[100i+10j] - (2a,a);
		z[2000-100+100i+10j] = z[1000-100+100i+10j] - (a,0);
		z[3000-100+100i+10j] = z[1000-100+100i+10j] - (0,2a);
		r = z[1000-100+100i+10j]--z[2000-100+100i+10j]--
			z[3000-100+100i+10j]-- cycle;
		fill r withcolor 0.6white;
		draw r;
	endfor;
endfor;
for i = 2 step 2 until 5:
	for j= 3 step 2 until 5:
		path p;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor green;
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j= 2 step 2 until 5:
		path p;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor (0,0.7,1);% 0.35[blue,white];
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j= 3 step 2 until 5:
		path p;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor black;
	endfor;
endfor;


%pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;
%
%label.bot(btex $\mathbf a$ etex,z321);
%label.lft(btex $\mathbf b$ etex,z234);

endfig;

beginfig(3);
%Pm
z0 = (0,0);
z1 = (3a,0);
z2 = (0,4a);
z3 = (a,0);
z4 = (a,0);
z5 = (0,2a);
z6 = (0,a);

for i = 1 upto 5:
	for j = 1 upto 5:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
	endfor;
endfor;

path q;
q = z210--z410--z420--z220-- cycle;
fill q withcolor 0.8white;

for i = 1 step 2 until 5:
	for j = 1 upto 4:
		z[100i+10j+1] = z[100i+10j]+z6 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j = 1 upto 4:
		z[100i+10j+4] = z[100i+10j]+z6 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

pickup pencircle scaled 1pt;
for  i = 2 upto  5:
	draw z[100i+10]--z[100i+50];
endfor;

endfig;

beginfig(4);
%Pg
z0 = (0,0);
z1 = (3a,0);
z2 = (0,4a);
z3 = (a,0);
z4 = (a,0);
z5 = (0,2a);
z6 = (0,a);

for i = 1 upto 5:
	for j = 1 upto 5:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
	endfor;
endfor;

path q;
q = z210--z410--z430--z230-- cycle;
fill q withcolor 0.8white;

for i = 1 step 2 until 5:
	for j = 1 step 2 until 3:
		z[100i+10j+1] = z[100i+10j]+z6 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j = 2 step 2 until 4:
		z[100i+10j+4] = z[100i+10j]+z6 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

for  i = 2 upto  5:
	draw z[100i+10]--z[100i+50] dashed evenly;
endfor;

endfig;

beginfig(5);
%Cm
z0 = (0,0);
z1 = (3a,0);
z2 = (0,4a);
z3 = (a,0);
z4 = (a,0);
z5 = (0,2a);
z6 = (0,a);

for i = 1 upto 7:
	for j = 1 upto 5:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
	endfor;
endfor;

path p, q;
p = z210--z610--z630--z230-- cycle;
q = z220--z410--z620--z430-- cycle;
%fill p withcolor 0.9white;
fill q withcolor 0.8white;

for i = 1 step 4 until 6:
	for j = 1 step 2 until 3:
		z[100i+10j+1] = z[100i+10j] + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 4 until 7:
	for j = 1 step 2 until 3:
		z[100i+10j+4] = z[100i+10j] - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

for i = 3 step 4 until 6:
	for j = 2 step 2 until 4:
		z[100i+10j+1] = z[100i+10j] + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 5 step 4 until 7:
	for j = 2 step 2 until 4:
		z[100i+10j+4] = z[100i+10j] - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

for  i = 3 step 2 until  5:
	draw z[100i+10]--z[100i+50] dashed evenly;
endfor;
pickup pencircle scaled 1pt;
for  i = 2 step 2 until  6:
	draw z[100i+10]--z[100i+50];
endfor;

endfig;

beginfig(6);
%P2mm
z0 = (0,0);
z1 = (3a,0);
z2 = (0,4a);
z3 = (a,0);
z4 = (a,0);
z5 = (0,2a);
z6 = (0,a);

for i = 1 upto 6:
	for j = 1 upto 6:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
		for k = 	1 upto 4:
			z[1000k+100i+10j ]= z[100i+10j] + 0.3a*(cosd(90*k),sind(90*k));
		endfor;
	endfor;
endfor;

path q;
q = z220--z420--z440--z240-- cycle;
fill q withcolor 0.8white;

for i = 1 step 2 until 5:
	for j = 1 step 2 until 4:
		z[100i+10j+1] = z[100i+10j]+z6 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

for i = 3 step 2 until 5:
	for j = 1 step 2 until 4:
		z[100i+10j+4] = z[100i+10j]+z6 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path p;
		p = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

for i = 1 step 2 until 5:
	for j = 2 step 2 until 4:
		z[100i+10j+1] = z[100i+10j]+z6+z5 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] - z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j = 2 step 2 until 4:
		z[100i+10j+4] = z[100i+10j]+z6+z5 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] - z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

pickup pencircle scaled 1pt;
for  i = 2 upto  5:
	draw z[100i+10]--z[100i+50];
endfor;
for  j = 2 upto  4:
	draw z[100+10j]--z[600+10j];
endfor;

for i = 2 step 2 until 5:
	for j = 2 step 2 until 4:
		path q;
		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
		fill q withcolor red;
	endfor;
endfor;

for i = 3 step 2 until 5:
	for j = 2 step 2 until 4:
		path q;
		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
		fill q withcolor green;
	endfor;
endfor;

for i = 3 step 2 until 5:
	for j = 3 step 2 until 4:
		path q;
		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
		fill q withcolor (0,0.7,1);
	endfor;
endfor;

for i = 2 step 2 until 5:
	for j = 3 step 2 until 4:
		path q;
		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
		fill q withcolor black;
	endfor;
endfor;

endfig;

numeric a;
a = 7pt;
beginfig(7);
%P2gm
z0 = (0,0);
z1 = (3a,0);
z2 = (0,4a);
z3 = (a,0);
z4 = (a,0);
z5 = (0,2a);
z6 = (0,a);

for i = 1 upto 8:
	for j = 1 upto 7:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
		for k = 1 upto 4:
			z[100i+10j+1000k] = 
			z[100i+10j] +(0.3a*cosd(90*k),0.3a*sind(90*k));
		endfor;
	endfor;
endfor;

path q;
q = z210--z610--z630--z230-- cycle;
fill q withcolor 0.8white;

for i = 1 step 4 until 7:
	for j = 1 step 2 until 4:
		z[100i+10j+1] = z[100i+10j]+z6 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 4 until 7:
	for j = 1 step 2 until 4: %OK
		z[100i+10j+4] = z[100i+10j]+z6 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

for i = 3 step 4 until 7:
	for j = 2 step 2 until 4:
		z[100i+10j+1] = z[100i+10j]+z6+z5 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] - z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

for i = 5 step 4 until 7:
	for j = 2 step 2 until 4:
		z[100i+10j+4] = z[100i+10j]+z6+z5 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] - z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

for i = 3 step 4 until 7:
	for j = 2 step 2 until 4:
		path p;
		p = z[100i+10j+1000]..z[100i+10j+2000]..z[100i+10j+3000]..
			z[100i+10j+4000].. cycle;
		fill p withcolor red;
	endfor;
endfor;

for i = 5 step 4 until 7:
	for j = 2 step 2 until 4:
		path p;
		p = z[100i+10j+1000]..z[100i+10j+2000]..z[100i+10j+3000]..
			z[100i+10j+4000].. cycle;
		fill p withcolor red;
	endfor;
endfor;

for i = 3 step 4 until 7:
	for j = 3 step 2 until 4:
		path p;
		p = z[100i+10j+1000]..z[100i+10j+2000]..z[100i+10j+3000]..
			z[100i+10j+4000].. cycle;
		fill p withcolor black;
	endfor;
endfor;

for i = 5 step 4 until 7:
	for j = 3 step 2 until 4:
		path p;
		p = z[100i+10j+1000]..z[100i+10j+2000]..z[100i+10j+3000]..
			z[100i+10j+4000].. cycle;
		fill p withcolor black;
	endfor;
endfor;


for  j = 2 upto  4:
	draw z[100+10j]--z[800+10j] dashed evenly;
endfor;

pickup pencircle scaled 1pt;
for  i = 2 step 2 until  7:
	draw z[100i+10]--z[100i+50];
endfor;

endfig;

numeric a;
a = 8pt;
beginfig(8);
% generic lattice M2(P2)
z0 = (0,-a);
for i = 1 upto 6:
	for j = 1 upto 6:
		z[100i+10j ]
		=z0 + (i-1)*(4a,0) +(j-1)*(0,5a);
		for k = 1 upto 4:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			0.3a*(cosd(75+90*(k+1)),sind(75+90*(k+1)));
		endfor;
		for k = 5 upto 8:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			(0.5a*cosd(75+90*(k+1)),0.5a*sind(75+90*(k+1)));
		endfor;
	endfor;
endfor;

for i = 1 upto 6:
	for j = 1 upto 6:
		z[4000+100i+10j ]
		=z0 +(2a,2.5a)+ (i-1)*(4a,0) +(j-1)*(0,5a);
	endfor;
endfor;

path p;
p = z220--z420--z440--z240-- cycle ;
%p = z230--z320--z430--z340-- cycle ;
fill p withcolor 0.8white;

for i = 2 upto 5:
	draw z[4000+100i+10]--z[4000+100i+60] dashed evenly;
endfor;
for i = 2 upto 5:
	draw z[4000+100+10i]--z[4000+600+10i] dashed evenly;
endfor;

%for i = 2 upto 5:
%	for j= 2 upto 5:
%		drawarrow z[100i+10j+5]..z[100i+10j+6]..z[100i+10j+7];
%	endfor;
%endfor;

for i = 2 step 2 until 5:
	for j= 2 step 2 until 5:
		path p, q, r;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor red;
		z[1000+100i+10j] = z[100i+10j] + (a,a);
		z[2000+100i+10j] = z[1000+100i+10j] + (a,0);
		z[3000+100i+10j] = z[1000+100i+10j] + (0,sqrt(3)*a);
		q = z[1000+100i+10j]--z[2000+100i+10j]--z[3000+100i+10j]-- cycle;
		fill q withcolor 0.6white;
		draw q;
		z[1000-100+100i+10j] = z[100i+10j] - (a,a);
		z[2000-100+100i+10j] = z[1000-100+100i+10j] - (a,0);
		z[3000-100+100i+10j] = z[1000-100+100i+10j] - (0,sqrt(3)*a);
		r = z[1000-100+100i+10j]--z[2000-100+100i+10j]--
			z[3000-100+100i+10j]-- cycle;
		fill r withcolor 0.6white;
		draw r;
	endfor;
endfor;
for i = 2 step 2 until 5:
	for j= 3 step 2 until 5:
		path p;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor green;
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j= 2 step 2 until 5:
		path p;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor green;%(0,0.7,1);% 0.35[blue,white];
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j= 3 step 2 until 5:
		path p, q, r;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor red;
				z[1000+100i+10j] = z[100i+10j] + (a,-a);
		z[2000+100i+10j] = z[1000+100i+10j] + (a,0);
		z[3000+100i+10j] = z[1000+100i+10j] - (0,sqrt(3)*a);
		q = z[1000+100i+10j]--z[2000+100i+10j]--z[3000+100i+10j]-- cycle;
		fill q withcolor 0.6white;
		draw q;
		z[1000-100+100i+10j] = z[100i+10j] - (a,-a);
		z[2000-100+100i+10j] = z[1000-100+100i+10j] - (a,0);
		z[3000-100+100i+10j] = z[1000-100+100i+10j] + (0,sqrt(3)*a);
		r = z[1000-100+100i+10j]--z[2000-100+100i+10j]--
			z[3000-100+100i+10j]-- cycle;
		fill r withcolor 0.6white;
		draw r;
	endfor;
endfor;
endfig;

beginfig(9)
z0 = (0,0);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i +10j] = z0 + (i-1)*(4a,0) + (j-1)*(0,3a);
		for k = 1 upto 4:
			z[100i +10j + k] = z[100i +10j] + 0.4a*(cosd(90k),sind(90k));
		endfor;
	endfor;
endfor;

path q;
q = z240--z420--z640--z460-- cycle; 
fill q withcolor 0.8white;

for i = 3 step 2 until  6:
	draw z[100i+10]--z[100i+70] dashed evenly ;
endfor;

for j = 3 step 2 until  6:
	draw z[100+10j]--z[700+10j] dashed evenly;
endfor;


for i = 2 step 4 until 7:
	for j= 2 step 4 until 7:
		z[1000+100i + 10j ] = z[100i + 10j ] + (a,a);
		z[2000+100i + 10j ] = z[1000+100i + 10j ] + (sqrt(3)*a,0);
		z[3000+100i + 10j ] = z[1000+100i + 10j ] + (0,a);
		path p;
		p = z[1000+100i + 10j ]--z[2000+100i + 10j ]--z[3000+100i + 10j]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 1 step 4 until 7:
	for j= 2 step 4 until 7:
		z[1000+100i + 10j ] = z[100+100i + 10j ] + (-a,a);
		z[2000+100i + 10j ] = z[1000+100i + 10j ] + (-sqrt(3)*a,0);
		z[3000+100i + 10j ] = z[1000+100i + 10j ] + (0,a);
		path p;
		p = z[1000+100i + 10j ]--z[2000+100i + 10j ]--z[3000+100i + 10j]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 1 step 4 until 7:
	for j= 1 step 4 until 7:
		z[1000+100i + 10j ] = z[100+100i +10+ 10j ] + (-a,-a);
		z[2000+100i + 10j ] = z[1000+100i + 10j ] + (-sqrt(3)*a,0);
		z[3000+100i + 10j ] = z[1000+100i + 10j ] + (0,-a);
		path p;
		p = z[1000+100i + 10j ]--z[2000+100i + 10j ]--z[3000+100i + 10j]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 2 step 4 until 7:
	for j= 1 step 4 until 7:
		z[1000+100i + 10j ] = z[100i +10+ 10j ] + (a,-a);
		z[2000+100i + 10j ] = z[1000+100i + 10j ] + (sqrt(3)*a,0);
		z[3000+100i + 10j ] = z[1000+100i + 10j ] + (0,-a);
		path p;
		p = z[1000+100i + 10j ]--z[2000+100i + 10j ]--z[3000+100i + 10j]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

for i = 4 step 4 until 6:
	for j= 4 step 4 until 6:
		z[1000+100i + 10j ] = z[100i + 10j ] + (a,a);
		z[2000+100i + 10j ] = z[1000+100i + 10j ] + (sqrt(3)*a,0);
		z[3000+100i + 10j ] = z[1000+100i + 10j ] + (0,a);
		path p;
		p = z[1000+100i + 10j ]--z[2000+100i + 10j ]--z[3000+100i + 10j]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 4 until 6:
	for j= 4 step 4 until 6:
		z[1000+100i + 10j ] = z[100+100i + 10j ] + (-a,a);
		z[2000+100i + 10j ] = z[1000+100i + 10j ] + (-sqrt(3)*a,0);
		z[3000+100i + 10j ] = z[1000+100i + 10j ] + (0,a);
		path p;
		p = z[1000+100i + 10j ]--z[2000+100i + 10j ]--z[3000+100i + 10j]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 4 until 6:
	for j= 3 step 4 until 6:
		z[1000+100i + 10j ] = z[100+100i +10+ 10j ] + (-a,-a);
		z[2000+100i + 10j ] = z[1000+100i + 10j ] + (-sqrt(3)*a,0);
		z[3000+100i + 10j ] = z[1000+100i + 10j ] + (0,-a);
		path p;
		p = z[1000+100i + 10j ]--z[2000+100i + 10j ]--z[3000+100i + 10j]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 4 step 4 until 6:
	for j= 3 step 4 until 6:
		z[1000+100i + 10j ] = z[100i +10+ 10j ] + (a,-a);
		z[2000+100i + 10j ] = z[1000+100i + 10j ] + (sqrt(3)*a,0);
		z[3000+100i + 10j ] = z[1000+100i + 10j ] + (0,-a);
		path p;
		p = z[1000+100i + 10j ]--z[2000+100i + 10j ]--z[3000+100i + 10j]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

pickup pencircle scaled 1pt;
for i = 2 step 2 until  6:
	draw z[100i+10]--z[100i+70];
endfor;
for j = 2 step 2 until  6:
	draw z[100+10j]--z[700+10j];
endfor;

for i = 2 step 4 until 7:
	for j= 2 step 4 until 7:
		path q;
		q = z[100i + 10j +1]..z[100i + 10j +2]..z[100i + 10j +3]..
			z[100i + 10j +4].. cycle;
		fill q withcolor red;
	endfor;
endfor;

for i = 4 step 4 until 7:
	for j= 2 step 4 until 7:
		path q;
		q = z[100i + 10j +1]..z[100i + 10j +2]..z[100i + 10j +3]..
			z[100i + 10j +4].. cycle;
		fill q withcolor green;
	endfor;
endfor;

for i = 2 step 4 until 7:
	for j= 4 step 4 until 7:
		path q;
		q = z[100i + 10j +1]..z[100i + 10j +2]..z[100i + 10j +3]..
			z[100i + 10j +4].. cycle;
		fill q withcolor green;
	endfor;
endfor;
for i = 4 step 4 until 7:
	for j= 4 step 4 until 7:
		path q;
		q = z[100i + 10j +1]..z[100i + 10j +2]..z[100i + 10j +3]..
			z[100i + 10j +4].. cycle;
		fill q withcolor red;
	endfor;
endfor;
for i = 3 step 2 until 6:
	for j= 3 step 2 until 6:
		path q;
		q = z[100i + 10j +1]..z[100i + 10j +2]..z[100i + 10j +3]..
			z[100i + 10j +4].. cycle;
		fill q withcolor black;
	endfor;
endfor;

endfig;

beginfig(10);
%M4 (P4)

%definitions of points
z0 = (4a,4a);
for k = 0, 1, 2:
	for m =0, 1, 2:%3,4		
		z[1000k + 200m] = z0+ k*(8a, 0) +m*(0, 8a);
		for j = 1 upto 4:
            	z[1000k + 200m +j] = z[1000k + 200m]+ 0.3a*(cosd(90j),sind(90j));
		endfor;
	endfor;
endfor;

%fundamental region of lattice
path q;
q = z[0]--z[1000 + 0 ]--z[1000 + 200]--z[0+ 200]-- cycle;
fill q withcolor 0.8white;

%colored circles, triangles and dashed lines
for k = 0, 1, 2:
	for m =0, 1, 2:
		path p;
		p= z[1000k + 200m +1]..z[1000k + 200m +2]..
			z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
		fill p withcolor red;	
		for i = 1 upto 4:
 	           	z[1000k + 200m +10i] = z[1000k + 200m] + 4a*(cosd(90*i),sind(90*i));
            	for j = 1 upto 4:
            			z[1000k + 200m +10i + j] 
					= z[1000k + 200m +10i] + 0.3a*(cosd(90j),sind(90j));
            	endfor;		
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
					z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor green;
			draw  z[1000k + 200m +10i ]-- z[1000k + 200m] dashed withdots;
		endfor;
            for i = 5 upto 8:
			z[1000k + 200m +10i] =  
				z[1000k + 200m ] + 4sqrt(2)*a*(cosd(45 + 90*i),sind(45+90*i));
			for j = 1 upto 4:
            			z[1000k + 200m +10i + j] =
						z[1000k + 200m +10i] + 0.3a*(cosd(90j),sind(90j));
            	endfor;
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
					z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor black;
			draw z[1000k + 200m]--z[1000k + 200m +10i] dashed withdots;
            	z[1000k + 200m +10i + 5] =
					 0.9[z[1000k + 200m],z[1000k + 200m +10i]]
					 +0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
            	z[1000k + 200m +10i + 6] =
			 		0.6[z[1000k + 200m],z[1000k + 200m + 10i]] 
					+0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
	            z[1000k + 200m +10i + 7] = 
					z[1000k + 200m+10i + 5] + 
					 a*(cosd(-45+ 90*i),sind(-45+90*i));
            	path q;
			q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--
					z[1000k + 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
            endfor;
%             for i = 2 upto 4:
%	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)] dashed withdots;
%             endfor;
	endfor;
endfor;
endfig;


beginfig(11);
%P4mm

%definitions of points
z0 = (4a,4a);
for k = 0, 1, 2:
	for m =0, 1, 2:%3,4		
		z[1000k + 200m] = z0+ k*(8a, 0) +m*(0, 8a);
		for j = 1 upto 4:
            	z[1000k + 200m +j] = z[1000k + 200m]+ 0.3a*(cosd(90j),sind(90j));
		endfor;
		for i = 1 upto 4:
 	           	z[1000k + 200m +10i] = z[1000k + 200m] + 4a*(cosd(90*i),sind(90*i));
			for j = 1 upto 4:
            		z[1000k + 200m +10i + j] =
						z[1000k + 200m +10i] + 0.3a*(cosd(90j),sind(90j));
            	endfor;
		endfor;
		for i = 5 upto 8:
			z[1000k + 200m +10i] =  
				z[1000k + 200m ] + 4sqrt(2)*a*(cosd(45 + 90*i),sind(45+90*i));
			for j = 1 upto 4:
            		z[1000k + 200m +10i + j] =
						z[1000k + 200m +10i] + 0.3a*(cosd(90j),sind(90j));
            	endfor;
		endfor;
	endfor;
endfor;

%fundamental region
%path q;
%q = z[0]--z[1000 + 0 ]--z[1000 + 200]--z[0+ 200]-- cycle;
%fill q withcolor 0.6white;

% lines
pickup pencircle scaled 1pt;
for k = 0, 1, 2:
	for m =0, 1, 2:
		for i = 1 upto 4:
			draw  z[1000k + 200m +10i ]--z[1000k + 200m];
		endfor;
		for i = 5 upto 8:
			draw  z[1000k + 200m +10i ]--z[1000k + 200m];
		endfor;
		draw  z[1000k + 200m + 80 ]--z[1000k + 200m +50 ]--
			z[1000k + 200m +60 ];
	endfor;
endfor;
pickup pencircle scaled 0.5pt;

%colored circles, triangles
for k = 0, 1, 2:
	for m =0, 1, 2:
		path p;
		p= z[1000k + 200m +1]..z[1000k + 200m +2]..
			z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
		fill p withcolor red;	
		for i = 1 upto 4:
			path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
					z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor green;
		endfor;
            for i = 5 upto 8:
         		path p;
         		p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
					z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
         		fill p withcolor black;
         		z[1000k + 200m +10i + 5] =
					 0.7[z[1000k + 200m],z[1000k + 200m +10i]]
					 +0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
         		z[1000k + 200m +10i + 6] =
			 		0.2[z[1000k + 200m],z[1000k + 200m + 10i]] 
					+0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
	            z[1000k + 200m +10i + 7] = 
					z[1000k + 200m+10i + 5] + 
					 0.7a*(cosd(-45+ 90*i),sind(-45+90*i));
         		z[1000k +500+ 200m +10i + 5] =
					 0.7[z[1000k + 200m],z[1000k + 200m +10i]]
					 +0.3a*(cosd(135+ 90*i),sind(135+90*i));
         		z[1000k +500+ 200m +10i + 6] =
			 		0.2[z[1000k + 200m],z[1000k + 200m + 10i]] 
					+0.3a*(cosd(135+ 90*i),sind(135+90*i));
	            z[1000k +500+ 200m +10i + 7] = 
					z[1000k +500+ 200m+10i + 5] 
					+0.7a*(cosd(135+ 90*i),sind(135+90*i));
			path q, r;
			q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--
					z[1000k + 200m +10i + 7]-- cycle ;
			r = z[1000k +500+ 200m +10i + 5]--z[1000k +500+ 200m +10i + 6]--
					z[1000k +500+ 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			fill r withcolor 0.6white;
			draw  q ;
			draw  r ;
            endfor;
%             for i = 2 upto 4:
%	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)] dashed withdots;
%             endfor;
	endfor;
endfor;

endfig;

beginfig(12);
%P4mg

%definitions of points
z0 = (4a,4a);
for k = 0, 1, 2:
	for m =0, 1, 2:%3,4		
		z[1000k + 200m] = z0+ k*(8a, 0) +m*(0, 8a);
		for j = 1 upto 4:
            	z[1000k + 200m +j] = z[1000k + 200m]+ 0.3a*(cosd(90j),sind(90j));
		endfor;
		for i = 1 upto 4:
 	           	z[1000k + 200m +10i] = z[1000k + 200m] + 4a*(cosd(90*i),sind(90*i));
            	for j = 1 upto 4:
            		z[1000k + 200m +10i + j] 
				= z[1000k + 200m +10i] + 0.3a*(cosd(90j),sind(90j));
            	endfor;		
		endfor;
		for i = 5 upto 8:
			z[1000k + 200m +10i] =  
				z[1000k + 200m ] + 4sqrt(2)*a*(cosd(45 + 90*i),sind(45+90*i));
			for j = 1 upto 4:
            		z[1000k + 200m +10i + j] =
						z[1000k + 200m +10i] + 0.3a*(cosd(90j),sind(90j));
            	endfor;
		endfor;
	endfor;
endfor;

%fundamental region
%path q;
%q = z[0]--z[1000 + 0 ]--z[1000 + 200]--z[0+ 200]-- cycle;
%fill q withcolor 0.6white;

%lines
pickup pencircle scaled 1pt;
for k = 0, 1, 2:
	for m =0, 1, 2:
           	draw z[1000k + 200m +10]--z[1000k + 200m +20]--
			z[1000k + 200m +30]--z[1000k + 200m +40]-- cycle;
	endfor;
endfor;
pickup pencircle scaled 0.5pt;
for i = 1 step 2 until  12:
	z[3000+i ] = z0 -(4a,4a)+ i*(2a, 0);
	z[3000+20+i] =z0 -(4a,4a)+ i*(2a, 0)+ ( 0, 24a);
	z[3000+40+i ] = z0 -(4a,4a)+ i*(0, 2a);
	z[3000+60+i] =z0 -(4a,4a)+ i*(0, 2a)+ (24a,0);
	draw z[3000+i ]--z[3000+20+i] dashed evenly;
	draw z[3000+40+i ]--z[3000+60+i] dashed evenly;
endfor;


%colored circles, triangles and dashed lines
for k = 0, 1, 2:
	for m =0, 1, 2:
		path p;
		p= z[1000k + 200m +1]..z[1000k + 200m +2]..
			z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
		fill p withcolor red;	
		for i = 1 upto 4:
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
					z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor black;
		endfor;
           for i = 5 upto 8:
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
					z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor red;
            	z[1000k + 200m +10i + 5] =
					 0.9[z[1000k + 200m],z[1000k + 200m +10i]]
					 +0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
            	z[1000k + 200m +10i + 6] =
			 		0.6[z[1000k + 200m],z[1000k + 200m + 10i]] 
					+0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
	            z[1000k + 200m +10i + 7] = 
					z[1000k + 200m+10i + 5] + 
					 a*(cosd(-45+ 90*i),sind(-45+90*i));
            	path q;
			q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--
					z[1000k + 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
            	z[1000k +500+ 200m +10i + 5] =
					 0.1[z[1000k + 200m],z[1000k + 200m +10i]]
					 +0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
            	z[1000k +500+  200m +10i + 6] =
			 		0.4[z[1000k + 200m],z[1000k + 200m + 10i]] 
					+0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
	            z[1000k +500+  200m +10i + 7] = 
					z[1000k +500+  200m+10i + 5] + 
					 a*(cosd(-45+ 90*i),sind(-45+90*i));
            	path q;
			q = z[1000k + 500+200m +10i + 5]--
					z[1000k +500+ 200m +10i + 6]--
					z[1000k +500+ 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
           endfor;
%             for i = 2 upto 4:
%	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)] dashed withdots;
%             endfor;
	endfor;
endfor;
endfig;


numeric a;
a=14pt;
beginfig(13);
% hexagonal lattice M_3, P3m
%definitions of points
z0 = (4a,4a);
for k = 0, 1, 2:
	for m =0, 1, 2:%3,4
		if k = 2: %when k =2, 4 ..., we shift y coord -1
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + (m-1)*(0, 4*sqrt(3)*a);
		else: 
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + m*(0, 4*sqrt(3)*a);
		fi
            for j = 1 upto 4:
            		z[1000k + 200m +j] = z[1000k + 200m]+ 0.2a*(cosd(90j),sind(90j));
            endfor;
		for i = 1 upto 6:
			z[1000k + 200m +10i] = z[1000k + 200m] + 4a*(cosd(60*i),sind(60*i));
                	for j = 1 upto 4:
                		z[1000k + 200m +10i + j] 
    				= z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
                	endfor;
		endfor
 	endfor;
endfor;

%fundamental region
%path q;
%q = z[1000 +10]--z[1000 +20]--z[1000 +30]--z[1000 +40]--z[1000 +50]--z[1000+60]-- cycle;
%fill q withcolor 0.6white;

%colored points, triangles and dashed lines
for k = 0, 1, 2:
	for m =0, 1, 2:
           path p;
            p= z[1000k + 200m +1]..z[1000k + 200m +2]..
            		z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
            fill p withcolor green;	
            for i = 1 upto 6:
             	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
				z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
       		if i = 1 :
                 		fill p withcolor black;
      		else: if i = 2:
      			fill p withcolor red;
      		else: if i = 3:
      			fill p withcolor black;
      		else: if i = 4:
      			fill p withcolor red;
      		else: if i = 5:
      			fill p withcolor black;	
      		else: 
      			fill p withcolor red;
      		fi
      		fi
      		fi
      		fi
      		fi
	
			draw  z[1000k + 200m +10i ]-- z[1000k + 200m] dashed withdots;
            endfor;
            
            for i = 7 step 2 until 13:
            	z[1000k + 200m +10i] =  
			z[1000k + 200m ] + 2sqrt(3)*a*(cosd(30+ 60*i),sind(30+60*i));
%            	for j = 1 upto 4:
%            		z[1000k + 200m +10i + j] =
%				z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
%            	endfor;
%            	path p;
%            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
%            	fill p withcolor green;
            	z[1000k + 200m +10i + 5] =
				 0.7[z[1000k + 200m],z[1000k + 200m +10i]];
            	z[1000k + 200m +10i + 6] =
			 	0.4[z[1000k + 200m],z[1000k + 200m + 10i]];
            	z[1000k + 200m +10i + 7] = 
				z[1000k + 200m+10i + 5] +  0.7a*(cosd(120+ 60*i),sind(120+60*i));
            	path q;
			q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--
				z[1000k + 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
            endfor;
%             for i = 2 upto 4:
%	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)] dashed withdots;
%             endfor;
            
	endfor;
endfor;
endfig;

beginfig(14);
% hexagonal lattice P3m1
%definitions of points
z0 = (4a,4a);
for k = 0, 1, 2:
	for m =0, 1, 2:%3,4
		if k = 2: %when k =2, 4 ..., we shift y coord -1
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + (m-1)*(0, 4*sqrt(3)*a);
		else: 
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + m*(0, 4*sqrt(3)*a);
		fi
            for j = 1 upto 4:
            		z[1000k + 200m +j] = z[1000k + 200m]+ 0.2a*(cosd(90j),sind(90j));
            endfor;
		for i = 1 upto 6:
			z[1000k + 200m +10i] = z[1000k + 200m] + 4a*(cosd(60*i),sind(60*i));
                	for j = 1 upto 4:
                		z[1000k + 200m +10i + j] 
    				= z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
                	endfor;
		endfor;
		for i = 7 step 2 until 12:
            	z[1000k + 200m +10i] =  
			z[1000k + 200m ] + 2sqrt(3)*a*(cosd(30+ 60*i),sind(30+60*i));
		endfor;
		for i = 8 step 2 until 12:
            	z[1000k + 200m +10i] =  
			z[1000k + 200m ] + 2sqrt(3)*a*(cosd(30+ 60*i),sind(30+60*i));
		endfor;
 	endfor;
endfor;


pickup pencircle scaled 1pt;
for k = 0, 1, 2:
	for m =0, 1, 2:
		for i = 1 upto 6:
			draw  z[1000k + 200m +10i ]--z[1000k + 200m];
		endfor;
		for i = 2 upto 4:
	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)];
            endfor;
	endfor;
endfor;
pickup pencircle scaled 0.5pt;

%fundamental region
%path q;
%q = z[1000 +10]--z[1000 +20]--z[1000 +30]--z[1000 +40]--z[1000 +50]--z[1000+60]-- cycle;
%fill q withcolor 0.6white;

%colored points, triangles and dashed lines
for k = 0, 1, 2:
	for m =0, 1, 2:
           path p;
            p= z[1000k + 200m +1]..z[1000k + 200m +2]..
            		z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
            fill p withcolor green;	
            for i = 1 upto 6:
             	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
				z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
       		if i = 1 :
                 		fill p withcolor black;
      		else: if i = 2:
      			fill p withcolor red;
      		else: if i = 3:
      			fill p withcolor black;
      		else: if i = 4:
      			fill p withcolor red;
      		else: if i = 5:
      			fill p withcolor black;	
      		else: 
      			fill p withcolor black;
      		fi
      		fi
      		fi
      		fi
      		fi
	      endfor;
            
            for i = 7 step 2 until 12:
%            	for j = 1 upto 4:
%            		z[1000k + 200m +10i + j] =
%				z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
%            	endfor;
%            	path p;
%            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
%            	fill p withcolor green;
            	z[1000k + 200m +10i + 5] =
				 0.7[z[1000k + 200m],z[1000k + 200m +10i]];
            	z[1000k + 200m +10i + 6] =
			 	0.4[z[1000k + 200m],z[1000k + 200m + 10i]];
            	z[1000k + 200m +10i + 7] = 
				z[1000k + 200m+10i + 5] +  0.7a*(cosd(120+ 60*i),sind(120+60*i));
            	path q;
			q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--
				z[1000k + 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
            endfor;
            for i = 8 step 2 until 12:
			z[1000k +500+ 200m +10i + 5] =
				 0.7[z[1000k + 200m],z[1000k + 200m +10i]];
            	z[1000k +500+ 200m +10i + 6] =
			 	0.4[z[1000k + 200m],z[1000k + 200m + 10i]];
            	z[1000k +500+ 200m +10i + 7] = 
				z[1000k +500+ 200m+10i + 5] + 
				 0.7a*(cosd(-60+ 60*i),sind(-60+60*i));
			path q;
			q = z[1000k +500+ 200m +10i + 5]--z[1000k +500+ 200m +10i + 6]--
				z[1000k +500+ 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
		endfor;            
	endfor;
endfor;

endfig;

beginfig(15);
% hexagonal lattice, P31m
%definitions of points
z0 = (4a,4a);
for k = 0, 1, 2:
	for m =0, 1, 2:%3,4
		if k = 2: %when k =2, 4 ..., we shift y coord -1
			z[1000k + 150m] 
			= z0+ k*(6a, 2*sqrt(3)*a) + (m-1)*(0, 4*sqrt(3)*a);
			z[1000k +500+ 150m] =z[1000k + 150m]+(2a, 2*sqrt(3)*a);
		else: 
			z[1000k + 150m] = z0+ k*(6a, 2*sqrt(3)*a) + m*(0, 4*sqrt(3)*a);
			z[1000k +500+ 150m] =z[1000k + 150m]+(2a, 2*sqrt(3)*a);
		fi
            for j = 1 upto 4:
            	z[1000k + 150m +j] 
			= z[1000k + 150m]+ 0.2a*(cosd(90j),sind(90j));
            endfor;
		for i = 1 upto 8:
			z[1000k + 150m +10i] 
			= z[1000k + 150m] + 4a*(cosd(60*i),sind(60*i));
                	for j = 1 upto 4:
                		z[1000k + 150m +10i + j] 
    				= z[1000k + 150m +10i] + 0.2a*(cosd(90j),sind(90j));
                	endfor;
		endfor
 	endfor;
endfor;

pickup pencircle scaled 1pt;
for k = 0, 1, 2:
	for m =0, 1, 2:
		for i = 2 step 2 until 7:
			draw  z[1000k + 150m +10i ]--z[1000k + 150m +10i+20];
		endfor;
	endfor;
endfor;
pickup pencircle scaled 0.5pt;

%colored points, triangles and dashed lines
for k = 0, 1, 2:
	for m =0, 1, 2:
           path p;
            p= z[1000k + 150m +1]..z[1000k + 150m +2]..
            		z[1000k + 150m +3]..z[1000k + 150m +4].. cycle;
            fill p withcolor black ;	
            for i = 1 upto 6:
             	path p;
            	p= z[1000k + 150m +10i +1]..z[1000k + 150m +10i +2]..
				z[1000k + 150m +10i +3]..z[1000k + 150m +10i +4].. cycle;
       		if i = 1 :
                 	fill p withcolor black;
      		else: if i = 2:
      			fill p withcolor red;
      		else: if i = 3:
      			fill p withcolor black;
      		else: if i = 4:
      			fill p withcolor red;
      		else: if i = 5:
      			fill p withcolor black;	
      		else: 
      			fill p withcolor red;
      		fi
      		fi
      		fi
      		fi
      		fi
            endfor;
             for i = 2 step 2 until 6:
			draw  z[1000k + 150m +10i ]-- z[1000k + 150m] dashed withdots;
            endfor;           
            
            for i = 9 step 2 until 13:
            	z[1000k + 150m +10i] =  
			z[1000k + 150m ] + 2sqrt(3)*a*(cosd(30- 60*i),sind(30-60*i));
            	z[1000k + 150m +10i + 5] =
				 0.3[z[1000k + 150m],z[1000k + 150m +10i]];
            	z[1000k + 150m +10i + 6] =
			 	0.5[z[1000k + 150m],z[1000k + 150m + 10i]];
            	z[1000k + 150m +10i + 7] = 
				z[1000k + 150m+10i + 5] 
				+  0.4a*(cosd(-60- 60*i),sind(-60-60*i));
            	path q;
			q = z[1000k + 150m +10i + 5]--z[1000k + 150m +10i + 6]--
				z[1000k + 150m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
            endfor;
            
             for i = 9 step 2 until 13:
            	z[1000k +500+ 150m +10i] =  
				z[1000k+500+ 150m ]+
				2sqrt(3)*a*(cosd(30+ 60*i),sind(30+60*i));
            	z[1000k +500+ 150m +10i + 5] =
				 0.3[z[1000k +500+ 150m],z[1000k +500+ 150m +10i]];
            	z[1000k +500+ 150m +10i + 6] =
			 	0.5[z[1000k +500+ 150m],z[1000k +500+ 150m + 10i]];
            	z[1000k +500+ 150m +10i + 7] = 
				z[1000k +500+ 150m+10i + 5] 
				+  0.4a*(cosd(120+ 60*i),sind(120+60*i));
            	path q;
			q = z[1000k +500+ 150m +10i + 5]--z[1000k +500+ 150m +10i + 6]--
				z[1000k +500+ 150m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
            endfor;
             for i = 2 upto 4:
	        	draw z[1000k + 150m +10i]--z[1000k + 150m +10(i+1)] dashed withdots;
             endfor;
	endfor;
endfor;
endfig;

numeric a;
a=14pt;

beginfig(16);
%M5 
z0 = (4a,4a);
for k = 0, 1, 2:
	for m =0, 1, 2:%3,4
		if k = 2: %when k =2, 4 ..., we shift y coord -1
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + (m-1)*(0, 4*sqrt(3)*a);
		else: 
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + m*(0, 4*sqrt(3)*a);
		fi
		for j = 1 upto 4:
            		z[1000k + 200m +j] = z[1000k + 200m]+ 0.2a*(cosd(90j),sind(90j));
		endfor;
		for i = 1 upto 6:
            		z[1000k + 200m +10i] 
				= z[1000k + 200m] + 4a*(cosd(60*i),sind(60*i));
            		for j = 1 upto 4:
            			z[1000k + 200m +10i + j] 
					= z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
            		endfor;
		endfor;
		for i = 7 upto 13:
            	z[1000k + 200m +10i] =  
			z[1000k + 200m ] + 2sqrt(3)*a*(cosd(30+ 60*i),sind(30+60*i));
            	for j = 1 upto 4:
            		z[1000k + 200m +10i + j] =
				z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
            	endfor;
		endfor;
 	endfor;
endfor;

%fundamental region
%path q;
%q = z[1000 +10]--z[1000 +20]--z[1000 +30]--z[1000 +40]--z[1000 +50]--z[1000+60]-- cycle;
%fill q withcolor 0.8white;

%colored points, triangles and dashed lines
for k = 0, 1, 2:
	for m =0, 1, 2:
            path p;
            p= z[1000k + 200m +1]..z[1000k + 200m +2]..
            	z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
		fill p withcolor red;	
		for i = 1 upto 6:
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
			z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor blue;
			draw  z[1000k + 200m +10i ]-- z[1000k + 200m] dashed withdots;
            endfor;
            for i = 7 upto 13:
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
				z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor green;
            	z[1000k + 200m +10i + 5] =
			 0.8[z[1000k + 200m],z[1000k + 200m +10i]];
            	z[1000k + 200m +10i + 6] =
			 0.6[z[1000k + 200m],z[1000k + 200m + 10i]];
            	z[1000k + 200m +10i + 7] = 
			z[1000k + 200m+10i + 5] +  a*(cosd(120+ 60*i),sind(120+60*i));
            	path q;
			q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--
				z[1000k + 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
		endfor;
		for i = 2 upto 4:
	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)] 
				dashed withdots;
             endfor;
            
	endfor;
endfor;
endfig;

beginfig(17);
%M5 
z0 = (4a,4a);
for k = 0, 1, 2,:
	for m =0, 1, 2:%3,4
		if k = 2: %when k =2, 4 ..., we shift y coord -1
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + (m-1)*(0, 4*sqrt(3)*a);
		else: 
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + m*(0, 4*sqrt(3)*a);
		fi
		for j = 1 upto 4:
            		z[1000k + 200m +j] = z[1000k + 200m]+ 0.2a*(cosd(90j),sind(90j));
		endfor;
		for i = 1 upto 6:
            		z[1000k + 200m +10i] 
				= z[1000k + 200m] + 4a*(cosd(60*i),sind(60*i));
            		for j = 1 upto 4:
            			z[1000k + 200m +10i + j] 
					= z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
            		endfor;
		endfor;
		for i = 7 upto 13:
            	z[1000k + 200m +10i] =  
			z[1000k + 200m ] + 2sqrt(3)*a*(cosd(30+ 60*i),sind(30+60*i));
            	for j = 1 upto 4:
            		z[1000k + 200m +10i + j] =
				z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
            	endfor;
		endfor;
 	endfor;
endfor;

%fundamental region
%path q;
%q = z[1000 +10]--z[1000 +20]--z[1000 +30]--z[1000 +40]--z[1000 +50]--z[1000+60]-- cycle;
%fill q withcolor 0.9white;

pickup pencircle scaled 1pt;
for k = 0, 1, 2:
	for m = 0, 1, 2:
		for i = 1 upto 6:
			draw  z[1000k + 200m +10i ]-- z[1000k + 200m];
		endfor;
		for i = 7 upto 13:
			draw  z[1000k + 200m +10i ]-- z[1000k + 200m];
		endfor;
		for i = 2 upto 4:
	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)] ;
		endfor;
	endfor;
endfor;
pickup pencircle scaled 0.5pt;

%colored points, triangles
for k = 0, 1, 2:
	for m = 0, 1, 2:
            path p;
            p= z[1000k + 200m +1]..z[1000k + 200m +2]..
            	z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
		fill p withcolor red;	
		for i = 1 upto 6:
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
			z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor blue;
            endfor;
            for i = 7 upto 13:
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
				z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor green;
            	z[1000k + 200m +10i + 5] = %
				 0.8[z[1000k + 200m],z[1000k + 200m +10i]]
				 +  0.3a*(cosd(120+ 60*i),sind(120+60*i));
            	z[1000k + 200m +10i + 6] = %
			 	0.5[z[1000k + 200m],z[1000k + 200m + 10i]]%0.6>0.5
				+  0.3a*(cosd(120+ 60*i),sind(120+60*i));
            	z[1000k + 200m +10i + 7] = %
				z[1000k + 200m+10i + 5] +  0.5a*(cosd(120+ 60*i),sind(120+60*i));
            	path q;
			q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--
				z[1000k + 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
%dotlabel(btex $ $ etex, z[1000k + 200m +10i + 5]);%%
			z[1000k +500+ 200m +10i + 5] = %
				 0.8[z[1000k + 200m],z[1000k + 200m +10i]]
				 +  0.3a*(cosd(-60+ 60*i),sind(-60+60*i));
            	z[1000k  +500+ 200m +10i + 6] = %
			 	0.5[z[1000k + 200m],z[1000k + 200m + 10i]]%0.6>0.5
				+  0.3a*(cosd(-60+ 60*i),sind(-60+60*i));
            	z[1000k  +500+ 200m +10i + 7] = %
				z[1000k  +500+ 200m+10i + 5] 
				+  0.5a*(cosd(-60+ 60*i),sind(-60+60*i));
            	path q;
			q = z[1000k  +500+ 200m +10i + 5]--z[1000k  +500+ 200m +10i + 6]--
				z[1000k  +500+ 200m +10i + 7]-- cycle ;
			fill q withcolor 0.6white;
			draw q;
		endfor;            
	endfor;
endfor;
endfig;

numeric a;
a = 10pt;
beginfig(21);
% generic lattice P1
z0 = (0,0);
for i = 1 upto 8:
	for j = 1 upto 4:
		z[100i+10j ]
		= z0 + (i-1)*(2a,0) +(j-1)*(5a*cosd(90),4a*sind(90));
	endfor;
endfor;

path p;
p = z210--z410--z440--z240-- cycle ;
fill p withcolor 0.8white;

for i = 2 step 2 until 8:
	for j= 2  step 2 until  2:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%		drawarrow z[330]--z[100i+10j+110];
		z[100i+10j +1] = z[100i+10j ] +(2a,a);
		z[100i+10j +2] =z[100i+10j +1] +(a,0);
		z[100i+10j +3] =z[100i+10j +1] +(0,sqrt(3)*a);
		path q;
		q = z[100i+10j +1]--z[100i+10j +2]--z[100i+10j +3]-- cycle ;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;
for i = 2 step 2 until 6:
	draw z[100i+10]--z[100i+30] dashed withdots;
endfor;
%for i = 2 step 2 until 3:
%	draw z[100+10i]--z[600+10i] dashed withdots;
%endfor;
%
%pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;
%
%label.bot(btex $\mathbf a$ etex,z320);
%label.lft(btex $\mathbf b$ etex,z230);
%
endfig;

beginfig(22);
% generic lattice P2
z0 = (0,0);
for i = 1 upto 7:
	for j = 1 upto 4:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0) +(j-1)*(6a*cosd(90),6a*sind(90));
		for k = 1 upto 4:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			0.2a*(cosd(90*(k+1)),sind(90*(k+1)));
		endfor;
		for k = 5 upto 8:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			(0.2a*cosd(90*(k+1)),0.2a*sind(90*(k+1)));
		endfor;
	endfor;
endfor;

%path p;
%p = z220--z420--z440--z240-- cycle ;
%fill p withcolor 0.9white;
%

for i = 2 step 2 until 4:
	draw z[100i+10]--z[100i+30] dashed withdots;
endfor;
for i = 2 step 2 until 3:
	draw z[100+10i]--z[700+10i] dashed withdots;
endfor;
%
%for i = 2 upto 5:
%	for j= 2 upto 5:
%		drawarrow z[100i+10j+5]..z[100i+10j+6]..z[100i+10j+7];
%	endfor;
%endfor;
%
for i = 2 step 2 until 6:
	for j= 2 step 2 until 3:
		path p, q, r;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor red;
		draw p;
		z[1000+100i+10j] = z[100i+10j] + (a,a);
		z[2000+100i+10j] = z[1000+100i+10j] + (a,0);
		z[3000+100i+10j] = z[1000+100i+10j] + (0,2a);
		q = z[1000+100i+10j]--z[2000+100i+10j]--z[3000+100i+10j]-- cycle;
		fill q withcolor 0.6white;
		draw q;
		z[1000-100+100i+10j] = z[100i+10j] - (a,a);
		z[2000-100+100i+10j] = z[1000-100+100i+10j] - (a,0);
		z[3000-100+100i+10j] = z[1000-100+100i+10j] - (0,2a);
		r = z[1000-100+100i+10j]--z[2000-100+100i+10j]--
			z[3000-100+100i+10j]-- cycle;
		fill r withcolor 0.6white;
		draw r;
	endfor;
endfor;
%for i = 2 step 2 until 5:
%	for j= 3 step 2 until 3:
%		path p;
%		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
%		fill p withcolor green;
%	endfor;
%endfor;
for i = 3 step 2 until 5:
	for j= 2 step 2 until 3:
		path p;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor (0,0.7,1);% 0.35[blue,white];
	endfor;
endfor;
%for i = 3 step 2 until 5:
%	for j= 3 step 2 until 4:
%		path p;
%		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
%		fill p withcolor black;
%	endfor;
%endfor;


%pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;
%
%label.bot(btex $\mathbf a$ etex,z321);
%label.lft(btex $\mathbf b$ etex,z234);

endfig;


beginfig(23);
%Pm
z0 = (0,0.5a);
z1 = (3a,0);
z2 = (0,4a);
z3 = (a,0);
z4 = (a,0);
z5 = (0,2a);
z6 = (0,a);

for i = 1 upto 5:
	for j = 1 upto 6:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
	endfor;
endfor;

%path q;
%q = z210--z410--z420--z220-- cycle;
%fill q withcolor 0.9white;

for i = 1 step 2 until 5:
	for j = 3 upto 3:
		z[100i+10j+1] = z[100i+10j]+z6 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j = 3 upto 3:
		z[100i+10j+4] = z[100i+10j]+z6 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

pickup pencircle scaled 1pt;
for  i = 2 upto  5:
	draw z[100i+20]--z[100i+60];
endfor;

endfig;

beginfig(24);
%P2m
z0 = (0,2a);
z1 = (3a,0);
z2 = (0,7a);
z3 = (a,0);
z4 = (a,0);
z5 = (0,2a);
z6 = (0,2a);

for i = 1 upto 6:
	for j = 1 upto 6:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
		for k = 	1 upto 4:
			z[1000k+100i+10j ]= z[100i+10j] + 0.3a*(cosd(90*k),sind(90*k));
		endfor;
	endfor;
endfor;

%path q;
%q = z220--z420--z430--z230-- cycle;
%fill q withcolor 0.9white;

for i = 1 upto 5:
	for j = 1 step 2 until 2:
		z[100i+10j+1] = z[100i+10j]+z6 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

%for i = 3 step 2 until 5:
%	for j = 1 step 2 until 2:
%		z[100i+10j+4] = z[100i+10j]+z6 - z3 ;
%		z[100i+10j+5] = z[100i+10j+4] + z4 ;
%		z[100i+10j+6] = z[100i+10j+4] + z5 ;
%		path p;
%		p = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
%		fill p withcolor 0.9white;
%		draw p;
%	endfor;
%endfor;

for i = 1 upto 5:
	for j = 2 step 2 until 2:
		z[100i+10j+1] = z[100i+10j]+z6+z5 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] - z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
%for i = 3 step 2 until 5:
%	for j = 2 step 2 until 2:
%		z[100i+10j+4] = z[100i+10j]+z6+z5 - z3 ;
%		z[100i+10j+5] = z[100i+10j+4] + z4 ;
%		z[100i+10j+6] = z[100i+10j+4] - z5 ;
%		path q;
%		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
%		fill q withcolor 0.2white;
%		draw q;
%	endfor;
%endfor;

for  i = 2 upto  5:
	draw z[100i+10]--z[100i+30]  dashed withdots;
endfor;

pickup pencircle scaled 1pt;
for  j = 2 upto  2:
	draw z[100+10j]--z[600+10j];
endfor;

%for i = 2 step 2 until 5:
%	for j = 2 step 2 until 2:
%		path q;
%		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
%			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
%		fill q withcolor red;
%	endfor;
%endfor;
%
%for i = 3 step 2 until 5:
%	for j = 2 step 2 until 2:
%		path q;
%		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
%			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
%		fill q withcolor green;
%	endfor;
%endfor;
%
%for i = 3 step 2 until 5:
%	for j = 3 step 2 until 2:
%		path q;
%		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
%			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
%		fill q withcolor (0,0.7,1);
%	endfor;
%endfor;
%
%for i = 2 step 2 until 5:
%	for j = 3 step 2 until 2:
%		path q;
%		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
%			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
%		fill q withcolor black;
%	endfor;
%endfor;

endfig;


beginfig(25);
%P2mm
z0 = (0,a);
z1 = (3a,0);
z2 = (0,6a);
z3 = (a,0);
z4 = (a,0);
z5 = (0,2a);
z6 = (0,2a);

for i = 1 upto 6:
	for j = 1 upto 6:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
		for k = 	1 upto 4:
			z[1000k+100i+10j ]= z[100i+10j] + 0.3a*(cosd(90*k),sind(90*k));
		endfor;
	endfor;
endfor;

%path q;
%q = z220--z420--z430--z230-- cycle;
%fill q withcolor 0.9white;

for i = 1 step 4 until 5:
	for j = 1 step 2 until 2:
		z[100i+10j+1] = z[100i+10j]+z6 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

for i = 3 step 4 until 5:
	for j = 1 step 2 until 2:
		z[100i+10j+4] = z[100i+10j]+z6 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path p;
		p = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

for i = 3 step 4 until 5:
	for j = 2 step 2 until 3:
		z[100i+10j+1] = z[100i+10j]+z6+z5 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] - z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 5 step 4 until 5:
	for j = 2 step 2 until 2:
		z[100i+10j+4] = z[100i+10j]+z6+z5 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] - z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

for  j = 2 upto  2:
	draw z[100+10j]--z[600+10j] dashed evenly;
endfor;

pickup pencircle scaled 1pt;
for  i = 2 step 2 until  6:
	draw z[100i+10]--z[100i+30];
endfor;

%for i = 2 step 2 until 5:
%	for j = 2 step 2 until 2:
%		path q;
%		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
%			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
%		fill q withcolor red;
%	endfor;
%endfor;

for i = 3 step 2 until 5:
	for j = 2 step 2 until 2:
		path q;
		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
		fill q withcolor red;
	endfor;
endfor;

%for i = 3 step 2 until 5:
%	for j = 3 step 2 until 2:
%		path q;
%		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
%			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
%		fill q withcolor (0,0.7,1);
%	endfor;
%endfor;
%
%for i = 2 step 2 until 5:
%	for j = 3 step 2 until 2:
%		path q;
%		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
%			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
%		fill q withcolor black;
%	endfor;
%endfor;

endfig;

beginfig(26);
%P2mm
z0 = (0,0);
z1 = (3a,0);
z2 = (0,6a);
z3 = (a,0);
z4 = (a,0);
z5 = (0,2a);
z6 = (0,2a);

for i = 1 upto 6:
	for j = 1 upto 6:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
		for k = 	1 upto 4:
			z[1000k+100i+10j ]= z[100i+10j] + 0.3a*(cosd(90*k),sind(90*k));
		endfor;
	endfor;
endfor;

%path q;
%q = z220--z420--z430--z230-- cycle;
%fill q withcolor 0.9white;

for i = 1 step 2 until 5:
	for j = 1 step 2 until 2:
		z[100i+10j+1] = z[100i+10j]+z6 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

for i = 3 step 2 until 5:
	for j = 1 step 2 until 2:
		z[100i+10j+4] = z[100i+10j]+z6 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path p;
		p = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;

for i = 1 step 2 until 5:
	for j = 2 step 2 until 2:
		z[100i+10j+1] = z[100i+10j]+z6+z5 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] - z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j = 2 step 2 until 2:
		z[100i+10j+4] = z[100i+10j]+z6+z5 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] - z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

pickup pencircle scaled 1pt;
for  i = 2 upto  5:
	draw z[100i+10]--z[100i+30];
endfor;
for  j = 2 upto  2:
	draw z[100+10j]--z[600+10j];
endfor;

for i = 2 step 2 until 5:
	for j = 2 step 2 until 2:
		path q;
		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
		fill q withcolor red;
	endfor;
endfor;

for i = 3 step 2 until 5:
	for j = 2 step 2 until 2:
		path q;
		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
		fill q withcolor green;
	endfor;
endfor;

for i = 3 step 2 until 5:
	for j = 3 step 2 until 2:
		path q;
		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
		fill q withcolor (0,0.7,1);
	endfor;
endfor;

for i = 2 step 2 until 5:
	for j = 3 step 2 until 2:
		path q;
		q = z[1000 + 100i+10j]..z[2000 + 100i+10j]..
			z[3000 + 100i+10j]..z[4000 + 100i+10j].. cycle;
		fill q withcolor black;
	endfor;
endfor;

endfig;

beginfig(27);
% figure 7
z0 = (0,0);
z1 = (0,4a);
z2 = (4a,0);
z3 = (0,a);
z4 = (0,2a);
z5 = (a,0);
z6 = (a,0);

for i = 1 upto 5:
	for j = 1 upto 5:
		z[100i+10j]= z0 + (i-1)*z1 + (j-1)*z2;
	endfor;
endfor;

%path q;
%q = z210--z410--z430--z230-- cycle;
%fill q withcolor 0.9white;
%
for i = 3 step 2 until 3:
	for j = 1 step 2 until 3:
		z[100i+10j+1] = z[100i+10j]+z6 + z3 ;
		z[100i+10j+2] = z[100i+10j+1] + z4 ;
		z[100i+10j+3] = z[100i+10j+1] + z5 ;
		path p;
		p = z[100i+10j+1]--z[100i+10j+2]--z[100i+10j+3]-- cycle;
		fill p withcolor 0.6white;
		draw p;
	endfor;
endfor;
for i = 3 step 2 until 4:
	for j = 2 step 2 until 4:
		z[100i+10j+4] = z[100i+10j]+z6 - z3 ;
		z[100i+10j+5] = z[100i+10j+4] - z4 ;
		z[100i+10j+6] = z[100i+10j+4] + z5 ;
		path q;
		q = z[100i+10j+4]--z[100i+10j+5]--z[100i+10j+6]-- cycle;
		fill q withcolor 0.6white;
		draw q;
	endfor;
endfor;

for  i = 3 upto  3:
	draw z[100i+10]--z[100i+50] dashed evenly;
endfor;

for  i = 2 upto  4:
	draw z[200+10i]--z[400+10i] dashed withdots;
endfor;

endfig;

beginfig(29);
%D_5
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);

%360/10=36
for i = 1 upto 10:
	z[10i+1] = z0 + 2a*(cosd(36*(i-1)), sind(36*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(36*(i-1)), sind(36*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(36*(i-1)), sind(36*(i-1)) );
	z[10i+4] =z[10i+1] + 0.7a*(cosd(36*(i-1)+90), sind(36*(i-1)+90) );
	z[10i+5] =z[10i+2] + 0.7a*(cosd(36*(i-1)+90), sind(36*(i-1)+90) );
	z[10i+6] =z[10i+2] + 2a*(cosd(36*(i-1)+90), sind(36*(i-1)+90) );
	z[10i+7] =z[10i+1] + 0.7a*(cosd(36*(i-1)-90), sind(36*(i-1)-90) );
	z[10i+8] =z[10i+2] + 0.7a*(cosd(36*(i-1)-90), sind(36*(i-1)-90) );
	z[10i+9] =z[10i+2] + 2a*(cosd(36*(i-1)-90), sind(36*(i-1)-90) );
endfor;

for i = 1 step 2 until 10:
	path p, q;
	p = z[10i+4] --z[10i+5]--z[10i+6]-- cycle ;
	q = z[10i+7] --z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
	fill q withcolor 0.6white;
	draw p;
	draw q;
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 5:
	draw z[10i+3] --z[50+10i+3] ;
endfor;

path q;
q = z1..z2..z3..z4.. cycle;
fill q withcolor red;

endfig;

beginfig(28);
%D_6
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);

%360/2=180
for i = 1 upto 3:
	z[10i+1] = z0 + 2a*(cosd(180*(i-1)), sind(180*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(180*(i-1)), sind(180*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(180*(i-1)), sind(180*(i-1)) );
	z[10i+4] =z[10i+1] + 1.5a*(cosd(180*(i-1)+90), sind(180*(i-1)+90) );
	z[10i+5] =z[10i+2] + 1.5a*(cosd(180*(i-1)+90), sind(180*(i-1)+90) );
	z[10i+6] =z[10i+2] + 2.5a*(cosd(180*(i-1)+90), sind(180*(i-1)+90) );
	z[10i+7] =z[10i+1] + 1.5a*(cosd(180*(i-1)-90), sind(180*(i-1)-90) );
	z[10i+8] =z[10i+2] + 1.5a*(cosd(180*(i-1)-90), sind(180*(i-1)-90) );
	z[10i+9] =z[10i+2] + 2.5a*(cosd(180*(i-1)-90), sind(180*(i-1)-90) );
endfor;

for i = 1 step 1 until 2:
	path p, q;
	p = z[10i+4] --z[10i+5]--z[10i+6]-- cycle ;
%	q = z[10i+7] --z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
%	fill q withcolor 0.6white;
	draw p;
%	draw q;
endfor;

%pickup pencircle scaled 1pt;
for i = 1 upto 2:
	draw z[10i+3] --z[10+10i+3] dashed withdots;
endfor;

path q;
q = z1..z2..z3..z4.. cycle;
fill q withcolor red;

endfig;

beginfig(30);
%D_6
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);

%360/12=30
for i = 1 upto 12:
	z[10i+1] = z0 + 2a*(cosd(30*(i-1)), sind(30*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(30*(i-1)), sind(30*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(30*(i-1)), sind(30*(i-1)) );
	z[10i+4] =z[10i+1] + 0.5a*(cosd(30*(i-1)+90), sind(30*(i-1)+90) );
	z[10i+5] =z[10i+2] + 0.5a*(cosd(30*(i-1)+90), sind(30*(i-1)+90) );
	z[10i+6] =z[10i+2] + 1.5a*(cosd(30*(i-1)+90), sind(30*(i-1)+90) );
	z[10i+7] =z[10i+1] + 0.5a*(cosd(30*(i-1)-90), sind(30*(i-1)-90) );
	z[10i+8] =z[10i+2] + 0.5a*(cosd(30*(i-1)-90), sind(30*(i-1)-90) );
	z[10i+9] =z[10i+2] + 1.5a*(cosd(30*(i-1)-90), sind(30*(i-1)-90) );
endfor;

for i = 1 step 2 until 12:
	path p, q;
	p = z[10i+4] --z[10i+5]--z[10i+6]-- cycle ;
	q = z[10i+7] --z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
	fill q withcolor 0.6white;
	draw p;
	draw q;
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 6:
	draw z[10i+3] --z[60+10i+3] ;
endfor;

path q;
q = z1..z2..z3..z4.. cycle;
fill q withcolor red;

endfig;

beginfig(31); %from (29)
%C_5
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);

%360/10=36
for i = 1 upto 10:
	z[10i+1] = z0 + 1.2a*(cosd(36*(i-1)), sind(36*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(36*(i-1)), sind(36*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(36*(i-1)), sind(36*(i-1)) );
	z[10i+4] =z[10i+1] + 0.7 a*(cosd(36*(i-1)+90), sind(36*(i-1)+90) );
	z[10i+5] =z[10i+2] + 0.7 a*(cosd(36*(i-1)+90), sind(36*(i-1)+90) );
	z[10i+6] =z[10i+2] + 2.5a*(cosd(36*(i-1)+90), sind(36*(i-1)+90) );
	z[10i+7] =z[10i+1] + 0.7a*(cosd(36*(i-1)-90), sind(36*(i-1)-90) );
	z[10i+8] =z[10i+2] + 0.7a*(cosd(36*(i-1)-90), sind(36*(i-1)-90) );
	z[10i+9] =z[10i+2] + 2a*(cosd(36*(i-1)-90), sind(36*(i-1)-90) );
endfor;

for i = 1 step 2 until 10:
	path p, q;
	p = z[10i+4] --z[10i+5]--z[10i+6]-- cycle ;
	q = z[10i+7] --z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
%	fill q withcolor 0.6white;
	draw p;
%	draw q;
endfor;

for i = 1 step 2 until 9:
	draw  z[0]--z[10i+3] dashed withdots;
endfor;

path q;
q = z1..z2..z3..z4.. cycle;
fill q withcolor red;

endfig;


beginfig(32); %from (30)
%C_6
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);

%360/12=30
for i = 1 upto 12:
	z[10i+1] = z0 + 1.2a*(cosd(30*(i-1)), sind(30*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(30*(i-1)), sind(30*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(30*(i-1)), sind(30*(i-1)) );
	z[10i+4] =z[10i+1] + 0.5a*(cosd(30*(i-1)+90), sind(30*(i-1)+90) );
	z[10i+5] =z[10i+2] + 0.5a*(cosd(30*(i-1)+90), sind(30*(i-1)+90) );
	z[10i+6] =z[10i+2] + 1.5a*(cosd(30*(i-1)+90), sind(30*(i-1)+90) );
	z[10i+7] =z[10i+1] + 0.5a*(cosd(30*(i-1)-90), sind(30*(i-1)-90) );
	z[10i+8] =z[10i+2] + 0.5a*(cosd(30*(i-1)-90), sind(30*(i-1)-90) );
	z[10i+9] =z[10i+2] + 1.5a*(cosd(30*(i-1)-90), sind(30*(i-1)-90) );
endfor;

for i = 1 step 2 until 12:
	path p, q;
	p = z[10i+4] --z[10i+5]--z[10i+6]-- cycle ;
	q = z[10i+7] --z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
%	fill q withcolor 0.6white;
	draw p;
%	draw q;
endfor;

for i = 1 step 2 until 6:
	draw z[10i+3] --z[60+10i+3] dashed withdots;
endfor;

path q;
q = z1..z2..z3..z4.. cycle;
fill q withcolor red;

endfig;

beginfig(33); %from (30)
%C_2
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);

%360/12=30
for i = 1 upto 12:
	z[10i+1] = z0 + 1.2a*(cosd(30*(i-1)), sind(30*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(30*(i-1)), sind(30*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(30*(i-1)), sind(30*(i-1)) );
	z[10i+4] =z[10i+1] + 0.5a*(cosd(30*(i-1)+90), sind(30*(i-1)+90) );
	z[10i+5] =z[10i+2] + 0.5a*(cosd(30*(i-1)+90), sind(30*(i-1)+90) );
	z[10i+6] =z[10i+2] + 1.5a*(cosd(30*(i-1)+90), sind(30*(i-1)+90) );
	z[10i+7] =z[10i+1] + 0.5a*(cosd(30*(i-1)-90), sind(30*(i-1)-90) );
	z[10i+8] =z[10i+2] + 0.5a*(cosd(30*(i-1)-90), sind(30*(i-1)-90) );
	z[10i+9] =z[10i+2] + 1.5a*(cosd(30*(i-1)-90), sind(30*(i-1)-90) );
endfor;

for i = 1 step 2 until 12:
	path p, q;
	p = z[10i+4] --z[10i+5]--z[10i+6]-- cycle ;
	q = z[10i+7] --z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
%	fill q withcolor 0.6white;
	draw p;
%	draw q;
endfor;

for i = 1 step 2 until 6:
	draw z[10i+3] --z[60+10i+3] dashed withdots;
endfor;

path q;
q = z1..z2..z3..z4.. cycle;
fill q withcolor red;

endfig;

beginfig(35);
%D_1
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);
z5 =  (-3a, 0);
%360/2=180
for i = 1 upto 2:
	z[10i+1] = z0 + 2a*(cosd(180*(i-1)), sind(180*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(180*(i-1)), sind(180*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(180*(i-1)), sind(180*(i-1)) );
	z[10i+4] =z[10i+1] +z5 + 1.5a*(cosd(180*(i-1)+90), sind(180*(i-1)+90) );
	z[10i+5] =z[10i+2] +z5 + 1.5a*(cosd(180*(i-1)+90), sind(180*(i-1)+90) );
	z[10i+6] =z[10i+2] +z5 + 2.5a*(cosd(180*(i-1)+90), sind(180*(i-1)+90) );
	z[10i+7] =z[10i+1] +z5 + 1.5a*(cosd(180*(i-1)-90), sind(180*(i-1)-90) );
	z[10i+8] =z[10i+2] +z5 + 1.5a*(cosd(180*(i-1)-90), sind(180*(i-1)-90) );
	z[10i+9] =z[10i+2] +z5 + 2.5a*(cosd(180*(i-1)-90), sind(180*(i-1)-90) );
endfor;

for i = 1 step 2 until 1:
	path p, q;
	p = z[10i+4] --z[10i+5]--z[10i+6]-- cycle ;
	q = z[10i+7] --z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
	fill q withcolor 0.6white;
	draw p;
	draw q;
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 1:
	draw z[10i+3]--z[10 + 10i+3] ;
endfor;

%path q;
%q = z1..z2..z3..z4.. cycle;
%fill q withcolor red;

endfig;

beginfig(36);
%D_2
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);

%360/4=90
for i = 1 upto 4:
	z[10i+1] = z0 + 2a*(cosd(90*(i-1)), sind(90*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(90*(i-1)), sind(90*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(90*(i-1)), sind(90*(i-1)) );
	z[10i+4] =z[10i+1] + 1.5a*(cosd(90*(i-1)+90), sind(90*(i-1)+90) );
	z[10i+5] =z[10i+2] + 1.5a*(cosd(90*(i-1)+90), sind(90*(i-1)+90) );
	z[10i+6] =z[10i+2] + 2.5a*(cosd(90*(i-1)+90), sind(90*(i-1)+90) );
	z[10i+7] =z[10i+1] + 1.5a*(cosd(90*(i-1)-90), sind(90*(i-1)-90) );
	z[10i+8] =z[10i+2] + 1.5a*(cosd(90*(i-1)-90), sind(90*(i-1)-90) );
	z[10i+9] =z[10i+2] + 2.5a*(cosd(90*(i-1)-90), sind(90*(i-1)-90) );
endfor;

for i = 1 step 2 until 3:
	path p, q;
	p = z[10i+4]--z[10i+5]--z[10i+6]-- cycle ;
	q = z[10i+7]--z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
	fill q withcolor 0.6white;
	draw p;
	draw q;
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 2:
	draw z[10i+3]--z[20+10i+3] ;
endfor;

path q;
q = z1..z2..z3..z4.. cycle;
fill q withcolor red;

endfig;

beginfig(37);
%D_3
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);

%360/6=60
for i = 1 upto 6:
	z[10i+1] = z0 + 2a*(cosd(60*(i-1)), sind(60*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(60*(i-1)), sind(60*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(60*(i-1)), sind(60*(i-1)) );
	z[10i+4] =z[10i+1] + 0.5a*(cosd(60*(i-1)+90), sind(60*(i-1)+90) );
	z[10i+5] =z[10i+2] + 0.5a*(cosd(60*(i-1)+90), sind(60*(i-1)+90) );
	z[10i+6] =z[10i+2] + 1.5a*(cosd(60*(i-1)+90), sind(60*(i-1)+90) );%%
	z[10i+7] =z[10i+1] + 0.5a*(cosd(60*(i-1)-90), sind(60*(i-1)-90) );
	z[10i+8] =z[10i+2] + 0.5a*(cosd(60*(i-1)-90), sind(60*(i-1)-90) );
	z[10i+9] =z[10i+2] + 1.5a*(cosd(60*(i-1)-90), sind(60*(i-1)-90) );%%
endfor;

for i = 1 step 2 until 6:
	path p, q;
	p = z[10i+4]--z[10i+5]--z[10i+6]-- cycle ;
	q = z[10i+7]--z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
	fill q withcolor 0.6white;
	draw p;
	draw q;
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 3:
	draw z[10i+3]--z[30+10i+3] ;
endfor;

path q;
q = z1..z2..z3..z4.. cycle;
fill q withcolor red;

endfig;

beginfig(38);
%D_4
z0=(5a,5a);
z1=z0+(0.4a,0);
z2=z0+(0,0.4a);
z3=z0-(0.4a,0);
z4=z0-(0,0.4a);

%360/8=45
for i = 1 upto 8:
	z[10i+1] = z0 + 2a*(cosd(45*(i-1)), sind(45*(i-1)) );
	z[10i+2] = z0 + 4a*(cosd(45*(i-1)), sind(45*(i-1)) );
	z[10i+3] = z0 + 5a*(cosd(45*(i-1)), sind(45*(i-1)) );
	z[10i+4] =z[10i+1] + 0.5a*(cosd(45*(i-1) +90), sind(45*(i-1)+90) );
	z[10i+5] =z[10i+2] + 0.5a*(cosd(45*(i-1)+90), sind(45*(i-1)+90) );
	z[10i+6] =z[10i+2] + 1.5a*(cosd(45*(i-1)+90), sind(45*(i-1)+90) );
	z[10i+7] =z[10i+1] + 0.5a*(cosd(45*(i-1)-90), sind(45*(i-1)-90) );
	z[10i+8] =z[10i+2] + 0.5a*(cosd(45*(i-1)-90), sind(45*(i-1)-90) );
	z[10i+9] =z[10i+2] + 1.5a*(cosd(45*(i-1)-90), sind(45*(i-1)-90) );
endfor;

for i = 1 step 2 until 7:
	path p, q;
	p = z[10i+4]--z[10i+5]--z[10i+6]-- cycle ;
	q = z[10i+7]--z[10i+8]--z[10i+9]-- cycle ;
	fill p withcolor 0.6white;
	fill q withcolor 0.6white;
	draw p;
	draw q;
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 4:
	draw z[10i+3]--z[40+10i+3] ;
endfor;

path q;
q = z1..z2..z3..z4.. cycle;
fill q withcolor red;

endfig;


verbatimtex
\end{document}
etex;
end