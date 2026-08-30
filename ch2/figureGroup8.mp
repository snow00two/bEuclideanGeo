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
a=10pt;
b=6pt;

%beginfig(1);
%z0 = (-4a,4a);
% 
%for i=1 upto 9:
%	z[i] = z0+(2i*a*cosd(0),2i*a*sind(0));
%	z[10 + i] = z[i]+(4a*cosd(0+90),4a*sind(0+90));
%	z[20 + i] = z[i]+(2a*cosd(0+90),2a*sind(0+90));
%	z[30 + i] = z[i]+(4a*cosd(0-90),4a*sind(0-90));
%	z[40 + i] = z[i]+(2a*cosd(0-90),2a*sind(0-90));
%endfor;
%draw z2--z8;
%
%label.rt(btex $\ell$ etex,z8);
%label.top(btex $\mathbf x$ etex,z14);
%label.bot(btex $F(\mathbf x)$ etex,z36);
%%dotlabel.lrt(btex $\mathbf x_0$ etex,z2);
%%label.bot(btex $\alpha\mathbf e$ etex,z3);
%label.bot(btex $\alpha_0\mathbf e$ etex,z5);
%label.lft(btex $\beta\mathbf f$ etex,z24);
%label.rt(btex $-\beta\mathbf f$ etex,z46);
%
%pickup pencircle scaled 1pt;
%%drawarrow z2--z4;
%drawarrow z4--z14;
%drawarrow z4--z6;
%drawarrow z6--z36;
%endfig;
%
%beginfig(2);
%z0=(6a,4a);
%z1=z0-(7a,0);
%z2=z0+(7a,0);
%z3=z0-(0,7a);
%z4=z0+(0,7a);
%z5=z0+(7a*cosd(0),7a*sind(0));
%z6=z0-(5a*cosd(0),5a*sind(0));
%z7=z0+(6a*cosd(90+0),6a*sind(90+0));
%z8=z0+(6a*cosd(0),6a*sind(0));
%
%z10=z0+(4a*cosd(0),4a*sind(0));
%z11=z10+(3a*cosd(90+0),3a*sind(90+0));
%z12=z10+(b*cosd(90+0),b*sind(90+0));
%z13=z12+(b*cosd(0),b*sind(0));
%z14=z13-(b*cosd(90+0),b*sind(90+0));
%z15=z10-(3a*cosd(90+0),3a*sind(90+0));
%z16=z0+(3a*cosd(90+0),3a*sind(90+0));
%
%z17=z0+(b*cosd(90+0),b*sind(90+0));
%z18=z17-(b*cosd(0),b*sind(0));
%z19=z18-(b*cosd(90+0),b*sind(90+0));
%
%%drawarrow z1--z2;
%%drawarrow z3--z4;
%draw z5--z6;
%
%draw z11--z15;
%draw z12--z13--z14;
%%draw z17--z18--z19;
%%draw z11--z16 dashed evenly;
%dotlabel.bot(btex $\mathbf x_0 $ etex,z0);
%label.rt(btex $\,$ etex,z2);
%label.top(btex $\quad$ etex,z4);
%label.top(btex $\mathbf x$ etex,z11);
%%label.top(btex $\mathbf f$ etex,z7);
%label.top(btex $\mathbf e$ etex,z8);
%label.lft(btex $\ell$ etex,z6);
%label.rt(btex $ $ etex,z15);
%%label.lft(btex $ (\mathbf f,\mathbf x)\,\mathbf f$ etex,z16);
%%label.rt(btex $\,\,\mathbf x- (\mathbf e,\mathbf x)\,\mathbf e$ etex,z10);
%%
%pickup pencircle scaled 1pt;
%drawarrow z0--z11;%
%%drawarrow z0--z16;%
%drawarrow z0--z15;
%%drawarrow z0--z10;
%%drawarrow z0--z7; %
%drawarrow z0--z8;%
%endfig;
%

beginfig(1);
z0 = (-5a,0);
 
for i=1 upto 9:
	z[i] = z0+(2i*a*cosd(20),2i*a*sind(20));
	z[10 + i] = z[i]+(4a*cosd(20+90),4a*sind(20+90));
	z[20 + i] = z[i]+(2a*cosd(20+90),2a*sind(20+90));
	z[30 + i] = z[i]+(4a*cosd(20-90),4a*sind(20-90));
	z[40 + i] = z[i]+(2a*cosd(20-90),2a*sind(20-90));
endfor;
draw z3--z9;

