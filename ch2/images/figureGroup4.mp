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
z0 = (a,0);
for i=1 upto 5:
	z[i] = z0+(7a*cosd(10i),7a*sind(10i));
endfor;

z9 = 0.5[z1,z5]-z0;
z10 = z0 +2* z9;
for i=1 upto 5:
	z[10+i] = z10+(7a*cosd(180+10i),7a*sind(180+10i));
endfor;

z20 = z0 + 2(a*cosd(210),a*sind(210));
z21 = z0 + 3(a*cosd(210),a*sind(210));
z22 = z10 - 2(a*cosd(210),a*sind(210));
z23 = z10 - 3(a*cosd(210),a*sind(210));
drawarrow 
for  i=1 upto 2:
	z[i]..
endfor
z3;
draw 
for  i=3 upto 4:
	z[i]..
endfor
z5;
drawarrow 
for  i=15 step -1 until 14:
	z[i]..
endfor
z13;
draw
for  i=13 step -1 until 12:
	z[i]..
endfor
z11;

draw z0--z1;
draw z0--z5;
draw z10--z11;
draw z10--z15;
drawarrow z20--z21;
drawarrow z22--z23;
dotlabel.llft(btex $\mathbf x_0$ etex,z0);
dotlabel.urt(btex $\mathbf x_0'$ etex,z10);
label.lrt(btex $\mathbf x$ etex,z1);
label.top (btex $\mathbf x+\mathbf a$ etex,z5);
label.urt(btex $\theta$ etex,z3);
label.llft(btex $\theta$ etex,z13);

pickup pencircle scaled 1pt;
drawarrow z1--z5;

endfig;

beginfig(4);
z0 = (4a,4a);
z1 = z0 + (7a,0);
z2 = z0 - (4a,0);
z3 = z0 + (0,7a);
z4 = z0 - (0,4a);
z5 = z0 + (5a,0);
z6 = z0 + (0,5a);
z7 = z0 + (5a*cosd(60),5a*sind(60));
z8 = z0 + (5a*sind(60),-5a*cosd(60));
z9 = z0 + (5a*cosd(30),5a*sind(30));
z10 = z0 + (5a*cosd(120),5a*sind(120));

z11 = z0 + (7a*cosd(30),7a*sind(30));
z12 = z0 - (4a*cosd(30),4a*sind(30));

drawarrow z2--z1;
drawarrow z4--z3;
draw z11--z12;

label.llft(btex $\mathbf 0$ etex,z0);
label.rt(btex $x$ etex,z1);
label.top(btex $y$ etex,z3);
label.bot(btex $\mathbf e_1$ etex,z5);
label.rt(btex $\mathbf e_2$ etex,z6);
label.rt(btex $R_{\theta}\mathbf e_1$ etex,z7);
label.rt(btex $R_{\theta}\mathbf e_2$ etex,z8);
label.lrt(btex $\mathbf e$ etex,z9);
label.top(btex $\mathbf f$ etex,z10);
label.top(btex $\ell$ etex,z12);

pickup pencircle scaled 1pt;
drawarrow z0--z5;%
drawarrow z0--z6;%
drawarrow z0--z7;
drawarrow z0--z8;
drawarrow z0--z9;
drawarrow z0--z10;
endfig;

beginfig(5);
z0=(4a,3a);
z1=z0-(7a,0);
z2=z0+(7a,0);
z3=z0-(0,7a);
z4=z0+(0,7a);
z5=z0+(7a*cosd(30),7a*sind(30));
z6=z0-(5a*cosd(30),5a*sind(30));
z7=z0+(6a*cosd(120),6a*sind(120));
z8=z0+(6a*cosd(30),6a*sind(30));

z10=z0+(4a*cosd(30),4a*sind(30));
z11=z10+(3a*cosd(120),3a*sind(120));
z12=z10+(b*cosd(120),b*sind(120));
z13=z12+(b*cosd(30),b*sind(30));
z14=z13-(b*cosd(120),b*sind(120));
z15=z10-(3a*cosd(120),3a*sind(120));
z16=z0+(3a*cosd(120),3a*sind(120));

z17=z0+(b*cosd(120),b*sind(120));
z18=z17-(b*cosd(30),b*sind(30));
z19=z18-(b*cosd(120),b*sind(120));

%drawarrow z1--z2;
%drawarrow z3--z4;
draw z5--z6;

draw z11--z15;
draw z12--z13--z14;
draw z17--z18--z19;
draw z11--z16 dashed evenly;
label.lrt(btex $\mathbf 0$ etex,z0);
label.rt(btex $\,$ etex,z2);
label.top(btex $\quad$ etex,z4);
label.top(btex $\mathbf x$ etex,z11);
label.top(btex $\mathbf f$ etex,z7);
label.top(btex $\mathbf e$ etex,z8);
label.top(btex $\ell$ etex,z6);
label.rt(btex $R_{\theta/2}\mathbf x$ etex,z15);
%label.lft(btex $ (\mathbf f,\mathbf x)\,\mathbf f$ etex,z16);
%label.rt(btex $\,\,\mathbf x- (\mathbf e,\mathbf x)\,\mathbf e$ etex,z10);
%
pickup pencircle scaled 1pt;
drawarrow z0--z11;%
%drawarrow z0--z16;%
drawarrow z0--z15;
%drawarrow z0--z10;
drawarrow z0--z7; %
drawarrow z0--z8;%

endfig;

beginfig(6);
z0 = (0,a);
 
for i=1 upto 7:
	z[i] = z0+(2i*a*cosd(20),2i*a*sind(20));
	z[10 + i] = z[i]+(4a*cosd(20+90),4a*sind(20+90));
	z[20 + i] = z[i]+(2a*cosd(20+90),2a*sind(20+90));
	z[30 + i] = z[i]+(4a*cosd(20-90),4a*sind(20-90));
	z[40 + i] = z[i]+(2a*cosd(20-90),2a*sind(20-90));
endfor;
draw z1--z7;

label.rt(btex $\ell$ etex,z7);
label.top(btex $\mathbf x$ etex,z14);
label.bot(btex $F(\mathbf x)$ etex,z36);
dotlabel.lrt(btex $\mathbf x_0$ etex,z2);
dotlabel.lrt(btex $\mathbf x_0$ etex,z2);
label.bot(btex $\alpha\mathbf e$ etex,z3);
label.bot(btex $\alpha_0\mathbf e$ etex,z5);
label.lft(btex $\beta\mathbf f$ etex,z24);
label.rt(btex $-\beta\mathbf f$ etex,z46);

pickup pencircle scaled 1pt;
drawarrow z2--z4;
drawarrow z4--z14;
drawarrow z4--z6;
drawarrow z6--z36;
endfig;

beginfig(16);
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

c=14pt;
beginfig(7);
z0 = (-c,-c);
for i=1 upto 9:
	for j=1 upto 9:
		z[10i+j] = z0 + (i*c, j*c);
	endfor;
endfor;
for i=2 upto 8:
	for j=2 upto 8:
		dotlabel(btex $ $ etex,z[10i+j]);
	endfor;
endfor;

drawarrow z15--z95;
drawarrow z51--z59;
label.rt(btex $x$ etex,z95);
label.top(btex $y$ etex,z59);
endfig;

beginfig(8);
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

beginfig(9);
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


beginfig(10);
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
label.bot(btex $\mathbf 0$ etex,z0);
label.top(btex $\ell$ etex,z2);
label.bot(btex $\mathbf x$ etex,z98);
label.top(btex $m$ etex,z5);
%
pickup pencircle scaled 1pt;
drawarrow z0--z98;
drawarrow z0--z102;
drawarrow z0--z110;

endfig;

beginfig(11);
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


verbatimtex
\end{document}
etex;
end