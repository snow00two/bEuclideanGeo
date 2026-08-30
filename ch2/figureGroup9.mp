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
beginfig(1);
z0 = (a,0);
z1 = z0+(5a,2a);
z2 =  z0+(a,4a);
z3 = z2+(5a,2a);
dotlabel.lft(btex $\mathbf x$ etex,z0);
label.rt(btex $\mathbf x+\mathbf a$ etex,z1);
dotlabel.lft(btex $\mathbf x'$ etex,z2);
label.rt(btex $\mathbf x'+\mathbf a$ etex,z3);

pickup pencircle scaled 1pt;
drawarrow z0--z1;
drawarrow z2--z3;
endfig;

beginfig(2);
z0 = (a,0);
for i=3 upto 7:
	z[i] = z0+(6a*cosd(10i),6a*sind(10i));
endfor;

drawarrow 
for  i=3 upto 6:
	z[i]..
endfor
z7;

dotlabel.llft(btex $\mathbf x_0$ etex,z0);
dotlabel.rt(btex $\mathbf x$ etex,z3);
label.urt(btex $\theta$ etex,z5);

pickup pencircle scaled 1pt;
drawarrow z0--z3;
drawarrow z0--z7;
endfig;

beginfig(3);
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


beginfig(4);
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

%beginfig(3);
%z0 = (-2a,a);
% 
%for i=1 upto 9:
%	z[i] = z0+(2i*a*cosd(20),2i*a*sind(20));
%	z[10 + i] = z[i]+(4a*cosd(20+90),4a*sind(20+90));
%	z[20 + i] = z[i]+(2a*cosd(20+90),2a*sind(20+90));
%	z[30 + i] = z[i]+(4a*cosd(20-90),4a*sind(20-90));
%	z[40 + i] = z[i]+(2a*cosd(20-90),2a*sind(20-90));
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
%beginfig(4);
%z0=(7a,3a);
%z1=z0-(7a,0);
%z2=z0+(7a,0);
%z3=z0-(0,7a);
%z4=z0+(0,7a);
%z5=z0+(7a*cosd(20),7a*sind(20));
%z6=z0-(5a*cosd(20),5a*sind(20));
%z7=z0+(6a*cosd(90+20),6a*sind(90+20));
%z8=z0+(6a*cosd(20),6a*sind(20));
%
%z10=z0+(4a*cosd(20),4a*sind(20));
%z11=z10+(3a*cosd(90+20),3a*sind(90+20));
%z12=z10+(b*cosd(90+20),b*sind(90+20));
%z13=z12+(b*cosd(20),b*sind(20));
%z14=z13-(b*cosd(90+20),b*sind(90+20));
%z15=z10-(3a*cosd(90+20),3a*sind(90+20));
%z16=z0+(3a*cosd(90+20),3a*sind(90+20));
%
%z17=z0+(b*cosd(90+20),b*sind(90+20));
%z18=z17-(b*cosd(20),b*sind(20));
%z19=z18-(b*cosd(90+20),b*sind(90+20));
%
%%drawarrow z1--z2;
%%drawarrow z3--z4;
%draw z5--z6;
%
%draw z11--z15;
%draw z12--z13--z14;
%%draw z17--z18--z19;
%%draw z11--z16 dashed evenly;
%label.bot(btex $\mathbf 0$ etex,z0);
%label.rt(btex $\,$ etex,z2);
%label.top(btex $\quad$ etex,z4);
%label.top(btex $\mathbf x$ etex,z11);
%%label.top(btex $\mathbf f$ etex,z7);
%label.top(btex $\mathbf e$ etex,z8);
%label.top(btex $\ell$ etex,z6);
%label.rt(btex $R_{\theta/2}\mathbf x$ etex,z15);
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

numeric c;
c = 18pt;
beginfig(5);
z0 = (-2a,0);
for i = 1 upto 9:
	for j = 1 upto 3:
		z[10i + j] = z0 + (c*(i-1),3c*(j-1))  ;
	endfor;
endfor;

path p;
p = z41--z43--z63--z61-- cycle ;
fill p withcolor 0.9white;

%draw z12--z92;
for i=2 step 2 until 8:
	draw z[10i+1]--z[10i+3] dashed evenly;
endfor;

label.top(btex $\mathbf x$ etex,z52);
label.top(btex $\mathbf x+\mathbf a$ etex,z72);

pickup pencircle scaled 1pt;
drawarrow z52--z72;

endfig;


beginfig(6);
z0 = (3a,0);
for i = 1 upto 2:
	for j= 1 upto 36:
		z[100i+j] = z0 + (0,7a*(i-1)) 
			+ (3a*cosd( 10*(j-1)),a*sind(10* (j-1)));
	endfor;
endfor;

draw
for j= 1 upto 18:
	z[100+j]--
endfor
z119 dashed evenly;
draw
for j= 19 upto 36:
	z[100+j]--
endfor
z101;

draw
for j= 1 upto 36:
	z[200+j]--
endfor
cycle;

draw z101--z201;
draw z119--z219;

endfig;


beginfig(7);
z0 = (0,-a);
for i = 1 upto 9:
	for j = 1 upto 5:
		z[10i + j] = z0 + (c*(i-1),1.5c*(j-1))  ;
	endfor;
endfor;

path p;
p = z41--z45--z65--z61-- cycle ;
fill p withcolor 0.9white;

%draw z12--z92;
for i=2 step 4 until 8:
	drawarrow z[10i+1]--z[10i+5] dashed evenly;
endfor;
for i=4 step 4 until 8:
	drawarrow z[10i+5]--z[10i+1] dashed evenly;
endfor;
draw z13--z93;

label.bot(btex $\mathbf x$ etex,z52);
label.top(btex $S(\mathbf x)$ etex,z74);
label.rt(btex $\ell$ etex,z93);

pickup pencircle scaled 1pt;
drawarrow z53--z52;
drawarrow z73--z74;
drawarrow z53--z73;
endfig;



beginfig(8);
z0 = (5a,4a);
for i = 1 upto 7:
	for j= 1 upto 36:
		z[100i+j] = z0 + (0,a*cosd(30*(i-1))) 
			+ (5a*cosd( (j-1)*10),2a*sind( (j-1)*10));
	endfor;
endfor;

draw
for j= 1 upto 25:
	z[100+j]..
endfor
z126..z227..z328;

draw
z429..z530..z631..z732..
for j= 33 upto 36:
	z[700+j]..
endfor
z701;

draw 
for j= 1 upto 3:
	z[700+j]..
endfor
z704 dashed evenly;

draw
for j= 4 upto 15:
	z[700+j]..
endfor
z716;

draw 
for j= 16 upto 18:
	z[700+j]..
endfor
z719 dashed evenly;

draw
for j= 19 upto 25:
	z[700+j]..
endfor
z626..z527..z428..z329..z230..z131..
for j= 32 upto 36:
	z[100+j]..
endfor
z101;

draw z101--z701;
draw z119--z719;
endfig;



beginfig(9);
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


beginfig(10);
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


beginfig(11);
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


beginfig(12);
z0 = (0,0);
z1 = z0 + (5a,0);
z2 = z1 + (0,8a);
z3 = z0 +  (0,8a);
z4 = z0 + (2.5a,4a);
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


beginfig(13);
z0 = (0,0);
for i = 1 upto 9:
	for j = 1 upto 9:
		z[10i + j] = z0 + (1.5a*(i-1),1.5a*(j-1))  ;
	endfor;
endfor;
draw z15--z95;
draw z13--z93;
draw z69--z65 dashed evenly;

pickup pencircle scaled 1pt;
drawarrow z45--z69;
drawarrow z45--z85;
drawarrow z45--z65--z41 withcolor red;
drawarrow z35--z33 withcolor blue;
drawarrow z55--z57 withcolor blue;
drawarrow z57--z33 withcolor blue;
drawarrow z65--z64;
drawarrow z85--z86;
drawarrow z86--z62;

dotlabel.bot(btex $\mathbf 0$ etex,z45);
label.top(btex $-\tfrac14\mathbf a$ etex,z35);
label.bot(btex $\tfrac14\mathbf a$ etex,z55);
label.urt(btex $\tfrac12\mathbf a$ etex,z65);

label.bot(btex $\mathbf a$ etex,z85);
label.rt(btex $\mathbf b$ etex,z69);

label.rt(btex $\ell$ etex,z95);
label.rt(btex $\ell'$ etex,z93);
endfig;


%beginfig(14);
%z0 = (0,3a);
%z1 = (3a*cosd(-75),3a*sind(-75));
%z2 = z0 + (10a,0); 
%z3 = z0 + z1;
%z4 = z3 + (10a*cosd(15),10a*sind(15)); 
%z5 = whatever[z0,z2] = whatever[z3,z4];
%z6 = z0 - z1;
%z7 = z5 - z1;
%z8 = z7 - z1 ;
%z9 = z5 + z1 ;
%
%z10 = 0.25[z0,z5] ;
%z11 = 0.5[z0,z5] ;
%z12 = z10 + (3a*cosd(75),3a*sind(75));
%z13 = 0.5[z6,z7] ;
%
%draw z0--z5--z7-- cycle dashed evenly;
%draw z7--z3--z5 dashed evenly;
%draw z0--z6--z7--z8-- cycle dashed evenly;
%draw z6--z8 dashed evenly;
%draw z3--z9 dashed evenly;
%
%pickup pencircle scaled 1pt;
%drawarrow z0--z3 withcolor red;
%drawarrow z0--z10;
%drawarrow z10--z12 withcolor red ;
%
%label.bot(btex $\mathbf a$ etex,z3);
%label.bot(btex $\mathbf b/2$ etex,z10);
%dotlabel.bot(btex $\mathbf b$ etex,z11);
%label.top(btex $S\mathbf a$ etex,z12);
%dotlabel(btex $ $ etex,z13);
%
%endfig;


beginfig(14);
z0 = (4a,0);
z1 = z0 + (5a,0);
numeric h, k;
h = 5a*sind(65)/cosd(65);
z2 = z1 + (0,h);
z3 = z0 +  (0,h);
z4 = z0 + (2.5a,0.5h);
z5 = z0 + 5a*(cosd(130), sind(130));
z6=z4 - (5a,0);
draw z1--z2--z3--z0 dashed evenly;
draw z0--z2 dashed evenly;
draw z1--z3 dashed evenly;
draw z1--z5 dashed evenly;

pickup pencircle scaled 1pt;
drawarrow z0--z1;
drawarrow z0--z4;
drawarrow z0--z5;
drawarrow z4--z6;
dotlabel(btex $ $ etex,z2);
dotlabel(btex $ $ etex,z3);
label.bot(btex $\mathbf a$ etex,0.5[z0,z1]);
label.ulft(btex $\mathbf b$ etex,0.5[z0,z4]);
label.lft(btex $R\mathbf a$ etex, z5);
label.top(btex $\mathbf b-\mathbf a$ etex, z6);
endfig;


beginfig(15);
% Klein lattice
z0 = (0,-a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0) +(j-1)*(2a*cosd(90),2.3a*sind(90));
		for k = 1 upto 4:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			(a*cosd(90+90*(k+1)),a*sind(90+90*(k+1)));
		endfor;
	endfor;
endfor;

path p;
p = z330--z530--z550--z350-- cycle ;
fill p withcolor 0.9white;
drawarrow z330--z530 dashed evenly;
drawarrow z350--z550 dashed evenly;
drawarrow z330--z350 dashed evenly;
drawarrow z550--z530 dashed evenly;

for i = 2 step 4 until 6:
	for j= 2  step 2 until  6:
		dotlabel( btex $ $ etex, z[100i+10j] );
%		drawarrow z[330]--z[100i+10j+110];
	endfor;
endfor;
%for i = 2 step 2 until 6:
%	draw z[100i+10]--z[100i+70] dashed evenly;
%endfor;
%for i = 2 step 2 until 6:
%	draw z[100+10i]--z[700+10i] dashed evenly;
%endfor;

draw z140--z740;

pickup pencircle scaled 1pt;
drawarrow z220--z620;
drawarrow z220--z240;
drawarrow z340--z351 withcolor red;
drawarrow z540--z533 withcolor red;
drawarrow z340--z333 withcolor blue;
drawarrow z540--z551 withcolor blue;

label.bot(btex $\mathbf a$ etex,z620);
label.lft(btex $\mathbf b$ etex,z230);
label.rt(btex $\ell$ etex,z740);

endfig;


numeric b, c;
b = 7pt;
c = 6pt;
beginfig(16);
%Klein bottle
z0 = (9b,5c);
z1 = z0 + (1.5b,-c);
z2 = z0 + (1.8b,-2c);
z3 = z0 + (0.3b,-4c);
z4 = z0 + (-2b,-4.6c);
z5 = z0 + (-4b,-4.8c);
z6 = z0 + (-8b,-4c);
z7 = z0 + (-10b,0);
z8 = z0 + (-7b,4c);
z9 = z0 + (-5b,8c);
z10 =z0 + (-3.5b,10c);
z11 =z0 + (0.5b,8c);
z12 = z0 + (b,4c);
z13 = z0 + (-b,-c);

z21 = z0 + (-1.2b,c);
z22 = z0 + (-3b,4c);
z23 = z0 + (-3b,7c);
z24 = z0 + (-2b,8c);
z25 = z0 + (0, 4c);
z26 = z0 + (-1.8b, 0);

z30 = z0 + (-b,-1.5c);
z31 = z0 + (-b,-2c);
z32 = z0 + (0 ,-3.2c);
z33 = z0 + (0.5b ,-2.9c);

z35 = z0 + (-2.5b, -c);
z36 = z0 + (-4b,-2.5c);
z37 = z0 + (-6b,-3.1c);
z38 = z0 + (-6.3b, -2.8c);

z40 = z0 + (-3b, -3.6c);
z41 =  z0 +(-3b, -2.3c);
%for i = 0 upto 13:
%	dotlabel(btex $ $ etex,z[i]);
%endfor;
%
%for i = 21 upto 26:
%	dotlabel(btex $ $ etex,z[i]);
%endfor;

draw
z0{dir -40}..
for i=  1 upto 12:
	z[i]..
endfor
z13;

draw
for i=  21 upto 25:
	z[i]..
endfor
z21..z26;

draw z13..z30..z31..z32 dashed evenly;
draw z26..z35..z36..z37 dashed evenly;
%draw z38..z37..z40..z32..z33 dashed evenly;
draw z38..z37..z40..z32..z33 dashed evenly;
draw z37..z41..z32 dashed evenly;
endfig;



verbatimtex
\end{document}
etex;
end