label.rt(btex $\ell$ etex,z9);
label.top(btex $\mathbf x$ etex,z14);
label.bot(btex $F(\mathbf x)$ etex,z36);
label.top(btex $F\circ F(\mathbf x)$ etex,z18);
%dotlabel.lrt(btex $\mathbf x_0$ etex,z2);
%dotlabel.lrt(btex $\mathbf x_0$ etex,z2);
%label.bot(btex $\alpha\mathbf e$ etex,z3);
label.bot(btex $\alpha_0\mathbf e$ etex,z5);
label.bot(btex $\alpha_0\mathbf e$ etex,z7);
label.lft(btex $\beta\mathbf f$ etex,z24);
label.rt(btex $-\beta\mathbf f$ etex,z46);
label.lft(btex $\beta\mathbf f$ etex,z28);

pickup pencircle scaled 1pt;
%drawarrow z2--z4;
drawarrow z4--z14;
drawarrow z4--z6;
drawarrow z6--z36;
drawarrow z6--z8;
drawarrow z8--z18;
drawarrow z14--z18 withcolor red;
endfig;


beginfig(2);
z0=(7a,3a);
z1=z0-(7a,0);
z2=z0+(7a,0);
z3=z0-(0,7a);
z4=z0+(0,7a);
z5=z0+(7a*cosd(20),7a*sind(20));
z6=z0-(5a*cosd(20),5a*sind(20));
z7=z0+(6a*cosd(90+20),6a*sind(90+20));
z8=z0+(6a*cosd(20),6a*sind(20));

z10=z0+(4a*cosd(20),4a*sind(20));
z11=z10+(3a*cosd(90+20),3a*sind(90+20));
z12=z10+(b*cosd(90+20),b*sind(90+20));
z13=z12+(b*cosd(20),b*sind(20));
z14=z13-(b*cosd(90+20),b*sind(90+20));
z15=z10-(3a*cosd(90+20),3a*sind(90+20));
z16=z0+(3a*cosd(90+20),3a*sind(90+20));

z17=z0+(b*cosd(90+20),b*sind(90+20));
z18=z17-(b*cosd(20),b*sind(20));
z19=z18-(b*cosd(90+20),b*sind(90+20));

z20 = z0 + (2a*cosd(90+20),2a*sind(90+20));
z21 = z0 - (2a*cosd(90+20),2a*sind(90+20));

%drawarrow z1--z2;
%drawarrow z3--z4;
draw z5--z6;
%draw z7--z8;

draw z11--z15;
draw z12--z13--z14;
draw z17--z18--z19;
%draw z11--z16 dashed evenly;

