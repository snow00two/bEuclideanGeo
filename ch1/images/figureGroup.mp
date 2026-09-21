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
z0=(3a,3a);
z1=z0-(3a,0);
z2=z0+(10a,0);
z3=z0-(0,3a);
z4=z0+(0,10a);

for i=1 upto 8:
   for j=0 upto 35:                         
      z[i*100+j]=z0+i*a*(cosd(10*j),sind(10*j));
   endfor;
endfor;

drawarrow z1--z2;
drawarrow z3--z4;

draw 
   for i=3 upto  7:
   	z[800+i]..
   endfor
   z808 dashed evenly;

draw 
   for i=3 upto  7:
   	z[200+i]..
   endfor
   z208;

label.llft(btex $\mathbf 0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);
label.rt(btex $\mathbf x$ etex,z803);
label.top(btex $S_{\theta}\mathbf x$ etex,z808);
label.urt(btex $\theta$ etex,z206);

pickup pencircle scaled 1pt;
drawarrow z0--z803;
drawarrow z0--z808;
endfig;

beginfig(2);
z0=(7a,6a);
z1=z0-(5a,0);
z2=z0+(7a,0);
z3=z0-(0,6a);
z4=z0+(0,6a);
z5=z0-(4a,0);
z6=z0+(6a,0);
z7=z0-(3a,0);

z10=z0+(3a,4a);
z11=z0+(3a,0);
z12=z11+(0,b);
z13=z11+(b,b);
z14=z11+(b,0);
z15=z0+(3a,-4a);


drawarrow z1--z2;
drawarrow z3--z4;
draw z10--z15;
draw z12--z13--z14;

label.llft(btex $\mathbf 0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);
label.top(btex $(x,y)$ etex,z10);
label.bot(btex $(x,-y)$ etex,z15);
label.top(btex $y=0$ etex,z7);

pickup pencircle scaled 1pt;
%draw z5--z6;
drawarrow z0--z10;
drawarrow z0--z15;
endfig;

beginfig(3);
z0=(5a,3a);
z1=z0-(7a,0);
z2=z0+(7a,0);
z3=z0-(0,7a);
z4=z0+(0,7a);
z5=z0+(7a*cosd(30),7a*sind(30));
z6=z0-(5a*cosd(30),5a*sind(30));
z7=z0+(6a*cosd(120),6a*sind(120));

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
label.top(btex $\mathbf e$ etex,z7);
label.top(btex $\ell$ etex,z6);
label.lft(btex $ (\mathbf e,\mathbf x)\,\mathbf e$ etex,z16);
label.rt(btex $\,\,\mathbf x- (\mathbf e,\mathbf x)\,\mathbf e$ etex,z10);
%
pickup pencircle scaled 1pt;
drawarrow z0--z11;
drawarrow z0--z16;
drawarrow z0--z15;
drawarrow z0--z10;
drawarrow z0--z7;

endfig;


beginfig(4);
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

numeric a;
a = 8pt;
beginfig(5)
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

beginfig(6)
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


beginfig(7);
z0=(7a,7a);
z1=z0-(7a,0);%x-axis
z2=z0+(7a,0);
z3=z0-(0,7a);%y-axis
z4=z0+(0,7a);
drawarrow z1--z2;
drawarrow z3--z4;
%label.llft(btex $0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);

for i = 1 upto 3:
	z[10+i] = z0 + 4a*(cosd(120*(i-1)), sind(120*(i-1)) );
endfor;
draw 
	for i = 1 upto 3:
		z[10+i]--
	endfor cycle;

for i = 1 upto 6:
	z[20+i] = z0 + 5a*(cosd( 60*(i-1)), sind( 60*(i-1)) )
		+ a*(cosd(90+ 60*(i-1)), sind(90+ 60*(i-1)) );
	z[40+i] = z0 + 5a*(cosd( 60*(i-1)), sind( 60*(i-1)) )
		+ a*(cosd( -90+ 60*(i-1)), sind( -90+ 60*(i-1)) );
endfor;
for i = 1 upto 3:
	drawdblarrow z[20+i]--z[40+i];
endfor;


