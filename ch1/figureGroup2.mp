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
z0=(6a,6a);%Origin : adjust the position of the whole figure.
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
z30 =z11+(0,1.4a);
z31 =z11+(0,-1.4a);
z32=z12 +(a,-a)-(0.5a,0.5a);
z33=z12 +(-a,a)-(0.5a,0.5a);
z34 =z13+(1.4a,0);
z35 =z13+(-1.4a,0);
z36=z14 +(a,a)-(-0.5a,0.5a);
z37=z14 +(-a,-a)-(-0.5a,0.5a);

drawarrow z1--z2;
drawarrow z3--z4;
draw z5--z6--z7--z8-- cycle;

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

beginfig(2);
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
z30 =z11+(0,1.4a);
z31 =z11+(0,-1.4a);
z32=z12 +(a,-a)-(0.5a,0.5a);
z33=z12 +(-a,a)-(0.5a,0.5a);
z34 =z13+(1.4a,0);
z35 =z13+(-1.4a,0);
z36=z14 +(a,a)-(-0.5a,0.5a);
z37=z14 +(-a,-a)-(-0.5a,0.5a);

drawarrow z1--z2;
drawarrow z3--z4;
draw z5--z6--z7--z8-- cycle;

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
draw z11--z15 dashed evenly;
draw z12--z16 dashed evenly;
draw z13--z17 dashed evenly;
draw z14--z18 dashed evenly;
endfig;


beginfig(3);
z0=(6a,4a);
z1=(-1.5a,-2.5a);
z2=(4.5a,0);
z3=(0,3.5a);

z4=z0-0.4*z1+0.4*z2;
z5=z0-z2+z1;
z6=z5-2*z1;
z7=z6+2*z2;
z8=z7+2*z1;
z9=z0+z3;
z10=z0+0.4*z1;

path p;
p = z5--z6--z7--z8-- cycle;
fill p withcolor 0.9white;
draw p;

z11=z0+0.3*z1;
z12=z11+0.2*z3;
z13=z0+0.2*z3;
z15=z0+0.3*z2;
z16=z0+0.2*z2;
z17=z16+0.2*z3;

z20 = z0 - z3;
z21 = whatever[z0,z20] =  whatever[z5,z8] ;
draw z0--z15;
draw z16--z17--z13;
draw z0--z10;
draw z11--z12--z13;

for i=0 upto 7:
	z[30+i]=z0+ (3a*cosd(10i),1.5a*sind(10i));
endfor;

drawarrow 
for i=0 upto 6:
	z[30+i]..
endfor
z37;

label.rt(btex $\mathbf y$ etex,z30);
label.top(btex $S\mathbf y$ etex,z37);
label.lrt(btex $\mathbf 0$ etex,z0);
label.top(btex $S\mathbf x=\mathbf x$ etex,z9);
label.bot(btex $-\mathbf x$ etex,z20);
pickup pencircle scaled 1pt;
drawarrow z0--z9;
drawarrow z21--z20;
drawarrow z0--z30;
drawarrow z0--z37;
endfig;

numeric c, d;
c = -30;%default 30%angle of rotation of figure around z axis
d = 30;%default 30%angle of rotation of view point around y axis
beginfig(4);
z0=(4a,5a);%Origin : adjust the position of the whole figures.
% In $\mathbf R^3$  we take an orthnormal frame
% e_1=(cos(c)cos(d), sin(c), -cos(c)sin(d)), 
% e_2=(-sin(c)cos(d), cos(c),sin(c)sin(d)), e_3=(sin(d), 0,cos(d)
% and consider the orthogonal projection to yz-plane.
z1 = a*(sind(c), -cosd(c)*sind(d)); 
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d));

%vertices  of cube 
z11 = z0 + 8z3 ;
z12 = z11 + 8z2;
z13 = z12 + 8z1;
z14 = z13 - 8z2 ;
z15 = z0  ;
z16 = z15+ 8z2;
z17 = z16 + 8z1;
z18 = z17 - 8z2 ;

%test part
%drawarrow z15--z18;
%drawarrow z15--z16;
%drawarrow z15--z11;
%label.llft(btex $x$ etex,z18);
%label.lrt(btex $y$ etex,z16);
%label.top(btex $z$ etex,z11);

%edges of cube
draw z11--z12--z13--z14--  cycle;
draw z16--z17--z18;
draw z18--z15--z16 dashed evenly;
for i=12 upto 14:
	draw z[i]--z[i+4];
endfor;
for i=11 upto 11:
	draw z[i]--z[i+4] dashed evenly;
endfor;