draw z20--z21;
%label.bot(btex $\mathbf 0$ etex,z0);
label.rt(btex $\,$ etex,z2);
label.top(btex $\quad$ etex,z4);
label.top(btex $\mathbf x$ etex,z11);
%label.top(btex $\mathbf f$ etex,z7);
%label.top(btex $\mathbf e$ etex,z8);
label.top(btex $\ell$ etex,z6);
label.rt(btex $F(\mathbf x)$ etex,z15);
%label.lft(btex $ (\mathbf f,\mathbf x)\,\mathbf f$ etex,z16);
%label.rt(btex $\,\,\mathbf x- (\mathbf e,\mathbf x)\,\mathbf e$ etex,z10);
label.bot(btex $\mathbf x'$ etex,z21);
label.top(btex $F(\mathbf x')$ etex,z20);

pickup pencircle scaled 1pt;
draw z5--z6;
%drawarrow z0--z11;%
%drawarrow z0--z16;%
%drawarrow z0--z15;
%drawarrow z0--z10;
%drawarrow z0--z7; %
%drawarrow z0--z8;%

endfig;

numeric c;
c = 18pt;
beginfig(3);
z0 = (-2a,0);
for i = 1 upto 9:
	for j = 1 upto 3:
		z[10i + j] = z0 + (c*(i-1),2c*(j-1))  ;
	endfor;
endfor;

path p;
p = z41--z43--z63--z61-- cycle ;
fill p withcolor 0.8white;

%draw z12--z92;
for i=2 step 2 until 8:
	draw z[10i+1]--z[10i+3] dashed evenly;
endfor;

dotlabel.top(btex $\mathbf x$ etex,z52);
label.top(btex $\mathbf x+\mathbf a$ etex,z72);

pickup pencircle scaled 1pt;
drawarrow z52--z72;

endfig;

numeric a, b;
a = 8pt;
b = 2pt;
beginfig(4);
z0 = (0,-a);
for i = 1 upto 23:
	z[10i +1] = z0 + (a*(i-1),0)  ;
	z[10i +2] = z0 + (a*(i-1),5a)  ;% on the center line
	z[10i +3] = z0 + (a*(i-1),10a)  ;
	for j = 4, 5, 7, 8:
		z[10i + j] = z[10i +2] + (0, a*(j-6))  ;
	endfor;
endfor;
for i = 1 upto 23:
	for j = 1 upto 4:
		z[250 +10i +j] = z[10i +2]+b*(cosd(90 j), sind(90 j));
	endfor;
endfor;

path p, q;
p = z32--z33--z93--z92-- cycle ;
fill p withcolor 0.8white;
q = z181--z183--z153--z151-- cycle ;
fill q withcolor 0.8white;

draw z12--z232 dashed evenly;
for i=3 step 6 until 21:
	draw z[10i+1]--z[10i+3] dashed evenly;
endfor;

for i=3 step 3 until 21:
	drawarrow z[10(i-1)+2]{down}..z[10i+5]..{up}z[10(i+1)+2];
endfor;

%for i=3 step 3 until 21:
%	dotlabel(btex $ $ etex,z[10i+2]);
%endfor;

for i = 3 step 6 until 23:
	path p;
	p = for j = 1 upto 4:
			z[250 +10i +j]..
		endfor cycle;
	fill p withcolor red ;
endfor ;

for i = 6 step 6 until 22:
	path p;
	p = for j = 1 upto 4:
			z[250 +10i +j]..
		endfor cycle;
	fill p withcolor green;
endfor ;

label.top(btex $\mathbf x_0$ etex,z32);
label.top(btex $\mathbf x_1$ etex,z92);
label.top(btex $\mathbf x_2$ etex,z152);
label.top(btex $\mathbf x_3$ etex,z212);
label.top(btex $\mathbf y_0$ etex,z62);
label.top(btex $\mathbf y_1$ etex,z122);
label.top(btex $\mathbf y_2$ etex,z182);

endfig;


%beginfig(3);
%% generic lattice M_1
%z0 = (0,-a);
%for i = 1 upto 7:
%	for j = 1 upto 7:
%		z[100i+10j ]
%		=z0 + (i-1)*(2a,0) +(j-1)*(2a*cosd(75),2.3a*sind(75));
%		for k = 1 upto 4:
%			z[100i+10j +k] 
%			= z[100i+10j ]
%			+ 
%			(0.5a*cosd(75+90*(k+1)),0.5a*sind(75+90*(k+1)));
%		endfor;
%	endfor;
%endfor;
%
%path p;
%p = z220--z420--z440--z240-- cycle ;
%fill p withcolor 0.9white;
%
%for i = 2 step 2 until 6:
%	for j= 2  step 2 until  6:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%%		drawarrow z[330]--z[100i+10j+110];
%	endfor;
%endfor;
%for i = 2 step 2 until 6:
%	draw z[100i+10]--z[100i+70] dashed evenly;
%endfor;
%for i = 2 step 2 until 6:
%	draw z[100+10i]--z[700+10i] dashed evenly;
%endfor;
%
%pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;
%
%label.bot(btex $\mathbf a$ etex,z320);
%label.lft(btex $\mathbf b$ etex,z230);
%
%endfig;
%
%beginfig(4);
%% generic lattice M2
%z0 = (0,-a);
%for i = 1 upto 7:
%	for j = 1 upto 7:
%		z[100i+10j ]
%		=z0 + (i-1)*(2a,0) +(j-1)*(2a*cosd(75),2.3a*sind(75));
%		for k = 1 upto 4:
%			z[100i+10j +k] 
%			= z[100i+10j ]
%			+ 
%			(0.5a*cosd(75+90*(k+1)),0.5a*sind(75+90*(k+1)));
%		endfor;
%	endfor;
%endfor;
%
%path p;
%p = z220--z320--z340--z240-- cycle ;
%fill p withcolor 0.9white;
%
%for i = 2 upto 3:
%	for j= 2 upto 3:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%		drawarrow z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3];
%%		drawarrow z[100i+10j+3]..z[100i+10j+4]..z[100i+10j+1];
%	endfor;
%endfor;
%for i = 2 step 2 until 6:
%	draw z[100i+10]--z[100i+70] dashed evenly;
%endfor;
%for i = 2 step 2 until 6:
%	draw z[100+10i]--z[700+10i] dashed evenly;
%endfor;
%
%pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;
%
%label.bot(btex $\mathbf a$ etex,z321);
%label.lft(btex $\mathbf b$ etex,z234);
%
%endfig;


%numeric a;
%a = 7pt;
%beginfig(3);
%% generic lattice M_1
%z0 = (0,-a);
%for i = 1 upto 9:
%	for j = 1 upto 9:
%		z[100i+10j ]
%		=z0 + (i-1)*(2a,0) +(j-1)*(2a*cosd(75),2.3a*sind(75));
%		for k = 1 upto 4:
%			z[100i+10j +k] 
%			= z[100i+10j ]
%			+ 
%			(0.5a*cosd(75+90*(k+1)),0.5a*sind(75+90*(k+1)));
%		endfor;
%	endfor;
%endfor;
%
%
%
%path p;
%p = z220--z420--z440--z240-- cycle ;
%fill p withcolor 0.9white;
%
%for i = 2 step 2 until 8:
%	for j= 2  step 2 until  8:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%%		drawarrow z[330]--z[100i+10j+110];
%	endfor;
%endfor;
%for i = 2 step 2 until 8:
%	draw z[100i+10]--z[100i+90] dashed evenly;
%endfor;
%for i = 2 step 2 until 9:
%	draw z[100+10i]--z[900+10i] dashed evenly;
%endfor;
%
%pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;
%
%label.bot(btex $\mathbf a$ etex,z320);
%label.lft(btex $\mathbf b$ etex,z230);
%
%endfig;
%
%
%beginfig(4);
%% generic lattice M2
%z0 = (0,-a);
%for i = 1 upto 9:
%	for j = 1 upto 9:
%		z[100i+10j ]
%		=z0 + (i-1)*(2a,0) +(j-1)*(2a*cosd(75),2.3a*sind(75));
%		for k = 1 upto 4:
%			z[100i+10j +k] 
%			= z[100i+10j ]
%			+ 
%			(0.4a*cosd(75+90*(k+1)),0.4a*sind(75+90*(k+1)));
%		endfor;
%	endfor;
%endfor;
%
%path p;
%p = z220--z320--z340--z240-- cycle ;
%fill p withcolor 0.9white;
%
%for i = 2 upto 3:
%	for j= 2 upto 3:
%		dotlabel( btex $ $ etex, z[100i+10j] );
%		drawarrow z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3];
%%		drawarrow z[100i+10j+3]..z[100i+10j+4]..z[100i+10j+1];
%	endfor;
%endfor;
%for i = 2 step 2 until 8:
%	draw z[100i+10]--z[100i+90] dashed evenly;
%endfor;
%for i = 2 step 2 until 8:
%	draw z[100+10i]--z[900+10i] dashed evenly;
%endfor;
%
%pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;
%
%label.bot(btex $\mathbf a$ etex,z321);
%label.lft(btex $\mathbf b$ etex,z234);
%
%endfig;
%
%

beginfig(5);
% generic lattice M_1
z0 = (0,-a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0) +(j-1)*(2a*cosd(75),2.3a*sind(75));
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

for i = 2 step 2 until 6:
	for j= 2  step 2 until  6:
		dotlabel( btex $ $ etex, z[100i+10j] );
%		drawarrow z[330]--z[100i+10j+110];
	endfor;
endfor;
for i = 2 step 2 until 6:
	draw z[100i+10]--z[100i+70] dashed evenly;
endfor;
for i = 2 step 2 until 6:
	draw z[100+10i]--z[700+10i] dashed evenly;
endfor;

pickup pencircle scaled 1pt;
drawarrow z220--z420;
drawarrow z220--z240;

label.bot(btex $\mathbf a$ etex,z320);
label.lft(btex $\mathbf b$ etex,z230);

endfig;


beginfig(6);
% generic lattice M2
z0 = (0,-a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0) +(j-1)*(2a*cosd(75),2.3a*sind(75));
		for k = 1 upto 4:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			(0.7a*cosd(75+90*(k+1)),0.7a*sind(75+90*(k+1)));
		endfor;
		for k = 5 upto 8:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			(b*cosd(75+90*(k+1)),b*sind(75+90*(k+1)));
		endfor;
	endfor;
endfor;

path p;
p = z220--z320--z340--z240-- cycle ;
fill p withcolor 0.9white;

for i = 2 upto 6:
	for j= 2 upto 6:
		dotlabel( btex $ $ etex, z[100i+10j] );
		drawarrow z[100i+10j+4]..z[100i+10j+1]..z[100i+10j+2];
	endfor;
endfor;
for i = 2 step 2 until 6:
	draw z[100i+10]--z[100i+70] dashed evenly;
endfor;
for i = 2 step 2 until 6:
	draw z[100+10i]--z[700+10i] dashed evenly;
endfor;

for i = 2 step 2 until 6:
	for j= 2 step 2 until 6:
		path p;
		p = for k = 5 upto 8:
			z[100i+10j +k] ..
		endfor cycle;
	fill p withcolor green ;
		drawarrow z[100i+10j+4]..z[100i+10j+1]..z[100i+10j+2];
	endfor;
endfor;

for i = 3 step 2 until 6:
	for j= 2 step 2 until 6:
		path p;
		p = for k = 5 upto 8:
			z[100i+10j +k] ..
		endfor cycle;
	fill p withcolor red ;
		drawarrow z[100i+10j+4]..z[100i+10j+1]..z[100i+10j+2];
	endfor;
endfor;

for i = 2 step 2 until 6:
	for j= 3 step 2 until 6:
		path p;
		p = for k = 5 upto 8:
			z[100i+10j +k] ..
		endfor cycle;
		fill p withcolor  (0,0.8,1) ;%light blue
		drawarrow z[100i+10j+4]..z[100i+10j+1]..z[100i+10j+2];
	endfor;
endfor;

for i = 3 step 2 until 6:
	for j= 3 step 2 until 6:
		path p;
		p = for k = 5 upto 8:
			z[100i+10j +k] ..
		endfor cycle;
		fill p withcolor black ;
		drawarrow z[100i+10j+4]..z[100i+10j+1]..z[100i+10j+2];
	endfor;
endfor;

pickup pencircle scaled 1pt;
drawarrow z220--z420;
drawarrow z220--z240;

label.bot(btex $\mathbf a$ etex,z321);
label.lft(btex $\mathbf b$ etex,z234);

endfig;

beginfig(7);
z0 = (5a,5a); 
z1 = z0 + (5a,0);
z2 = z0 - (5a,0);
z3 = z0 + (0,4.8a);
z4 = z0 - (0,4.8a);

pickup pencircle scaled 1pt;
drawarrow z0--z1;
drawarrow z0--z2 withcolor green;
drawarrow z0--z3 ;
drawarrow z2{up}..{down}z1 withcolor green;
drawarrow z3{right}..{left}z4 withcolor red;
drawarrow z0--z4 withcolor red;
endfig;


beginfig(8);
z0 = (0,0);
for i = 1 upto 12:
	z[10i +1] = z0 + (a*(i-1),0)  ;
	z[10i +2] = z0 + (a*(i-1),5a)  ;% on the center line
	z[10i +3] = z0 + (a*(i-1),10a)  ;
	z[10i +4] = z0 + (a*(i-1),12a)  ;
endfor;

path p;
p = z52--z92--z103--z63-- cycle ;
fill p withcolor 0.9white;

draw z12--z122;
draw z13--z123 dashed evenly;
draw z33--z31--z71--z73 dashed evenly;

pickup pencircle scaled 1pt;

drawarrow z52--z92;
drawarrow z52--z12;
drawarrow z52--z63;
drawarrow z52--z23;
drawarrow z52--z41;
drawarrow z52--z103;
dotlabel.lrt(btex $\mathbf 0$ etex,z52);
label.bot(btex $\mathbf a$ etex,z82);
label.bot(btex $-\mathbf a$ etex,z12);
label.top(btex $\mathbf b$ etex,z73);
label.top(btex $\mathbf b-\mathbf a$ etex,z23);
label.top(btex $\mathbf b+\mathbf a$ etex,z103);
label.bot(btex $-\mathbf b$ etex,z41);

endfig;

beginfig(9);
z0 = (0,0);
for i = 1 upto 12:
	z[10i +1] = z0 + (a*(i-1),0)  ;
	z[10i +2] = z0 + (a*(i-1),5a)  ;% on the center line
	z[10i +3] = z0 + (a*(i-1),10a)  ;
	z[10i +4] = z0 + (a*(i-1),12a)  ;
endfor;

path p;
p = z52--z92--z113--z73-- cycle ;
fill p withcolor 0.9white;

draw z12--z122;
draw z13--z123 dashed evenly;
draw z33--z31--z71--z73 dashed evenly;

pickup pencircle scaled 1pt;

drawarrow z52--z92;
drawarrow z52--z12;
drawarrow z52--z73;
drawarrow z52--z33;
drawarrow z52--z31;
drawarrow z52--z71;
dotlabel.lrt(btex $\mathbf 0$ etex,z52);
label.bot(btex $\mathbf a$ etex,z82);
label.bot(btex $-\mathbf a$ etex,z12);
label.top(btex $\mathbf b$ etex,z73);
label.top(btex $\mathbf b-\mathbf a$ etex,z33);
label.bot(btex $-\mathbf b$ etex,z31);

endfig;

beginfig(10);
z0 = (0,0);
z1 = z0 + (6a,0);
z2 = z1 + (0,8a);
z3 = z0 +  (0,8a);
z4 = z0 + (3a,4a);
draw z1--z2--z3--z0 dashed evenly;
%draw z0--z2 dashed evenly;
%draw z1--z3 dashed evenly;

pickup pencircle scaled 1pt;
drawarrow z0--z1;
drawarrow z0--z3;

dotlabel(btex $ $ etex,z2);
label.bot(btex $\mathbf a$ etex,0.5[z0,z1]);
label.lft(btex $\mathbf b$ etex,0.5[z0,z3]);
endfig;

beginfig(11);
z0 = (0,0);
z1 = z0 + (6a,0);
z2 = z1 + (0,10a);
z3 = z0 +  (0,10a);
z4 = z0 + (3a,5a);
draw z1--z2--z3--z0 dashed evenly;
draw z0--z2 dashed evenly;
draw z1--z3 dashed evenly;

pickup pencircle scaled 1pt;
drawarrow z0--z1;
drawarrow z0--z4;

dotlabel(btex $ $ etex,z2);
dotlabel(btex $ $ etex,z3);
label.bot(btex $\mathbf a$ etex,0.5[z0,z1]);
label.ulft(btex $\mathbf b$ etex,0.5[z0,z4]);

endfig;


numeric c;
c = 18pt;
beginfig(12);
z0 = (-2a,0);
for i = 1 upto 9:
	for j = 1 upto 3:
		z[10i + j] = z0 + (c*(i-1),2c*(j-1))  ;
	endfor;
endfor;

path p;
p = z41--z43--z63--z61-- cycle ;
fill p withcolor 0.9white;

%draw z12--z92;
for i=2 step 2 until 8:
	draw z[10i+1]--z[10i+3];
endfor;

dotlabel.top(btex $\mathbf x$ etex,z52);
label.top(btex $\mathbf x+\mathbf a$ etex,z72);

pickup pencircle scaled 1pt;
drawarrow z52--z72;

endfig;


%numeric a;
%a = 7pt;
%beginfig(13);
%z0 = (0,-1.5a);
%for i = 1 upto 23:
%	z[10i +1] = z0 + (a*(i-1),0)  ;
%	z[10i +2] = z0 + (a*(i-1),5a)  ;% on the center line
%	z[10i +3] = z0 + (a*(i-1),10a)  ;
%	for j = 4, 5, 7, 8:
%		z[10i + j] = z[10i +2] + (0, a*(j-6))  ;
%	endfor;
%endfor;
%
%path p, q;
%p = z32--z33--z93--z92-- cycle ;
%fill p withcolor 0.9white;
%q = z181--z183--z153--z151-- cycle ;
%fill q withcolor 0.9white;
%
%draw z12--z232;
%for i=3 step 6 until 21:
%	draw z[10i+1]--z[10i+3];
%endfor;
%
%for i=3 step 3 until 21:
%	drawarrow z[10(i-1)+2]{down}..z[10i+5]..{up}z[10(i+1)+2];
%endfor;
%
%for i=3 step 3 until 21:
%	dotlabel(btex $ $ etex,z[10i+2]);
%endfor;
%%dotlabel.top(btex $\mathbf x_0$ etex,z32);
%%dotlabel.top(btex $\mathbf x_1$ etex,z92);
%%dotlabel.top(btex $\mathbf x_2$ etex,z152);
%%dotlabel.top(btex $\mathbf x_3$ etex,z212);
%%dotlabel.top(btex $\mathbf y_0$ etex,z62);
%%dotlabel.top(btex $\mathbf y_1$ etex,z122);
%%dotlabel.top(btex $\mathbf y_2$ etex,z182);
%
%endfig;

beginfig(13);
% square lattice 
z0 = (0,-a);

for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j]
		=z0 + (i-1)*(4a,0) +(j-1)*(4a*cosd(90),4a*sind(90));
		for k = 1 upto 4:
			z[100i+10j +k] 
			= z[100i+10j]
			+ (0.3a*cosd(90k),0.3a*sind(90k));
		endfor;
		for k = 1 upto 9:
		z[1000+100i+10j +k] 
			= z[100i+10j]
			+ (a*cosd(90+45*(k-1)),a*sind(90+45*(k-1)));
		endfor;
	endfor;