for i = 1 upto 7:
	z[60+i] = z0 + 6a*(cosd( 60*(i-1)), sind( 60*(i-1)) );
	z[80+i] = z0 + 1.5a*(cosd( 60*(i-1)), sind( 60*(i-1)) );
endfor;
for i= 1 step 2 until 6:
	drawarrow z[80+i]..z[80+i+1]..z[80+i+2];
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 3:
	draw z[60+i]--z[60 +3+i] dashed evenly;
endfor;

endfig;

beginfig(8);
z0=(7a,7a);
z1=z0-(7a,0);%x-axis
z2=z0+(7a,0);
z3=z0-(0,7a);%y-axis
z4=z0+(0,7a);
drawarrow z1--z2;
drawarrow z3--z4;
%label.llft(btex $0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);

for i = 1 upto 4:
	z[10+i] = z0 + 
		4sqrt(2)*a*(cosd(45+90*(i-1)), sind(45+90*(i-1)) );
endfor;
draw 
	for i = 1 upto 4:
		z[10+i]--
	endfor cycle;

for i =  1 step 2 until 10:
	z[20+i] = z0 + 5a*(cosd( 45*(i-1)), sind( 45*(i-1)) )
		+ a*(cosd(90+ 45*(i-1)), sind(90+ 45*(i-1)) );
	z[20+1+i] = z0 
		+ (4sqrt(2)+1)*a*(cosd( 45+45*(i-1)), sind(45+ 45*(i-1)) )
		+ a*(cosd(90+45+ 45*(i-1)), sind(90+45+ 45*(i-1)) );
	z[40+i] = z0 + 5a*(cosd( 45*(i-1)), sind( 45*(i-1)) )
		+ a*(cosd(-90+ 45*(i-1)), sind(-90+ 45*(i-1)) );
	z[40+1+i] = z0 
		+(4sqrt(2)+1)*a*(cosd( 45+45*(i-1)), sind(45+ 45*(i-1)) )
		+ a*(cosd(-90+45+ 45*(i-1)), sind(-90+45+ 45*(i-1)) );
endfor;
for i = 1 upto 4:
	drawdblarrow z[20+i]--z[40+i];
endfor;

for i = 1 step 2 until 10:
	z[60+i] = z0 + 5a*(cosd( 45*(i-1)), sind( 45*(i-1)) );
	z[60+1+i] = z0 + 
		5sqrt(2)*a*(cosd( 45+45*(i-1)), sind( 45+45*(i-1)) );
endfor;
for i = 1 upto 10:
	z[80+i] = z0 + 1.5a*(cosd( 45*(i-1)), sind( 45*(i-1)) );
endfor;
for i= 1 step 2 until 8:
	drawarrow z[80+i]..z[80+i+1]..z[80+i+2];
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 4:
	draw z[60+i]--z[60 +4+i] dashed evenly;
endfor;

endfig;

beginfig(9);
z0=(7a,7a);
z1=z0-(7a,0);%x-axis
z2=z0+(7a,0);
z3=z0-(0,7a);%y-axis
z4=z0+(0,7a);
drawarrow z1--z2;
drawarrow z3--z4;
%label.llft(btex $0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);

%360/10=36
for i = 1 upto 5:
	z[10+i] = z0 + 
		5a*(cosd(72*(i-1)), sind(72*(i-1)) );
endfor;
draw 
	for i = 1 upto 5:
		z[10+i]--
	endfor cycle;

for i = 1  upto 11:
	z[20+i] = z0 + 6a*(cosd( 36*(i-1)), sind( 36*(i-1)) )
		+ a*(cosd(90+ 36*(i-1)), sind(90+ 36*(i-1)) );
	z[40+i] = z0 + 6a*(cosd( 36*(i-1)), sind( 36*(i-1)) )
		+ a*(cosd(-90+ 36*(i-1)), sind(-90+ 36*(i-1)) );
endfor;
for i = 1 upto 5:
	drawdblarrow z[20+i]--z[40+i];
endfor;

for i = 1 upto 11:
	z[60+i] = z0 + 7a*(cosd( 36*(i-1)), sind( 36*(i-1)) );
	z[80+i] = z0 + 2a*(cosd( 36*(i-1)), sind( 36*(i-1)) );