%fail: too many lines to see!
%draw z11--z13 dashed evenly;
%draw z12--z14 dashed evenly;
%draw z15--z17 dashed evenly;
%draw z16--z18 dashed evenly;
%draw z11--z16 dashed evenly;
%draw z12--z15 dashed evenly;
%draw z12--z17 dashed evenly;
%draw z15--z16 dashed evenly;
%draw z13--z18 dashed evenly;
%draw z14--z17 dashed evenly;
%draw z14--z15 dashed evenly;
%draw z11--z18 dashed evenly;

%vertices of outer cube
z21 = z0 - z1- z2 - z3 + 10z3 ;
z22 = z21 + 10z2;
z23 = z22 + 10z1;
z24 = z23 - 10z2 ;
z25 = z0- z1- z2 - z3  ;
z26 = z25+ 10z2;
z27 = z26 + 10z1;
z28 = z27 - 10z2 ;

%center of faces of  outer cube
z31= 0.5[z21,z23];
z32 = 0.5[z25,z27];
z33= 0.5[z21,z26];
z34= 0.5[z23,z28];
z35= 0.5[z21,z28];
z36= 0.5[z23,z26];

%center of faces
z41= 0.5[z11,z13];
z42 = 0.5[z15,z17];
z43= 0.5[z11,z16];
z44= 0.5[z13,z18];
z45= 0.5[z11,z18];
z46= 0.5[z13,z16];
for i = 41 upto 46:
	dotlabel("",z[i]);
endfor;

%center of edges of outer cube
z51= 0.5[z21,z22];
z52= 0.5[z22,z23];
z53= 0.5[z23,z24];
z54= 0.5[z24,z21];

z55 = 0.5[z21,z25];
z56 = 0.5[z22,z26];
z57 = 0.5[z23,z27];
z58 = 0.5[z24,z28];

z61= 0.5[z27,z28];
z62= 0.5[z28,z25];
z63= 0.5[z25,z26];
z64= 0.5[z26,z27];

pickup pencircle scaled 1pt;
%draw z21--z27 dashed evenly withcolor blue;
%draw z22--z28 dashed evenly withcolor blue;
%draw z23--z25 dashed evenly withcolor blue;
%draw z24--z26 dashed evenly withcolor blue;

draw z31--z32 dashed evenly withcolor red;
draw z33--z34 dashed evenly withcolor red;
draw z35--z36 dashed evenly withcolor red;

%draw z51--z61 dashed evenly;
%draw z52--z62 dashed evenly;
%draw z53--z63 dashed evenly;
%draw z54--z64 dashed evenly;
%draw z55--z57 dashed evenly;
%draw z56--z58 dashed evenly;

%outer cube: test part
%draw z21--z22--z23--z24-- cycle;
%draw z25--z26--z27--z28-- cycle;
%for i=21 upto 24:
%	draw z[i]--z[i+4];
%endfor;

endfig;

beginfig(5);
z0=(4a,6a);%Origin : adjust the position of the whole figures.
z1 = a*(sind(c),-cosd(c)*sind(d));
z2 = a*(cosd(c),sind(c)*sind(d));
z3 = a*(0,cosd(d));

%vertex of cube 
z11 = z0 + 8z3 ;
z12 = z11 + 8z2;
z13 = z12 + 8z1;
z14 = z13 - 8z2 ;
z15 = z0  ;
z16 = z15+ 8z2;
z17 = z16 + 8z1;
z18 = z17 - 8z2 ;

%edges of cube
draw z11--z12--z13--z14--  cycle;
draw z16--z17--z18;
draw z18--z15--z16 dashed evenly;
for i=12 upto 14:
	draw z[i]--z[i+4];
endfor;
for i=11 upto 11:
	draw z[i]--z[i+4] dashed evenly;
endfor;

for i=11 upto 18:
	dotlabel("",z[i]);
endfor;


z21 = z0 - z1- z2 - z3 + 10z3 ;
z22 = z21 + 10z2;
z23 = z22 + 10z1;
z24 = z23 - 10z2 ;
z25 = z0- z1- z2 - z3  ;
z26 = z25+ 10z2;
z27 = z26 + 10z1;
z28 = z27 - 10z2 ;

%center of faces of  outer cube
z31= 0.5[z21,z23];
z32 = 0.5[z25,z27];
z33= 0.5[z21,z26];
z34= 0.5[z23,z28];
z35= 0.5[z21,z28];
z36= 0.5[z23,z26];

%center of faces
z41= 0.5[z11,z13];
z42 = 0.5[z15,z17];
z43= 0.5[z11,z16];
z44= 0.5[z13,z18];
z45= 0.5[z11,z18];
z46= 0.5[z13,z16];

%center of edges of outer cube
z51= 0.5[z21,z22];
z52= 0.5[z22,z23];
z53= 0.5[z23,z24];
z54= 0.5[z24,z21];

z55 = 0.5[z21,z25];
z56 = 0.5[z22,z26];
z57 = 0.5[z23,z27];
z58 = 0.5[z24,z28];