endfor;

path p, q, r;
p = z220--z320--z330--z230-- cycle ;
q = z240--z350--z260-- cycle ;
r = z440--z640--z660--z460-- cycle ;
fill p withcolor 0.9white;
fill q withcolor 0.9white;
fill r withcolor 0.9white;

for i = 2 step 2 until 6:
	for j= 2 step 2 until 6:
		path p;
		p = z[100i+10j +1]..z[100i+10j +2]..z[100i+10j +3]..z[100i+10j +4].. cycle;
		fill p withcolor black;
	endfor;
endfor;

for i = 3 step 2 until 5:
	for j= 2 step 2 until 6:
		path p;
		p = z[100i+10j +1]..z[100i+10j +2]..z[100i+10j +3]..z[100i+10j +4].. cycle;
		fill p withcolor green;
	endfor;
endfor;

for i = 2 step 2 until 6:
	for j= 3 step 2 until 5:
		path p;
		p = z[100i+10j +1]..z[100i+10j +2]..z[100i+10j +3]..z[100i+10j +4].. cycle;
		fill p withcolor green;
	endfor;
endfor;

for i = 3 step 2 until 5:
	for j= 3 step 2 until 5:
		path p;
		p = z[100i+10j +1]..z[100i+10j +2]..z[100i+10j +3]..z[100i+10j +4].. cycle;
		fill p withcolor red;
	endfor;
