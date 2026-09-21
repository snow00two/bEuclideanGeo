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

beginfig(5);
z0 = (3a,0);
for i=1 upto 7:
	z[i] = z0+(5a*cosd(120-10i),5a*sind(120-10i));
endfor;

for i=1 upto 7:
	z[10+i] = z7+(5a*cosd(180-10i),5a*sind(180-10i));
endfor;

drawarrow 
for  i=1 upto 6:
	z[i]..
endfor
z7;
drawarrow
for  i=1 upto 6:
	z[10+i]..
endfor
z17;
draw z7--z11;
label.bot(btex $\mathbf y_0$ etex,z0);
label.lft(btex $\mathbf x_0$ etex,z1);
label.rt(btex $T\mathbf x_0$ etex,z7);
label.rt(btex $S'\mathbf x_0$ etex,z17);

pickup pencircle scaled 1pt;
draw z0--z1;
draw z0--z7;
draw z7--z17;
endfig;

beginfig(6);
z0 = (0,4a);
z1 = z0 +(10a,0);
z2 = z0 +(2a,-5a);
for i=3 upto 7:
	z[i] = z2+(5a*cosd(90-10i),5a*sind(90-10i));
endfor;

z12 = z0 +(2a,5a);
for i=3 upto 7:
	z[10+i] = z12+(5a*cosd(-90+10i),5a*sind(-90+10i));
endfor;
draw z0--z1;
draw z2--z12 dashed evenly;
draw z3--z13 dashed evenly;
draw z7--z17 dashed evenly;
drawarrow 
for  i=3 upto 6:
	z[i]..
endfor
z7;
drawarrow 
for  i=13 upto 16:
	z[i]..
endfor
z17;

label.lft(btex $\ell$ etex,z0);
label.lft(btex $\mathbf x_0$ etex,z2);
label.lft(btex $R\mathbf x_0$ etex,z12);
label.lft(btex $\mathbf y$ etex,z13);
label.lft(btex $R^{-1}\mathbf y$ etex,z3);
label.rt(btex $SR^{-1}\mathbf y$ etex,z7);
label.rt(btex $RSR^{-1}\mathbf y$ etex,z17);

pickup pencircle scaled 1pt;
draw z2--z3;
draw z2--z7;
draw z12--z13;
draw z12--z17;

endfig;


beginfig(7);
z0=(5a,3a);
z1=z0-(3a,0);
z2=z0+(7a,0);
z3=z0-(0,3a);
z4=z0+(0,7a);
z5=z0+(7a*cosd(60),7a*sind(60));
z6=z0-(3a*cosd(60),3a*sind(60));

draw z1--z2;
draw z5--z6;

for j=-9 upto 18:                         
   z[100+j]=z0+6a*(cosd(10*j),sind(10*j));
endfor;

draw for i=-2 upto  9:
	z[100+i]..
endfor
z110 dashed evenly;

z150=whatever[z0,z2]=whatever[z98,z102];
z160=whatever[z0,z5]=whatever[z102,z110];
z151=z150-(b,0);
z152=z151-(0,b);
z153=z152+(b,0);
z161=z160-(b*cosd(60),b*sind(60));
z162=z161+(b*cosd(150),b*sind(150));
z163=z162+(b*cosd(60),b*sind(60));

draw z98--z102--z110;
draw z151--z152--z153;
draw z161--z162--z163;
label.bot(btex $\mathbf b$ etex,z0);
label.top(btex $\ell$ etex,z2);
label.bot(btex $\mathbf x$ etex,z98);
label.top(btex $m$ etex,z5);
%
pickup pencircle scaled 1pt;
drawarrow z0--z98;
drawarrow z0--z102;
drawarrow z0--z110;

endfig;

beginfig(8);
z0 = (0,1.5a);
z1 = z0+ (10a,0);
z2 = z0+ (0,5a);
z3 = z2 + (10a,0);
z4 = z0+ (3a, -2a);
z5 = z0+ (3a, 2a);
z6 = z0+ (3a, 8a);
z7 = z0+ (7a, -a);
z8 = z0+ (7a, a);
z9 = z0+ (7a, 9a);

draw z0--z1;
draw z2--z3;
dotlabel.rt(btex $\mathbf x$ etex,z4);
dotlabel.rt(btex $R\mathbf x$ etex,z5);
dotlabel.rt(btex $R'R\mathbf x$ etex,z6);
dotlabel.rt(btex $\mathbf x'$ etex,z7);
dotlabel.rt(btex $R\mathbf x'$ etex,z8);
dotlabel.rt(btex $R'R\mathbf x'$ etex,z9);
label.rt(btex $\ell$ etex,z1);
label.rt(btex $m $ etex,z3);

pickup pencircle scaled 1pt;
draw z4--z5;
draw z5--z6;
draw z7--z8;
draw z8--z9;

endfig;

beginfig(9);
z0=(6a,6a);%Origin : adjust the position of the whole figure.
z1=z0-(6a,0);%x-axis
z2=z0+(6a,0);
z3=z0-(0,6a);%y-axis
z4=z0+(0,6a);

z5=z0+(5a,5a);% square
z6=z0+(-5a,5a);
z7=z0+(-5a,-5a);
z8=z0+(5a,-5a);

z11=z0+(5a,0);%
z12=z0+(5a,5a);
z13=z0+(0,5a);
z14=z0+(-5a,5a);
z15=z0+(-5a,0);
z16=z0+(-5a,-5a);
z17=z0+(0,-5a);
z18=z0+(5a,-5a);

z20=z0 + (2a,0);
z21=z0 + (0,2a);
z22=z0 + (-2a,0);
z23=z0 + (0,-2a);
z30 =z11+(0,1.4a);
z31 =z11+(0,-1.4a);
z32=z12 +(a,-a)-(0.5a,0.5a);
z33=z12 +(-a,a)-(0.5a,0.5a);
z34 =z13+(1.4a,0);
z35 =z13+(-1.4a,0);
z36=z14 +(a,a)-(-0.5a,0.5a);
z37=z14 +(-a,-a)-(-0.5a,0.5a);

path p;
p = z0--z11--z12--z13-- cycle;
fill p withcolor 0.8white;

drawarrow z1--z2;
drawarrow z3--z4;
draw z12--z14--z16--z18-- cycle dashed evenly;

drawarrow z20{up}..{left}z21;
drawarrow z21{left}..{down}z22;
drawarrow z22{down}..{right}z23;
drawarrow z23{right}..{up}z20;

%drawdblarrow z30--z31; %double
%drawdblarrow z32--z33; %double
%drawdblarrow z34--z35; %double
%drawdblarrow z36--z37; %double

label.llft(btex $0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);

%pickup pencircle scaled 1pt;
%draw z11--z15 dashed evenly;
%draw z12--z16 dashed evenly;
%draw z13--z17 dashed evenly;
%draw z14--z18 dashed evenly;
endfig;

beginfig(10);
z0=(7a,6a);%Origin : adjust the position of the whole figure.
z1=z0-(6a,0);%x-axis
z2=z0+(6a,0);
z3=z0-(0,6a);%y-axis
z4=z0+(0,6a);

z5=z0+(4a,4a);% square
z6=z0+(-4a,4a);
z7=z0+(-4a,-4a);
z8=z0+(4a,-4a);

z11=z0+(5a,0);%
z12=z0+(5a,5a);
z13=z0+(0,5a);
z14=z0+(-5a,5a);
z15=z0+(-5a,0);
z16=z0+(-5a,-5a);
z17=z0+(0,-5a);
z18=z0+(5a,-5a);

z20=z0 + (2a,0);
z21=z0 + (0,2a);
z22=z0 + (-2a,0);
z23=z0 + (0,-2a);
z30 =z11 + (0,1.4a);
z31 =z11 + (0,-1.4a);
z32=z12 + (a,-a);
z33=z12 + (-a,a);
z34 =z13 + (1.4a,0);
z35 =z13 + (-1.4a,0);
z36=z14 + (a,a);
z37=z14 + (-a,-a);

path p;
p = z0--z11--z12-- cycle;
fill p withcolor 0.8white;

drawarrow z1--z2;
drawarrow z3--z4;
draw z12--z14--z16--z18-- cycle dashed evenly;

drawarrow z20{up}..{left}z21;
drawarrow z21{left}..{down}z22;
drawarrow z22{down}..{right}z23;
drawarrow z23{right}..{up}z20;

drawdblarrow z30--z31; %double
drawdblarrow z32--z33; %double
drawdblarrow z34--z35; %double
drawdblarrow z36--z37; %double

label.llft(btex $0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);

pickup pencircle scaled 1pt;
draw z11--z15;% dashed evenly withcolor red;
draw z12--z16;% dashed evenly  withcolor blue;
draw z13--z17;% dashed evenly  withcolor red;
draw z14--z18;% dashed evenly  withcolor blue;
endfig;


beginfig(11);
z0 = (0,0);
for i=1 upto 7:
	z[i] = z0  +i*(2a*cosd(10),2a*sind(10));
endfor;
draw z0--z7;
dotlabel.bot(btex $\mathbf 0$ etex,z1);
label.bot(btex $\mathbf a$ etex,z3);
dotlabel.bot(btex $\mathbf b$ etex,z6);
pickup pencircle scaled 1pt;
drawarrow z1--z3;

endfig;

beginfig(12);
z0 = (0,0);
for i=1 upto 8:
	z[i] = z0  +i*(2a*cosd(10),2a*sind(10));
endfor;
draw z0--z8;
dotlabel.bot(btex $\mathbf 0$ etex,z1);
dotlabel.top(btex $\mathbf a$ etex,z3);
dotlabel.top(btex $m\mathbf a$ etex,z5);
dotlabel.bot(btex $\mathbf b$ etex,z6);
dotlabel.top(btex $(m+1)\mathbf a$ etex,z7);
%pickup pencircle scaled 1pt;
%drawarrow z1--z3;
endfig;

numeric c;
c = 18pt;
beginfig(13);
z0 = (-2a,0);
for i = 1 upto 9:
	for j = 1 upto 3:
		z[10i + j] = z0 + (c*(i-1),3c*(j-1))  ;
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

beginfig(14);
z0 = (a,2a);
for i=1 upto 6:
	z[i] = z0 + (7a* cosd(10i-10),7a* sind(10i-10));
endfor;

draw 
for i=1 upto 5:
	z[i]--
endfor
z[6] dashed evenly;

label.llft(btex $\mathbf b$ etex,z0);
label.rt(btex $\mathbf b+\mathbf a$ etex,z1);
label.urt(btex $\mathbf b+S_\theta \mathbf a$ etex,z6);

pickup pencircle scaled 1pt;
drawarrow z0--z1;
drawarrow z0--z6;

endfig;

%beginfig(15);
%z0 = (a,0);
%for i = 1 upto 9:
%	for j = 1 upto 3:
%		z[10i + j] = z0 + (c*(i-1),3c*(j-1))  ;
%	endfor;
%endfor;
%
%path p;
%p = z41--z43--z53--z51-- cycle ;
%fill p withcolor 0.8white;
%
%draw z12--z92;
%for i=2 step 2 until 8:
%	draw z[10i+1]--z[10i+3];
%endfor;
%
%for i=2 upto 8:
%	dotlabel(btex $ $ etex,z[10i+2]);
%endfor;
%
%endfig;

beginfig(15);
z0 = (0,0);
for i=1 upto 8:
	for j=1 upto 3:
		z[10i+j] = z0  +(i-1)*(2a,0) +(j-1)*(0,2a) ;
	endfor;
endfor;

draw z11--z71;
draw z61..z43..z21 dashed evenly;

dotlabel.bot(btex $\mathbf b$ etex,z41);
label.bot(btex $\mathbf b+\mathbf x$ etex,z61);
dotlabel.bot(btex $\mathbf b-\mathbf x$ etex,z21);

pickup pencircle scaled 1pt;
drawarrow z41--z61;
drawarrow z41--z21;
endfig;


beginfig(16);
z0 = (-5a,-5a);
for i = 1 upto 7:
	for j = 1 upto 4:
		z[10i+j] = z0 + (3i*a,3j*a);
	endfor;
endfor;

draw z12--z72;
drawarrow z42{down}..z51..{up}z62 withcolor red;
drawarrow z62{up}..z53..{down}z42 withcolor red;

pickup pencircle scaled 1pt;
drawarrow z62{up}..z44..{down}z22  withcolor blue;
drawarrow z22--z42 withcolor blue;
drawarrow z42--z62;

dotlabel.llft(btex $\mathbf x_0$ etex,z42);
dotlabel.lrt(btex $\mathbf x_n$ etex,z62);
dotlabel.bot(btex $\mathbf x_{-n}$ etex,z22);
dotlabel.llft(btex $ $ etex,z52);
endfig;


numeric a, b;
a = 8pt;
b = 2pt;
beginfig(17);
z0 = (0,0);
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



verbatimtex
\end{document}
etex;
end