z61= 0.5[z27,z28];
z62= 0.5[z28,z25];
z63= 0.5[z25,z26];
z64= 0.5[z26,z27];

pickup pencircle scaled 1pt;
draw z21--z27 dashed evenly withcolor red;
draw z22--z28 dashed evenly withcolor red;
draw z23--z25 dashed evenly withcolor red;
draw z24--z26 dashed evenly withcolor red;
endfig;

beginfig(6);
z0=(4a,5a);%Origin : adjust the position of the whole figures.
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c),sind(c)*sind(d));
z3 = a*(0,cosd(d));

%vertices  of cube 
z11 = z0 + 8z3 ;
z12 = z11 + 8z2;
z13 = z12 + 8z1;
z14 = z13 - 8z2 ;
z15 = z0  ;
z16 = z15+ 8z2;
z17 = z16 + 8z1;
z18 = z17 - 8z2 ;

%edges of cube
draw z11--z12--z13--z14--  cycle;
draw z16--z17--z18;
draw z18--z15--z16 dashed evenly;
for i=12 upto 14:
	draw z[i]--z[i+4];
endfor;
for i=11 upto 11:
	draw z[i]--z[i+4] dashed evenly;
endfor;

%vertices of outer cube
z21 = z0 - z1- z2 - z3 + 10z3 ;
z22 = z21 + 10z2;
z23 = z22 + 10z1;
z24 = z23 - 10z2 ;
z25 = z0- z1- z2 - z3  ;
z26 = z25+ 10z2;
z27 = z26 + 10z1;
z28 = z27 - 10z2 ;

%center of faces of  outer cube
z31= 0.5[z21,z23];
z32 = 0.5[z25,z27];
z33= 0.5[z21,z26];
z34= 0.5[z23,z28];
z35= 0.5[z21,z28];
z36= 0.5[z23,z26];

%center of faces
z41= 0.5[z11,z13];
z42 = 0.5[z15,z17];
z43= 0.5[z11,z16];
z44= 0.5[z13,z18];
z45= 0.5[z11,z18];
z46= 0.5[z13,z16];

%center of edges of outer cube
z51= 0.5[z21,z22];
z52= 0.5[z22,z23];
z53= 0.5[z23,z24];
z54= 0.5[z24,z21];

z55 = 0.5[z21,z25];
z56 = 0.5[z22,z26];
z57 = 0.5[z23,z27];
z58 = 0.5[z24,z28];

z61= 0.5[z27,z28];
z62= 0.5[z28,z25];
z63= 0.5[z25,z26];
z64= 0.5[z26,z27];

%center of edges of cube
z71= 0.5[z11,z12];
z72= 0.5[z12,z13];
z73= 0.5[z13,z14];
z74= 0.5[z14,z11];

z75 = 0.5[z11,z15];
z76 = 0.5[z12,z16];
z77 = 0.5[z13,z17];
z78 = 0.5[z14,z18];

z81= 0.5[z17,z18];
z82= 0.5[z18,z15];
z83= 0.5[z15,z16];
z84= 0.5[z16,z17];

for i = 71 upto 78:
	dotlabel("",z[i]);
endfor;
for i = 81 upto 84:
	dotlabel("",z[i]);
endfor;

pickup pencircle scaled 1pt;

draw z51--z61 dashed evenly withcolor red;
draw z52--z62 dashed evenly withcolor red;
draw z53--z63 dashed evenly withcolor red;
draw z54--z64 dashed evenly withcolor red;
draw z55--z57 dashed evenly withcolor red;
draw z56--z58 dashed evenly withcolor red;

endfig;


numeric c, d;
c = -30; %angle of rotation of figure around z axis
d = 10; %angle of rotation of view point around y axis

beginfig(7);
z0=(3a, 4a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0,cosd(d));

z11 = z0 + 8z3 ;
z12 = z11 + 8z2;
z13 = z12 + 8z1;
z14 = z13 - 8z2 ;
z15 = z0  ;
z16 = z15+ 8z2;
z17 = z16 + 8z1;
z18 = z17 - 8z2 ;

%tetrahedon 
draw z11--z13 ;
draw z11--z16;
draw z11--z18;
draw z18--z13 dashed evenly;
draw z13--z16--z18;

%test part
%drawarrow z15--z18;
%drawarrow z15--z16;
%drawarrow z15--z11;
%label.llft(btex $x$ etex,z18);
%label.lrt(btex $y$ etex,z16);
%label.top(btex $z$ etex,z11);

z21 = z0 - z1- z2 - z3 + 10z3 ;
z22 = z21 + 10z2;
z23 = z22 + 10z1;
z24 = z23 - 10z2 ;
z25 = z0- z1- z2 - z3  ;
z26 = z25+ 10z2;
z27 = z26 + 10z1;
z28 = z27 - 10z2 ;