endfor;


for i = 2 step 2 until 6:
	draw z[100i+10]--z[100i+70] dashed evenly;
endfor;
for i = 2 step 2 until 6:
	draw z[100+10i]--z[700+10i] dashed evenly;
endfor;

for i = 3 upto 3:
	for j= 3 upto 3:
		drawarrow z[1000+100i+10j+7]{up}..z[1000+100i+10j+8]..{left}z[1000+100i+10j+1];
	endfor;
endfor;
for i = 4 upto 4:
	for j= 4 upto 4:
		drawarrow z[1000+100i+10j+7]{up}..z[1000+100i+10j+8]..{left}z[1000+100i+10j+1];
	endfor;
endfor;
for i = 3 upto 3:
	for j= 4 upto 4:
		drawarrow z[1000+100i+10j+7]{up}..z[1000+100i+10j+1]..{down}z[1000+100i+10j+3];
	endfor;
endfor;
for i = 4 upto 4:
	for j= 3 upto 3:
		drawarrow z[1000+100i+10j+5]{right}..z[1000+100i+10j+7]..{left}z[1000+100i+10j+9];
	endfor;
endfor;

pickup pencircle scaled 1pt;
drawarrow z440--z640 withcolor red ;
drawarrow z440--z460 withcolor red ;

label.bot(btex $\mathbf a$ etex,z540);
label.lft(btex $\mathbf b$ etex,z450);

