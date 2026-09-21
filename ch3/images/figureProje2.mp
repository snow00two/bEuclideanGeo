prologues := 3;
verbatimtex
\documentclass[uplatex]{jsarticle}
% from command line 
%>upmpost -tex=uplatex figureProje2.mp
%\documentclass{article} % In English mode
\usepackage{verbatim}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\begin{document}
etex;
a=8pt;

beginfig(1);
%Deserg's theorem
z0=(5a,0);
z1=z0+(8a,10a);
z2=z1-(4a,10.5a);%z2=z1-(-4a,10.7a);%
z3=z1-(-4a,10.7a);%z3=z1-(0,9.5a);%
z4=z1-(0,9.5a);%z4=z1-(4a,10.5a);%

z12=0.7[z1,z2];
z13=0.7[z1,z3];
z14=0.7[z1,z4];

z22=0.4[z1,z2];
z23=0.5[z1,z3];
z24=0.35[z1,z4];

z32=whatever[z13,z14]=whatever[z23,z24];
z33=whatever[z14,z12]=whatever[z24,z22];
z34=whatever[z12,z13]=whatever[z22,z23];
z35 = 1.05[z34,z33];
z36 = 1.05[z33,z34];

dotlabel.ulft(btex $A$ etex,z22);
dotlabel.urt(btex $B$ etex,z23);
dotlabel.ulft(btex $C$ etex,z24);
dotlabel.ulft(btex $A'$ etex,z12);
dotlabel.urt(btex $B'$ etex,z13);
dotlabel.ulft(btex $C'$ etex,z14);
dotlabel.bot(btex $Q$ etex,z32);
dotlabel.bot(btex $R$ etex,z33);
dotlabel.bot(btex $P$ etex,z34);
dotlabel.top(btex $O$ etex,z1);
label.rt(btex $\ell$ etex,z36);

pickup pencircle scaled 1pt;
path p;
p = z12--z13--z14-- cycle;
fill p withcolor 0.9white;
draw p;
path p;
p = z22--z23--z24-- cycle;
fill p withcolor 0.9white;
draw p;

draw z35--z36;

pickup pencircle scaled 0.5pt;

draw z1--z2;
draw z1--z3;
draw z1--z4;

draw z22--z34--z12;
draw z24--z32--z14;
draw z24--z33--z14;

endfig;
%
numeric a;
a=10pt;
beginfig(2);
%Pappus's Thm
z0 = (0,-a);
z1 = z0 + (0,7a);
z2 = z0 + (11a,6a);
z3 = z0 + (0,a);
z4 = z0 + (10a,2a);

z11 =0.1[z1,z2];
z12=0.5[z1,z2];
z13 =0.9[z1,z2];

z21 =0.1[z3,z4];
z22 =0.6[z3,z4];
z23 =0.9[z3,z4];

z31 = whatever[z11,z22 ] = whatever[z21,z12 ];
z32 = whatever[z11,z23 ] = whatever[z21,z13 ];
z33 = whatever[z12,z23 ] = whatever[z22,z13 ];
z30 = 1.8[z33,z31];
z34 = 1.6[z31,z33];

draw z11--z22;
draw z12--z21;
draw z11--z23;
draw z13--z21;
draw z12--z23;
draw z13--z22;
draw z1--z2 ;
draw z3--z4 ;

pickup pencircle scaled 1pt;
draw z30--z34 ;


dotlabel.top(btex $A$ etex,z11);
dotlabel.top(btex $B$ etex,z12);
dotlabel.top(btex $C$ etex,z13);
dotlabel.bot(btex $A'$ etex,z21);
dotlabel.bot(btex $B'$ etex,z22);
dotlabel.bot(btex $C'$ etex,z23);
%dotlabel.bot(btex $P$ etex,z31);
%dotlabel.bot(btex $Q$ etex,z32);
%dotlabel.bot(btex $R$ etex,z33);
endfig;

numeric a;
a = 8pt;
beginfig(3);
z0 = (0,0);
z1 = (4a,3a);
z2 =(0, 5a);
z3 = (18a,0);
z4 =  (21a,0);
for i=1 upto 3:
	z[10i+1] = z0 + (i-1)*z3 ;
	z[10i+2] = z0 + (i-1)*z3 + z1;
	z[10i+3] = z0  + (i-1)*z3 + z1 + z2;
	z[10i+4] = z0  + (i-1)*z3 + z1 + 3z2;
	z[10i+5] = z0  + (i-1)*z3 + 3z2;
	z[10i+6] = z0  + (i-1)*z3 + z2;
	z[10i+7] = z0  + (i-1)*z3 + 0.5z1+ z2;
	z[10i+8] = z0  + (i-1)*z3 + 0.7z1+ z2;
	z[10i+9] = z0  + (i-1)*z3 + 0.7z1+ 2z2;
	z[10i+10] = z0  + (i-1)*z3 + 0.5z1+ 2z2;
endfor;
for j = 1 upto 10:
	z[40+j]  = z[10+j]  +  z4;
endfor;
for i = 1 upto 20:
 	z[50 +i ] = (i/10-0.5)[z18,z38] ;
endfor;

for i=2 upto 2:
	draw 
		for j = 1 upto 6:
			z[10i+j]--
		endfor
		cycle ;
endfor;

for  i = 6 upto 10:
	draw z[50 +i ]--z50 withcolor blue;
endfor;

z79 =  whatever[z28,z30] = whatever[z21,z22];
%z80 =  whatever[z61,z50] = whatever[0.5[z14,z15],0.5[z24,z25]];
z80 =  whatever[z61,z50] = whatever[0.7[z14,z15],0.7[z24,z25]];
z81 =  whatever[z28,z30] = whatever[z24,z25];
draw z61--z80 withcolor blue;

for  i = 12 upto 15:
	z[70 +i ] = whatever[z[50 + i],z50] = whatever[z28,z30];
	draw z[50 +i ]--z[70 +i ] withcolor blue;
endfor;

for  i = 1 upto 5:
	z[100 +i ] = whatever[z[50 + i],z50] = whatever[z18,z20];
 	draw z[100 +i ]--z50 withcolor blue;
endfor;

for  i = 16 upto 18:
	z[100 +i ] = whatever[z[50 + i],z50] = whatever[z38,z40];
	z[120 +i ] = whatever[z[50 + i],z50] = whatever[z28,z30];
	draw z[100 +i ]--z[120 +i ] withcolor blue;
endfor;

z150 = whatever[z79,z81] = whatever[z20,z40];
z151 = z79 +z50-z150;
z152 = z81 + z50-z150;
draw z151--z152 withcolor blue;

%draw z16--z46--z43--z13-- cycle;
draw z16--z36--z33--z13-- cycle;
draw z26--z23;
%draw z20--z50 withcolor red;
%draw z18--z48 withcolor red;
draw z18--z20--z40--z38 withcolor red;

pickup pencircle scaled 1pt;
draw z50--z47--z27;
draw z79--z81 withcolor red;
draw z18--z38 withcolor red;

dotlabel.urt(btex $\mathbf 0$ etex,z50);
label.lrt(btex $x=1$ etex,z24);
label.bot(btex $z=-1$ etex,0.5[z16,z46]);
endfig;


b = 6pt;
beginfig(4);
z0=(8 b,8 b);
z1=z0+(8 b,0);
z2=z0+(0,8 b);
z3=z0-(8 b,0);
z4=z0-(0,8 b);
z50= z0 +  (30 b/5, 22 b/5) ;
z51= z0 - (30 b/5, 22 b/5) ; 
draw z1..z2..z3..z4.. cycle;

for i=0 upto 36 :
	z[10+i] = z0+ ( 2 b * sind( 10 * i  ), 8 b * cosd( 10 * i ));
endfor;

pickup pencircle scaled 1pt;
drawarrow z10..
for i=1 upto 17 :
	z[10+i]..
endfor
z28 dashed evenly;
drawarrow z28..
for i=19 upto 35 :
	z[10+i]..
endfor
z46;

drawarrow z0--z22;
drawarrow z0--z40;
drawarrow z0--z50;
drawarrow z0--z51  dashed evenly;
dotlabel( btex etex,z0);
endfig;

beginfig(5);
z0=(0,0);
z1=z0+(15 b,0);
z2=z1+(0,15 b);
z3=z2-(15 b,0);
z4=z3 - (0,15 b);
z10=z0+(15 b/2,6 b);
for i=1 upto 36 :
	z[10+i] = z10+ (7 b * cosd( 10 * i ), 7 b * sind( 10 * i  ) );
endfor;
%draw z1--z2--z3--z4-- cycle ;
z50 = whatever[z18,z[18+14]] = whatever[z42,z[42+14-36]];
z51 = whatever[z30,z[30+14]] = whatever[z42,z[42+14-36]];
z52 = whatever[z30,z[30+14]] = whatever[z18,z[18+14]];

label.llft(btex $\mathbf P^2$ etex,z2);
label.ulft(btex $\mathbf P^1_0$ etex,z20);
label.rt(btex $\mathbf P^1_2$ etex,z44);
label.urt(btex $\mathbf P^1_1$ etex,z18);
dotlabel.rt(btex $[0:0:1]$ etex,z50);
%label.urt(btex $[0:1:0]$ etex,z51);
%label.ulft(btex $[0:0:1]$ etex,z52);


pickup pencircle scaled 1pt;
draw z42--z[42+14-36];
draw z18--z[18+14];
draw z30--z[30+14];
endfig;

beginfig(6);
z0=(0,0);
z1=z0+(10a,10a);
z2=z1-(3a,9a);
z3=z1-(-3a,8a);
z4=z1-(0,10a);

draw z1--z2;
draw z1--z3;
draw z1--z4;

endfig;

beginfig(7);
z0=(8 b,9 b);
z1=z0+(8 b,0);
z2=z0+(0,8 b);
z3=z0-(8 b,0);
z4=z0-(0,8 b);
z50= z0 +  (30 b/5, 22 b/5) ;
z51= z0 - (30 b/5, 22 b/5) ; 

for i=0 upto 36 :
	z[10+i] = z0+ ( 8 b * cosd( 10 * i  ), 2 b * sind( 10 * i ));
endfor;

for i=0 upto 36 :
	z[100+i] = z0 + (0, 8a*sind(7))
	+ ( 8 b * cosd( 10 * i  )* cosd(7), 2 b * sind( 10 * i )* cosd(7));
endfor;

for i=0 upto 36 :
	z[150+i] = z0 + (0, 8a*sind(-7))
	+ ( 8 b * cosd( 10 * i  )* cosd(-7), 2 b * sind( 10 * i )* cosd(-7));
endfor;

draw z108..
for i=9 upto 25:
	z[100+i]..
endfor
z126 dashed evenly;

draw z158..
for i=9 upto 25:
	z[150+i]..
endfor
z176 dashed evenly;

drawarrow z158..z18..z108 dashed evenly;
drawarrow z126..z36..z176 dashed evenly;

draw z1..z2..z3..z168;

draw z10..
for i=1 upto 17 :
	z[10+i]..
endfor
z28 ;
draw z28..
for i=19 upto 35 :
	z[10+i]..
endfor
z46;
pickup pencircle scaled 1pt;

drawarrow z0--z108;
drawarrow z0--z126;
drawarrow z0--z158;
drawarrow z0--z176;
dotlabel( btex etex,z0);

%copy of figureGroup9(8) 
pickup pencircle scaled 0.5pt;

numeric a;
a=6pt;
z200 = (6a,2a);
for i = 3 upto 9:
	for j= 1 upto 36:
		z[100i+j] = z200 + (0,a*cosd(30*(i-3))) 
			+ (5a*cosd( (j-1)*10),2a*sind( (j-1)*10));
	endfor;
endfor;

draw
for j= 1 upto 25:
	z[300+j]..
endfor
z326..z427..z528;

draw
z629..z730..z831..z932..
for j= 33 upto 36:
	z[900+j]..
endfor
z901;

draw 
for j= 1 upto 3:
	z[900+j]..
endfor
z904 dashed evenly;

draw
for j= 4 upto 15:
	z[900+j]..
endfor
z916;

draw 
for j= 16 upto 18:
	z[900+j]..
endfor
z919 dashed evenly;

draw
for j= 19 upto 25:
	z[900+j]..
endfor
z826..z727..z628..z529..z430..z331..
for j= 32 upto 36:
	z[300+j]..
endfor
z301;

draw z301--z901;
draw z319--z919;
endfig;

beginfig(8);
%
z0= (8a,9a);
for i = 1 upto 36:
	z[10+i] =z0 +  (5a*cosd(10i), 5a*sind(10i));
	z[50+i] = z[10+i] + (5a*cosd(10i+90), 5a*sind(10i+90));
endfor;
z1 = z12;
z2 = z23;
z3 = z35;
z4 = z52;
z5 = z63;
z6 = z75;
z7 = whatever[z1,z4] = whatever[z2,z5];
z8 = whatever[z2,z5] = whatever[z3,z6];
z9 = whatever[z1,z4] = whatever[z3,z6];

for i=1 upto 9:
	z[100+i] = (x[i],0.7y[i]);
endfor;
for i = 1 upto 36:
	z[110+i]= (x[10+i],0.7y[10+i]);
endfor;

draw z107--z108--z109-- cycle ;
draw z101--z108;
draw z102--z109;
draw z103--z107;
draw 
	for i =1 upto 36:
		z[110+i]--
	endfor cycle;
	
label.bot(btex $P$ etex,z103);
label.rt(btex $Q$ etex,z101);
label.ulft(btex $R$ etex,z102);
label.top(btex $A$ etex,z107);
label.lft(btex $B$ etex,z108);
label.rt(btex $C$ etex,z109);

endfig;

beginfig(9);
%
numeric a;
a = 5pt;
z0= (8a,8a);
for i = 1 upto 36:
	z[10+i] =z0 +  (5a*cosd(10i), 5a*sind(10i));
	z[50+i] = z[10+i] + (5a*cosd(10i+90), 5a*sind(10i+90));
endfor;
z1 = z12;
z2 = z23;
z3 = z35;
z4 = z52;
z5 = z63;
z6 = z75;
z7 = whatever[z1,z4] = whatever[z2,z5];
z8 = whatever[z2,z5] = whatever[z3,z6];
z9 = whatever[z1,z4] = whatever[z3,z6];

draw z7--z8--z9-- cycle ;
draw z1--z8;
draw z2--z9;
draw z3--z7;
draw 
	for i =1 upto 36:
		z[10+i]--
	endfor cycle ;

label.bot(btex $P'$ etex,z3);
label.rt(btex $Q'$ etex,z1);
label.ulft(btex $R'$ etex,z2);
label.top(btex $A'$ etex,z7);
label.lft(btex $B'$ etex,z8);
label.rt(btex $C'$ etex,z9);

endfig;

beginfig(10);
%Pascal's theorem 
z0 = (10a,5a);
for i = 10 upto 46:
	z[i] = z0 + (10a*cosd(10(i-10)),5a*sind(10(i-10))) ;
endfor;

z1 = z14 ; %z14
z2 = z17 ;
z3 = z22 ;%z22
z4 = z30 ;
z5 = z37 ;%z36
z6 = z43 ;%z40
z7 = whatever[z1,z4] = whatever[z3,z6];
z8 = whatever[z2,z4] = whatever[z3,z5];
z9 = whatever[z2,z6] = whatever[z5,z1];

z50 = 1.2[z9,z8];
z51 = 1.2[z8,z9];
draw 
	for i = 10 upto 46:
		z[i]..
	endfor 
	cycle;
	
draw z1--z4--z2--z6--z3--z5-- cycle;

pickup pencircle scaled 1pt;
draw z50--z51;
dotlabel.top(btex $A$ etex,z3);
dotlabel.top(btex $B$ etex,z2);
dotlabel.top(btex $C$ etex,z1);
dotlabel.bot(btex $A'$ etex,z4);
dotlabel.bot(btex $B'$ etex,z5);
dotlabel.bot(btex $C'$ etex,z6);
%dotlabel.bot(btex $P$ etex,z8);
%dotlabel.bot(btex $Q$ etex,z7);
%dotlabel.bot(btex $R$ etex,z9);
endfig;

numeric a;
a = 8pt;
beginfig(11);
z0 = (8a,5a);
z1 = z0 + (5a,0);
z2 = z0 + (0,5a);
z3 = z0 + (-5a,0);
z4 = z0 + (0,-5a);

z6 = z0 + (-8a,-5a);
z7 = z0 + (-8a,5a);
z8 = z0 + (8a,-5a);
z9 = z0 + (8a,5a);

for i= 0 upto 16:
	z[10+i] = z0 +(2.2*(i-8)*a,0);
endfor;

draw z1..z2..z3..z4.. cycle;

for i= 0 upto 4:
	z[30+i] = whatever[z[10+i],z2] = whatever[z6,z7];
	draw z2--z[30+i];
endfor;
for i= 12 upto 16:
	z[30+i] = whatever[z[10+i],z2] = whatever[z8,z9];
	draw z2--z[30+i];
endfor;
for i=5, 11:
	draw z2--z[10+i];
endfor;
for i= 6 upto 10:
	z[50+i] = whatever[z[10+i],z2] = whatever[z6,z8];
	path p, q;
	p = z3..z4..z1 ;
	q = z2--z[50+i];
	z[30+i] = p intersectionpoint q;
	draw z2--z[30+i];
endfor;
draw z14--z22;
draw z7--z9;
dotlabel.top(btex $[0:1]$ etex,z2);
label.bot(btex $V_1$ etex,z21);
endfig;

beginfig(12);
z0 = (0,0);
z1 = z0 + (10a,0);
z2 = z1 + (0,5a);
z3 = z2 + (0,5a);
z4 = z3 -  (10a,0);
z5 = z4 - (0,5a);
z6 = z0 + (5a,5a);
z10 = z0 + (2a,a);
z11 = z1 + (-2a,a);
z12 = z3 - (2a,a);
z13 = z4 + (2a,-a);

draw z2--z5;

pickup pencircle scaled 1pt;
drawarrow z6--z10 withcolor red;
drawarrow z12--z6 withcolor red;
drawarrow z6--z13 withcolor blue;
drawarrow z11--z6 withcolor blue;

label.rt(btex 水平線 etex,z2);

endfig;

beginfig(13);
z0 = (0,0);
z1 = z0 + (10a,0);
z2 = z1 + (0,5a);
z3 = z2 + (0,5a);
z4 = z3 -  (10a,0);
z5 = z4 - (0,5a);
z6 = z0 + (5a,5a);
z7 = z6 + (-2.5a,-2.5a);
z8 = z6 + (0,-5a);
z9 = z6 + (2.5a,-2.5a);

draw z2--z5;

pickup pencircle scaled 1pt;
drawarrow z8..z7..z6 withcolor red;
drawarrow z8..z9..z6 withcolor red;

label.rt(btex 水平線 etex,z2);
endfig;

beginfig(14);
z0 = (0,a);
z1 = z0 + (8a,0);
z2 = z1+ (-4a, 8a);
z3 = z0 + (4a, 3a);

for i= 4 upto 15:
	z[i] = z3 +(4a*cosd(30i), 2a*sind(30i));
endfor ;
z16 = z3-(0, 4a);
draw 
	for i= 4 upto 15:
		z[i]..
	endfor
	cycle;
label.bot(btex $\mathbf P^1$ etex,z1);
label.bot(btex (i) etex,z16);

z20 =  z0 +(10a,0);
z21 = z20 + (8a,0);
z22 = z21+ (-4a, 8a);
z23 = z20 + (4a, 3a);

z24 = z23 + (-3a,-3a);
z25 = z24 + (8a,6a);
z26 = z23 + (-3a,a);
z27 = z26 + (8a,-3a);
z30 =z23 + (0,-4a);
draw z24--z25;
draw z26--z27;
label.bot(btex $\mathbf P^1$ etex,z21);
label.bot(btex (ii) etex,z30);

z40 =  z0 +(20a,0);
z41 = z40 + (8a,0);
z42 = z41+ (-4a, 8a);
z43 = z40 + (4a, 3a);
z44 = z43 + (-3a,-3a);
z45 = z44 + (8a,6a);
z46 =z44 + (-0.1a,0.1a);
z47 =z45 + (-0.1a,0.1a);
z50 =z43 + (0,-4a);
draw z44--z45;
draw z46--z47;

label.bot(btex $\mathbf P^1$ etex,z41);
label.bot(btex (iii) etex,z50);

pickup pencircle scaled 1pt;
draw z1--z2;
draw z21--z22;
draw z41--z42;
endfig;

numeric a;
a = 6pt;
beginfig(15);
z0=(2a,3a);
z1=z0-(2a,0);
z2=z0+(15a,0);
z3=z0-(0,3a);
z4=z0+(0,10a);
z5=z0+(11a,7a);
z6 =z0+(4a,-2a);
z7 =z0 +(4a,8a);
z8=whatever[z6,z7]=whatever[z0,z5];
z9=whatever[z6,z7]=whatever[z0,z2];
z10=(x5,y0);
z11=(x0,y5);
z12 =(x0,y8);
drawarrow z1--z2;
drawarrow z3--z4;
draw z6--z7;
draw z8--z0;
drawarrow z5--z8 ;
draw z10--z5--z11 dashed evenly ;
draw z8--z12 dashed evenly ;
label.lrt(btex $\mathbf 0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);
dotlabel.rt(btex $(x,y)$ etex,z5);
dotlabel.lrt(btex $1$ etex,z9);
dotlabel.bot(btex $x$ etex,z10);
dotlabel.lft(btex $y$ etex,z11);
dotlabel.lft(btex$\frac yx$ etex,z12);
%dotlabel.bot(btex$x$ etex,z9);

endfig;

beginfig(16);
z0 = (0,-2a);
z1 = (4a,3a);
z2 =(0, 5a);
z3 = (18a,0);
z4 =  (21a,0);
for i=1 upto 3:
	z[10i+1] = z0 + (i-1)*z3 ;
	z[10i+2] = z0 + (i-1)*z3 + z1;
	z[10i+3] = z0  + (i-1)*z3 + z1 + z2;
	z[10i+4] = z0  + (i-1)*z3 + z1 + 3z2;
	z[10i+5] = z0  + (i-1)*z3 + 3z2;
	z[10i+6] = z0  + (i-1)*z3 + z2;
	z[10i+7] = z0  + (i-1)*z3 + 0.5z1+ z2;
	z[10i+8] = z0  + (i-1)*z3 + 0.7z1+ z2;
	z[10i+9] = z0  + (i-1)*z3 + 0.7z1+ 2z2;
	z[10i+10] = z0  + (i-1)*z3 + 0.5z1+ 2z2;
endfor;
for j = 1 upto 10:
	z[40+j]  = z[10+j]  +  z4;
endfor;
for i = 1 upto 20:
 	z[50 +i ] = (i/10-0.5)[z18,z38] ;
endfor;

for i=2 upto 2:
	draw 
		for j = 1 upto 6:
			z[10i+j]--
		endfor
		cycle ;
endfor;

for  i = 6 upto 10:
	draw z[50 +i ]--z50 withcolor blue;
endfor;

for  i = 1 upto 5:
	z[100 +i ] = whatever[z[50 + i],z50] = whatever[z18,z20];
 	draw z[100 +i ]--z50 withcolor blue;
endfor;

draw z16--z46--z43--z13-- cycle;
%draw z16--z36--z33--z13-- cycle;
draw z26--z23;
draw z20--z50 withcolor red;
draw z18--z48 withcolor red;
%draw z20--z40 withcolor red;
%draw z18--z38 withcolor red;

pickup pencircle scaled 1pt;
draw z50--z47--z27;
draw z28--z30 withcolor red;

dotlabel.rt(btex $\mathbf 0$ etex,z50);
label.lrt(btex $x=1$ etex,z24);
label.bot(btex $z=-1$ etex,0.5[z16,z46]);
endfig;

beginfig(17);
%perspective and camera obscura
z0=(0, 12a);
%camera
z1 = z0+(15a,3a);
z2 = z1-(0,3a);
z3 = z2+(5a,0);
z4 = z3+(0,7a);
z5 = z4-(5a,0);
z6 = z5-(0,3a);
z9 =0.5[z1,z6];%pin hole
draw
	for i=1 upto 5:
		z[i]--
	endfor
	z6 ;

%object
z11 = z0+(0,6a);
z12 = z0;
z13 = z12+ (-a,a);
z14 = z12 +(a,a);

%projection 
z15 = z3 -(2a/3,0); %guide point
z16 = z4 -(2a/3,0);
z17 = z15 + (2a/3,0);
z18 = z16 + (2a/3,0);
z19 = z15 - (2a/3,0);
z20 = z16 - (2a/3,0);
%intersection of the line of object to center and the guide line
z21 = whatever[z11,z9] =  whatever[z15,z16];
z22 = whatever[z12,z9] =  whatever[z15,z16];
z23 = whatever[z13,z9] =  whatever[z17,z18];
z24 = whatever[z14,z9] =  whatever[z19,z20];
draw z15--z16 dashed evenly;%glass 
label.bot(btex 投影面 etex, z15);

%object
z11 = z0+(0,6a);
z12 = z0;
z13 = z12+ (-a,a);
z14 = z12 +(a,a);

%pi-rotated image 
for i = 1 upto 4:
	z[24 + i] = z9 + z9 - z[10 + i];
endfor;

z50 = (8a,0); %translate 
for i= 9 upto 28:
	z[50 + i] = z[50] + z[i];
endfor;

draw z65--z66;
label.bot(btex 投影面 etex, z65);

z100 = (5a, -12a);
for i = 1 upto 28:
	z[100+i] = z100 + z[i];
endfor;

draw z115--z116;
draw z101--z102;
draw z105--z106;

label.bot(btex 投影面 etex, z115);

pickup pencircle scaled 1pt;
draw z11--z12;
draw z13--z12--z14;
draw z21--z22;
draw z23--z22--z24;

draw z75--z76;
draw z73--z72--z74;
draw z71--z72;
draw z77--z76--z78;

draw z11--z21 withcolor red;
draw z12--z22 withcolor blue;

draw z59--z76 withcolor blue;
draw z59--z75 withcolor red;

draw z111--z112;
draw z113--z112--z114;
draw z121--z122;
draw z123--z122--z124;
draw z125--z126;
draw z127--z126--z128;

draw z111--z125 withcolor red;
draw z112--z126 withcolor blue;
dotlabel.bot(btex etex, z59);
dotlabel.bot(btex etex, z109);
endfig;



verbatimtex
\end{document}
etex;
end