z31 = 0.5[z11,z13];
z32 = 0.5[z11,z16];
z33 = 0.5[z11,z18];
z34 = 0.5[z13,z16];
z35 = 0.5[z16,z18];
z36 = 0.5[z18,z13];

z41= whatever[z31,z18] = whatever[z13,z33];
z42= whatever[z31,z16] = whatever[z13,z32];
z43= whatever[z35,z13] = whatever[z18,z34];
z44= whatever[z35,z11] = whatever[z18,z32];


dotlabel("",z11);
dotlabel("",z13);
dotlabel("",z16);
dotlabel("",z18);

for i = 41 upto 44:
	dotlabel("",z[i]);
endfor;

pickup pencircle scaled 1pt;
draw z12--z28 dashed evenly withcolor red;
draw z14--z26 dashed evenly withcolor red;
draw z15--z23 dashed evenly withcolor red;
draw z17--z21 dashed evenly withcolor red;

endfig;

beginfig(8);
z0=(3a, 3a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0,cosd(d));

z11 = z0 + 8z3 ;
z12 = z11 + 8z2;
z13 = z12 + 8z1;
z14 = z13 - 8z2 ;
z15 = z0  ;
z16 = z15+ 8z2;
z17 = z16 + 8z1;
z18 = z17 - 8z2 ;

%tetrahedon 
draw z11--z13 ;
draw z11--z16;
draw z11--z18;
%draw z13--z16--z18-- cycle;
draw z18--z13  dashed evenly;
draw z13--z16--z18;


%cube : test part
%draw z11--z12--z13--z14-- cycle;
%draw z15--z16--z17--z18-- cycle;
%for i=11 upto 14:
%	draw z[i]--z[i+4];
%endfor;

z21 = z0 - z1- z2 - z3 + 10z3 ;
z22 = z21 + 10z2;
z23 = z22 + 10z1;
z24 = z23 - 10z2 ;
z25 = z0- z1- z2 - z3  ;
z26 = z25+ 10z2;
z27 = z26 + 10z1;
z28 = z27 - 10z2 ;

z31 = 0.5[z11,z13];
z32 = 0.5[z11,z16];
z33 = 0.5[z11,z18];
z34 = 0.5[z13,z16];
z35 = 0.5[z16,z18];
z36 = 0.5[z18,z13];

z41= whatever[z31,z18] = whatever[z13,z33];
z42= whatever[z31,z16] = whatever[z13,z32];
z43= whatever[z35,z13] = whatever[z18,z34];
z44= whatever[z35,z11] = whatever[z18,z32];

z51 = 0.5[z21,z23];
z52 = 0.5[z21,z26];
z53 = 0.5[z21,z28];
z54 = 0.5[z23,z26];
z55 = 0.5[z26,z28];
z56 = 0.5[z28,z23];
%dotlabel("",z11);
%dotlabel("",z13);
%dotlabel("",z16);
%dotlabel("",z18);
%
for i = 31 upto 36:
	dotlabel("",z[i]);
endfor;

pickup pencircle scaled 1pt;
draw z51--z55 dashed evenly withcolor red;
draw z52--z56 dashed evenly withcolor red;
draw z53--z54 dashed evenly withcolor red;
%draw z17--z21 dashed evenly withcolor red;
endfig;

beginfig(9);
z0=(6a,6a);

for j = 1 upto 8:
    for i = 0 upto 10:%10 is verbose value for the later loops.
    	z[10i+j] = z0+ j*(a*cosd(36i+90),a*sind(36i+90));
    endfor;
endfor;

%test part: convexity
%draw  
%for i = 0 upto 4:
%	z[10(2i+1)+5]--
%endfor
%cycle;
%draw  
%for i = 0 upto 4:
%	z[10(2i+1)+7]--
%endfor
%cycle;
draw  
for i = 0 upto 4:
	z[20i+2]--
endfor
cycle;

for i = 0 upto 4:
	draw z[20i+2]--z[20i+3]--z[10(2i+1)+4]--z[20i+20+3];
endfor;

for i = 0 upto 4:
	draw z[10(2i+1)+4]--z[10(2i+1)+6];
endfor;

draw 
for i = 0 upto 4:
	z[10(2i+1)+6]--
endfor
cycle;

dotlabel("",z0);
dotlabel("",z2);
dotlabel("",z56);
dotlabel("",0.5[z2,z22]);
dotlabel("",0.5[z56,z76]);

%pickup pencircle scaled 1pt;
%draw z2--z2 withcolor red;
%draw z56--z56 withcolor red;
%draw 0.5[z2,z22]--0.5[z2,z22] withcolor blue;
%draw 0.5[z56,z76]--0.5[z56,z76] withcolor blue;
endfig;

verbatimtex
\end{document}
etex;
end