endfig;




numeric a;
a = 8pt;
beginfig(14);
% hexagonal lattice 
z0 = (0,0);
for i = 1 upto 19:
	for j = 1 upto 7:
		z[100i+10j] = z0 + 4a*((i-1)*cosd(60),(j-1)*sind(60));
		for k = 1 upto 4:
			z[100i+10j +k] 
			= z[100i+10j] + (0.3a*cosd(90*k),0.3a*sind(90*k));
		endfor;
	endfor;
endfor;

path p, q, r, s, t;
p = z210--z520--z540--z230-- cycle;
q = z830--z720--z920--z1030-- cycle;
r = z1230--z1120--z1320--z1430-- cycle;
s = z850--z1050--z1160--z1070--z870--z760-- cycle;
t = z1140--z1430--z1760--z1470-- cycle;
fill p  withcolor 0.8 white ;
%fill q  withcolor 0.9 white ;
%fill r  withcolor 0.9 white ;
fill s  withcolor 0.9 white ;
fill t  withcolor 0.9 white ;
for i = 0 upto 2:
	for j=0 upto 2:
        	draw z[210+ 600i + 20j]--z[120+ 600i + 20j]--z[230+ 600i + 20j] dashed evenly;
        	draw z[210+ 600i + 20j]--z[410+ 600i + 20j]--z[320+ 600i + 20j] dashed evenly;
        	draw z[120+ 600i + 20j]--z[320+ 600i + 20j]--z[430+ 600i + 20j] dashed evenly;
        	draw z[520+ 600i + 20j]--z[410+ 600i + 20j]--z[610+ 600i + 20j]--z[720+ 600i + 20j] dashed evenly;
        	draw z[430+ 600i + 20j]--z[520+ 600i + 20j]--z[720+ 600i + 20j]--z[630+ 600i + 20j] dashed evenly; 
        
		path p, q;
		p = z[210+ 600i + 20j+1]..z[210+ 600i + 20j+2]..z[210+ 600i + 20j+3]..z[210+ 600i + 20j+4].. cycle;
		q = z[520+ 600i + 20j+ 1]..z[520+ 600i + 20j+ 2]..z[520+ 600i + 20j+ 3]..z[520+ 600i + 20j+ 4].. cycle;
		fill p withcolor black ;
		fill q withcolor  black ;
    	
        	path p, q;
        	p = z[120+ 600i + 20j+1]..z[120+ 600i + 20j+2]..z[120+ 600i + 20j+3]..z[120+ 600i + 20j+4].. cycle;
		q = z[410+ 600i + 20j + 1]..z[410+ 600i + 20j + 2]..z[410+ 600i + 20j + 3]..z[410+ 600i + 20j + 4].. cycle;
		fill p withcolor red ;
		fill q withcolor red ;
    	
        	path p, q;
        	p = z[320+ 600i + 20j+1]..z[320+ 600i + 20j+2]..z[320+ 600i + 20j+3]..z[320+ 600i + 20j+4].. cycle;
    		q = z[610+ 600i + 20j + 1]..z[610+ 600i + 20j + 2]..z[610+ 600i + 20j + 3]..z[610+ 600i + 20j + 4].. cycle;
    		fill p withcolor green ;
    		fill q withcolor green ;	
	endfor;
	draw z[230+600i+40]--z[630+600i+40] dashed evenly;
	
	path p, q, r;
    	p = z[230 + 600i+40 + 1]..z[230 + 600i + 40 +  2]..z[230 + 600i + 40 + 3]..z[230 + 600i + 40 + 4].. cycle;
	q = z[430 + 600i + 40 + 1]..z[430 + 600i + 40 + 2]..z[430 + 600i + 40 + 3]..z[430 + 600i + 40 + 4].. cycle;
	r = z[630 + 600i + 40 + 1]..z[630 + 600i + 40 + 2]..z[630 + 600i + 40 + 3]..z[630 + 600i + 40 + 4].. cycle;
	fill p withcolor black ;
	fill q withcolor red ;	
	fill r withcolor green ;	