endfor;
for i= 1 step 2 until 10:
	drawarrow z[80+i]..z[80+i+1]..z[80+i+2];
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 5:
	draw z[60+i]--z[60 +5+i] dashed evenly;
endfor;

endfig;

beginfig(10);
z0=(7a,7a);
z1=z0-(7a,0);%x-axis
z2=z0+(7a,0);
z3=z0-(0,7a);%y-axis
z4=z0+(0,7a);
drawarrow z1--z2;
drawarrow z3--z4;
%label.llft(btex $0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);

%360/12=30
for i = 1 upto 6:
	z[10+i] = z0 + 
		5a*(cosd(60*(i-1)), sind(60*(i-1)) );
endfor;
draw 
	for i = 1 upto 6:
		z[10+i]--
	endfor cycle;

for i = 1  upto 13:
	z[20+i] = z0 + 6a*(cosd( 30*(i-1)), sind( 30*(i-1)) )
		+ a*(cosd(90+ 30*(i-1)), sind(90+ 30*(i-1)) );
	z[40+i] = z0 + 6a*(cosd( 30*(i-1)), sind( 30*(i-1)) )
		+ a*(cosd(-90+ 30*(i-1)), sind(-90+ 30*(i-1)) );
endfor;
for i = 1 upto 6:
	drawdblarrow z[20+i]--z[40+i];
endfor;

for i = 1 upto 14:
	z[60+i] = z0 + 7a*(cosd( 30*(i-1)), sind( 30*(i-1)) );
	z[80+i] = z0 + 2a*(cosd( 30*(i-1)), sind( 30*(i-1)) );
endfor;
for i= 1 step 2 until 12:
	drawarrow z[80+i]..z[80+i+1]..z[80+i+2];
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 6:
	draw z[60+i]--z[60 +6+i] dashed evenly;
endfor;

endfig;


%beginfig(10);
%z0=(6a,6a);
%z1=z0-(6a,0);%x-axis
%z2=z0+(6a,0);
%z3=z0-(0,6a);%y-axis
%z4=z0+(0,6a);
%
%z5=z0+(4a,4a);% square
%z6=z0+(-4a,4a);
%z7=z0+(-4a,-4a);
%z8=z0+(4a,-4a);
%
%z11=z0+(5a,0);%
%z12=z0+(5a,5a);
%z13=z0+(0,5a);
%z14=z0+(-5a,5a);
%z15=z0+(-5a,0);
%z16=z0+(-5a,-5a);
%z17=z0+(0,-5a);
%z18=z0+(5a,-5a);
%
%z20=z0 + (2a,0);
%z21=z0 + (0,2a);
%z22=z0 + (-2a,0);
%z23=z0 + (0,-2a);
%z30 =z11+(0,1.4a);
%z31 =z11+(0,-1.4a);
%z32=z12 +(a,-a)-(0.5a,0.5a);
%z33=z12 +(-a,a)-(0.5a,0.5a);
%z34 =z13+(1.4a,0);
%z35 =z13+(-1.4a,0);
%z36=z14 +(a,a)-(-0.5a,0.5a);
%z37=z14 +(-a,-a)-(-0.5a,0.5a);
%
%drawarrow z1--z2;
%drawarrow z3--z4;
%draw z5--z6--z7--z8-- cycle;
%
%drawarrow z20{up}..{left}z21;
%drawarrow z21{left}..{down}z22;
%drawarrow z22{down}..{right}z23;
%drawarrow z23{right}..{up}z20;
%
%drawdblarrow z30--z31; %double
%drawdblarrow z32--z33; %double
%drawdblarrow z34--z35; %double
%drawdblarrow z36--z37; %double
%
%label.llft(btex $0$ etex,z0);
%label.rt(btex $x$ etex,z2);
%label.top(btex $y$ etex,z4);
%
%pickup pencircle scaled 1pt;
%draw z11--z15 dashed evenly;
%draw z12--z16 dashed evenly;
%draw z13--z17 dashed evenly;
%draw z14--z18 dashed evenly;
%endfig;
%


verbatimtex
\end{document}
etex;
end