endfor;

pickup pencircle scaled 1pt;
drawarrow z210--z520 withcolor red ;
drawarrow z210--z230 withcolor red ;
drawarrow z850--z870 withcolor red ;
drawarrow z850--z1160 withcolor red ;
drawarrow z1140--z1430 withcolor red ;
drawarrow z1140--z1450 withcolor red ;

endfig;

numeric a;
a = 8pt;
beginfig(15)
z0 = (0,0);
for i=1 upto 15:
	for j=0 upto 15:
		z[100i + j] =z0+(i*a,j*a);
	endfor;
endfor;

drawarrow z110--z1510;
drawarrow z808--z812;

drawarrow z103--z1503;
drawarrow z800--z806;

drawarrow z910..z811..z710;
drawarrow z710..z809..z910;

drawdblarrow z1302--z1304;
drawdblarrow z401--z1201;

drawarrow z903..z804..z703;
drawarrow z703..z802..z903;

pickup pencircle scaled 1.5pt;
draw z410--z1210;
draw z403--z1203;

endfig;

beginfig(16)
z0 = (0,0);
for i=1 upto 15:
	for j=0 upto 15:
		z[100i + j] =z0+(i*a,j*a);
	endfor;
endfor;

drawarrow z110--z1510;
drawarrow z808--z812;

drawarrow z103--z1503;
drawarrow z800--z806;

%drawarrow z910..z811..z710;
%drawarrow z710..z809..z910;

drawdblarrow z1302--z1304;
%drawdblarrow z401--z1201;

%drawarrow z903..z804..z703;
%drawarrow z703..z802..z903;

pickup pencircle scaled 1.5pt;
draw z810--z1210;
draw z803--z1203;

endfig;




verbatimtex
\end{document}
etex;
end