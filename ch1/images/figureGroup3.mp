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

numeric a,b;
a = 10pt;
b = 6pt;
numeric c, d;
c = 40; %angle of rotation of figure around z axis
d = 20; %angle of rotation of view point around y axis

beginfig(1);
z0 = (0,a);
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
draw z13--z16--z18-- cycle;

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

beginfig(2);
z0=(0,a);
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
draw z13--z16--z18-- cycle;

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
label.top(btex $\mathbf x$ etex,z9);
label.bot(btex $S\mathbf x=-\mathbf x$ etex,z20);
pickup pencircle scaled 1pt;
drawarrow z0--z9;
drawarrow z21--z20;
drawarrow z0--z30;
drawarrow z0--z37;
endfig;

numeric c, d;
c = 210;%30; %angle of rotation of figure around z axis
d = 10; %angle of rotation of view point around y axis
beginfig(4);
z0=(10a,a);
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

%cube : 
draw z11--z12--z13--z14-- cycle;
draw z15--z16--z17;
draw z15--z18--z17 dashed evenly;

draw z[14]--z[14+4] dashed evenly;
for i=11 upto 13:
	draw z[i]--z[i+4];
endfor;

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
%for i = 31 upto 36:
%	dotlabel("",z[i]);
%endfor;

pickup pencircle scaled 0.8pt;
%tetrahedon 
draw z11--z13 ;
draw z11--z16;
draw z11--z18;
draw z13--z16--z18 ;
draw z13--z18 dashed evenly;

%draw z51--z55 dashed evenly withcolor red;
%draw z52--z56 dashed evenly withcolor red;
%draw z53--z54 dashed evenly withcolor red;
endfig;

beginfig(5);
z0 = (5a,5a);
z1 = (-3a,-2a);
z2 = (5a,0);
z3 = (0,5a);
z4 = (2a,3a);

z11=z0-z1;
z12=z0+z1;
z13=z0-z2;
z14=z0+z2;
z15=z0-z3;
z16=z0+z3;

z20= z0 +z4;
z21 = z0 - z4;

for i=1 upto 3:
	drawarrow z[9+2i]--z[10+2i];
endfor;

label.llft(btex $x$ etex,z12);
label.rt(btex $y$ etex,z14);
label.top(btex $z$ etex,z16);

label.top(btex $\mathbf x$ etex,z20);
label.bot(btex $Z\mathbf x=-\mathbf x\quad$ etex,z21);

pickup pencircle scaled 1pt;
drawarrow z0--z20;
drawarrow z0--z21;
endfig;


beginfig(6);
z0=(6a,6a);
for i=1 upto 12:
	z[i] = z0+ 4a*(cosd(60+30i),sind(60+30i));
	z[20+i] = z0+ 6.2a*(cosd(60+30i),sind(60+30i));
endfor;

draw z1--z3--z5--z7--z9--z11-- cycle;
dotlabel("",z0);

pickup pencircle scaled 1pt;
draw z3--z7--z11-- cycle;

draw z21--z27 dashed evenly withcolor red;
draw z23--z29 dashed evenly withcolor red;
draw z25--z31 dashed evenly withcolor red;
draw z22--z28 dashed evenly withcolor blue;
draw z24--z30 dashed evenly withcolor blue;
draw z26--z32 dashed evenly withcolor blue;
endfig;

numeric a;
a= 16pt;
beginfig(7);
for i=1 upto 15:
	for j=1 upto 6:                         
			z[100*i + j]=(a*(i-1), 4.2a- 0.7a*j);
			z[100*i + j +10]=z[100*i + j] + (0.15a, 0);
			z[100*i + j -10]=z[100*i + j] - (0.15a, 0);
	endfor;          
endfor;                            

for i=0 upto 2:
	for j = 1 upto 4:
		draw z[500i+100*j+1]--z[500i+100*j + 4];
	endfor;
endfor;

draw z102--z202;
draw z303--z403;

draw z602--z692;
draw z712--z802;
draw z703--z793;
draw z813--z903;

draw z1102--z1192;
draw z1212--z1292;
draw z1312--z1402;
draw z1203--z1303;
%draw z140--z540 dashed evenly;

label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.top(btex $1$ etex,z601);
label.top(btex $2$ etex,z701);
label.top(btex $3$ etex,z801);
label.top(btex $4$ etex,z901);
label.top(btex $1$ etex,z1101);
label.top(btex $2$ etex,z1201);
label.top(btex $3$ etex,z1301);
label.top(btex $4$ etex,z1401);
label.bot(btex $1$ etex,z104);
label.bot(btex $2$ etex,z204);
label.bot(btex $3$ etex,z304);
label.bot(btex $4$ etex,z404);
label.bot(btex $1$ etex,z604);
label.bot(btex $2$ etex,z704);
label.bot(btex $3$ etex,z804);
label.bot(btex $4$ etex,z904);
label.bot(btex $1$ etex,z1104);
label.bot(btex $2$ etex,z1204);
label.bot(btex $3$ etex,z1304);
label.bot(btex $4$ etex,z1404);

label(btex $\alpha$ etex, 0.5[z206,z306]);
label(btex $\beta$ etex, 0.5[z706,z806]);
label(btex $\gamma$ etex, 0.5[z1206,z1306]);

endfig;


beginfig(8);
for i=1 upto 16:
	for j=1 upto 8:                         
			z[100*i+j]=(a*(i-1),5.6a- 0.7a*j);
			z[100*i+j +10]=z[100*i+j] + (0.15a,0);
			z[100*i+j -10]=z[100*i+j] - (0.15a,0);
	endfor;          
endfor;                            

for i=0 upto 2:
	for j = 1 upto 4:
		draw z[500i+100*j+ 100 + 1]--z[500i+100*j + 100 + 6];
	endfor;
endfor;

draw z202--z302;
draw z402--z502;
draw z204--z294;
draw z314--z404;
draw z305--z395;
draw z415--z505;

draw z703--z793;
draw z813--z893;
draw z913--z1003;
draw z805--z905;

draw z1202--z1292;
draw z1312--z1402;
draw z1303--z1393;
draw z1413--z1503;
draw z1205--z1305;
draw z1405--z1505;

draw z103--z603 dashed evenly;
draw z1104--z1604 dashed evenly;

label.top(btex $1$ etex,z201);
label.top(btex $2$ etex,z301);
label.top(btex $3$ etex,z401);
label.top(btex $4$ etex,z501);
label.top(btex $1$ etex,z701);
label.top(btex $2$ etex,z801);
label.top(btex $3$ etex,z901);
label.top(btex $4$ etex,z1001);
label.top(btex $1$ etex,z1201);
label.top(btex $2$ etex,z1301);
label.top(btex $3$ etex,z1401);
label.top(btex $4$ etex,z1501);
label.bot(btex $1$ etex,z206);
label.bot(btex $2$ etex,z306);
label.bot(btex $3$ etex,z406);
label.bot(btex $4$ etex,z506);
label.bot(btex $1$ etex,z706);
label.bot(btex $2$ etex,z806);
label.bot(btex $3$ etex,z906);
label.bot(btex $4$ etex,z1006);
label.bot(btex $1$ etex,z1206);
label.bot(btex $2$ etex,z1306);
label.bot(btex $3$ etex,z1406);
label.bot(btex $4$ etex,z1506);

label(btex $=$ etex, z604);
label(btex $=$ etex, z1103);

label(btex $\beta\alpha$ etex, 0.5[z308,z408]);
label(btex $\gamma$ etex, 0.5[z808,z908]);
label(btex $\alpha\beta$ etex, 0.5[z1308,z1408]);

endfig;

beginfig(9)
for i=0 upto 6:
	for j=1 upto 14:
		z[100*i+j]=(a*i, 7.5a - 0.5a*j);
	endfor;
endfor;

for i=1 upto 5:
   draw z[100*i+1]--z[100*i+13];
endfor;

label.top(btex $k$ etex,z101);
label.top(btex $m$ etex,z201);
label.top(btex $i$ etex,z301);
label.top(btex $l$ etex,z401);
label.top(btex $j$ etex,z501);

label(btex $k$ etex,z114);
label(btex $m$ etex,z214);
label(btex $i$ etex,z314);
label(btex $l$ etex,z414);
label(btex $j$ etex,z514);

draw z203--z303;
draw z102--z202;
draw z4--z604 dashed evenly;
draw z405--z505;
draw z306--z406;
draw z7--z607 dashed evenly;
draw z109--z209;
draw z208--z308;
draw z10--z610 dashed evenly;
draw z311--z411;
draw z412--z512;

label(btex $g$ etex,z3);
label(btex $h$ etex,z6);
label(btex $g^{-1}$ etex,z9);
label(btex $h^{-1}$ etex,z12);
endfig;

numeric a;
a= 10pt;
beginfig(10);
z0=(7a,5a);
z1=z0-(7a,0);%x-axis
z2=z0+(7a,0);
z3=z0-(0,7a);%y-axis
z4=z0+(0,7a);
%drawarrow z1--z2;
%drawarrow z3--z4;
%%label.llft(btex $0$ etex,z0);
%label.rt(btex $x$ etex,z2);
%label.top(btex $y$ etex,z4);

for i = 1 upto 6:
	z[10+i] = z0 + 4a*(cosd(120*(i-1)), sind(120*(i-1)) );
endfor;
draw 
	for i = 1 upto 3:
		z[10+i]--
	endfor cycle;
dotlabel.top(btex $1$ etex,z11);
dotlabel.urt(btex $2$ etex,z12);
dotlabel.lrt(btex $3$ etex,z13);

for i = 1 upto 6:
	z[20+i] = z0 + 5a*(cosd( 60*(i-1)), sind( 60*(i-1)) )
		+ a*(cosd(90+ 60*(i-1)), sind(90+ 60*(i-1)) );
	z[40+i] = z0 + 5a*(cosd( 60*(i-1)), sind( 60*(i-1)) )
		+ a*(cosd( -90+ 60*(i-1)), sind( -90+ 60*(i-1)) );
endfor;
for i = 1 upto 3:
	drawdblarrow z[20+i]--z[40+i];
endfor;

for i = 1 upto 6:
	z[60+i] = z0 + 6a*(cosd( 120*(i-1)), sind( 120*(i-1)) );
	z[70+i] = z0 + 6a*(cosd(180+ 120*(i-1)), sind( 180+120*(i-1)) );
endfor;
for i = 1 upto 7:
	z[80+i] = z0 + 1.5a*(cosd( 60*(i-1)), sind( 60*(i-1)) );
endfor
for i= 1 step 2 until 6:
	drawarrow z[80+i]..z[80+i+1]..z[80+i+2];
endfor;

pickup pencircle scaled 1pt;
for i = 1 upto 3:
	draw z[60+i]--z[70+i] dashed evenly withcolor red;
endfor;
for i = 1 upto 3:
	z[100 + i] = whatever[z[60+i], z[70+ i]]= whatever[z[11+i], z[12+i]];
endfor 
for i = 1 upto 3:
	dotlabel(btex $ $ etex, z[100 + i]);
endfor 
dotlabel.top(btex $ $ etex,z0);

endfig;


numeric a;
a= 10pt;

numeric c, d;
c = 30; %angle of rotation of figure around z axis
d = 10; %angle of rotation of view point around y axis
beginfig(11);
z0=(0,a);
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
draw z11--z13;
draw z11--z16;
draw z11--z18;
draw z13--z18 dashed evenly;
draw z18--z16--z13;

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

beginfig(12);
z0=(0,a);
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
draw z11--z13;
draw z11--z16;
draw z11--z18;
draw z13--z18 dashed evenly;
draw z18--z16--z13;



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
endfig;


beginfig(13);
z0=(0,a);
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
draw z13--z18 dashed evenly;
draw z13--z16--z18;

dotlabel.top(btex $1$ etex,z11);
dotlabel.top(btex $2$ etex,z13);
dotlabel.llft(btex $3$ etex,z16);
dotlabel.bot(btex $4$ etex,z18);

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

for i = 41 upto 44:
	dotlabel("",z[i]);
endfor;

pickup pencircle scaled 1pt;
draw z12--z28 dashed evenly withcolor red;
draw z14--z26 dashed evenly withcolor red;
draw z15--z23 dashed evenly withcolor red;
draw z17--z21 dashed evenly withcolor red;

endfig;

beginfig(131);
z0=(0,a);
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
draw z11--z13;
draw z11--z16;
draw z11--z18;
draw z13--z18 dashed evenly;
draw z18--z16--z13;

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

dotlabel.top(btex $1$ etex,z11);
dotlabel.top(btex $2$ etex,z13);
dotlabel.bot(btex $3$ etex,z16);
dotlabel.bot(btex $4$ etex,z18);

for i = 31 upto 36:
	dotlabel("",z[i]);
endfor;

pickup pencircle scaled 1pt;
draw z51--z55 dashed evenly withcolor red;
draw z52--z56 dashed evenly withcolor red;
draw z53--z54 dashed evenly withcolor red;
endfig;

numeric c, d;
c = 20; %angle of rotation of figure around z axis
d = -10; %angle of rotation of view point around y axis

beginfig(14);
z0=(0,a);
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

dotlabel.top(btex $1$ etex,z11);
dotlabel.top(btex $2$ etex,z13);%3
dotlabel.bot(btex $3$ etex,z16);%4
dotlabel.bot(btex $4$ etex,z18);%2
dotlabel.top(btex $4$ etex,z12);%2
dotlabel.top(btex $3$ etex,z14);%4
dotlabel.bot(btex $2$ etex,z15);%3
dotlabel.bot(btex $1$ etex,z17);

%cube : 
draw z11--z12--z13--z14-- cycle;
draw z15--z16--z17;
draw z15--z18--z17 dashed evenly;

draw z[14]--z[14+4] dashed evenly;
for i=11 upto 13:
	draw z[i]--z[i+4];
endfor;

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

%z41= whatever[z31,z18] = whatever[z13,z33];
%z42= whatever[z31,z16] = whatever[z13,z32];
%z43= whatever[z35,z13] = whatever[z18,z34];
%z44= whatever[z35,z11] = whatever[z18,z32];

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

pickup pencircle scaled 0.8pt;
%tetrahedon 
draw z11--z13 ;
draw z11--z16;
draw z11--z18;
draw z13--z16--z18 ;
draw z13--z18 dashed evenly;

draw z51--z55 dashed evenly withcolor red;
draw z52--z56 dashed evenly withcolor red;
draw z53--z54 dashed evenly withcolor red;
endfig;

beginfig(15);
z0=(0, a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
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
%draw z11--z12--z13--z14-- cycle;
%draw z15--z16--z17--z18-- cycle;
%for i=11 upto 14:
%	draw z[i]--z[i+4];
%endfor;
%for i=11 upto 18:
%	dotlabel("",z[i]);
%endfor;

%cube : 
draw z11--z12--z13--z14-- cycle;
draw z15--z16--z17;
draw z15--z18--z17 dashed evenly;
for i=11 upto 13:
	draw z[i]--z[i+4];
endfor;
draw z[14]--z[14+4] dashed evenly;

dotlabel.top(btex $1$ etex,z11);
dotlabel.top(btex $2$ etex,z13);%3
dotlabel.bot(btex $3$ etex,z16);%2
dotlabel.bot(btex $4$ etex,z18);
dotlabel.top(btex $4$ etex,z12);
dotlabel.top(btex $3$ etex,z14);%2
dotlabel.bot(btex $2$ etex,z15);%3
dotlabel.bot(btex $1$ etex,z17);

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
z41= 2/3[z11, z17];
z42 = 2/3[z16, z14];
z43= 2/3[z13, z15];
z44= 2/3[z18, z12];
for i = 41 upto 44:
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
%tetrahedorn
draw z11--z13 ;
draw z11--z16;
draw z11--z18;
draw z13--z16--z18 ;
draw z13--z18 dashed evenly;

draw z21--z27 dashed evenly withcolor red;
draw z22--z28 dashed evenly withcolor red;
draw z23--z25 dashed evenly withcolor red;
draw z24--z26 dashed evenly withcolor red;
endfig;


beginfig(16);
z0=(0,a);
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

z20 = 0.5[z11,z17]; %origin 

dotlabel.top(btex $1$ etex,z11);
dotlabel.top(btex $2$ etex,z13);%3
dotlabel.bot(btex $3$ etex,z16);%2
dotlabel.bot(btex $4$ etex,z18);
dotlabel.top(btex $4$ etex,z12);
dotlabel.top(btex $3$ etex,z14);%2
dotlabel.bot(btex $2$ etex,z15);%3
dotlabel.bot(btex $1$ etex,z17);

%cube : 
draw z11--z12--z13--z14-- cycle;
draw z15--z16--z17;
draw z15--z18--z17 dashed evenly;

draw z[14]--z[14+4] dashed evenly;
for i=11 upto 13:
	draw z[i]--z[i+4];
endfor;

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

z60 = 0.5[z11,z12];
z61 = 0.5[z12,z13];
z62 = 0.5[z13,z14];
z63 = 0.5[z14,z11];
z64 = 0.5[z15,z16];
z65 = 0.5[z16,z17];
z66 = 0.5[z17,z18];
z67 = 0.5[z18,z15];
z68 = 0.5[z11,z15];
z69 = 0.5[z12,z16];
z70 = 0.5[z13,z17];
z71 = 0.5[z14,z18];

for i = 0 upto 11:
	z[80 + i]  = 1.2[z20, z[60 + i] ];
endfor ;
%dotlabel("",z11);
%dotlabel("",z13);
%dotlabel("",z16);
%dotlabel("",z18);
%
%for i = 31 upto 36:
%	dotlabel("",z[i]);
%endfor;

pickup pencircle scaled 0.8pt;
%tetrahedon 
%draw z11--z13 ;
%draw z11--z16;
%draw z11--z18;
%draw z13--z16--z18 ;
%draw z13--z18 dashed evenly;

pickup pencircle scaled 1pt;
draw z86--z80 dashed evenly withcolor red;
draw z87--z81 dashed evenly withcolor red;
draw z84--z82 dashed evenly withcolor red;
draw z85--z83 dashed evenly withcolor red;
draw z89--z91 dashed evenly withcolor red;
draw z88--z90 dashed evenly withcolor red;
%draw z53--z54 dashed evenly withcolor red;

pickup pencircle scaled 0.5pt;
for i = 0 upto 11:
	dotlabel("",z[60 + i] );
endfor ;
endfig;

numeric a;
a= 8pt;
numeric c, d;
c = 10; %angle of rotation of figure around z axis
d = -20; %angle of rotation of view point around y axis

beginfig(21);
z0=(8a,8a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0,cosd(d));
z10 = z0 + 8z1;
z11 = z0 -  8z1;
z12 = z0 + 8z2;
z13 = z0 -  8z2;
z14 = z0 + 8z3;
z15 = z0 -  8z3;

z20 = (z10 + z12 + z14)/3;
z21 = (z11 + z12 + z14)/3;
z22 = (z11 + z13 + z14)/3;
z23 = (z10 + z13 + z14)/3;
z24 = (z10 + z12 + z15)/3;
z25 =  (z11 + z12 + z15)/3;
z26 = (z11 + z13 + z15)/3;
z27 =  (z10 + z13 + z15)/3;

draw z13--z10--z12 dashed evenly;
draw z12--z11--z13 ;
draw z14--z10--z15 dashed evenly;
draw.z15--z11--z14;
draw z14--z12--z15--z13--cycle;

pickup pencircle scaled 1pt;
draw z20--z21--z22--z23-- cycle withcolor red;
draw z24--z25--z26 withcolor red;
draw z26--z27-- z24 withcolor red dashed evenly;
for i=0 upto 2:
	draw z[20 + i]--z[24+i] withcolor red;
endfor
for i=3 upto 3:
	draw z[20 + i]--z[24+i] withcolor red dashed evenly;
endfor
endfig;

numeric a;
a = 10pt;

beginfig(22);
z0=(0,a);
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

%dotlabel.top(btex $1$ etex,z11);
%dotlabel.top(btex $2$ etex,z13);%3
%dotlabel.bot(btex $3$ etex,z16);%4
%dotlabel.bot(btex $4$ etex,z18);%2
%dotlabel.top(btex $4$ etex,z12);%2
%dotlabel.top(btex $3$ etex,z14);%4
%dotlabel.bot(btex $2$ etex,z15);%3
%dotlabel.bot(btex $1$ etex,z17);

%cube : 
draw z11--z12--z13--z14-- cycle;
draw z15--z16--z17;
draw z15--z18--z17 dashed evenly;

draw z[14]--z[14+4] dashed evenly;
for i=11 upto 13:
	draw z[i]--z[i+4];
endfor;

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

pickup pencircle scaled 0.8pt;
draw z31--z34--z35--z33-- cycle  withcolor red;
draw z35--z36--z31 dashed evenly withcolor red;
draw z31--z32--z35 withcolor red;
draw z34--z32--z33  withcolor red;
draw z33--z36--z34  dashed evenly withcolor red;
endfig;


%numeric c, d;
%c = -191; %angle of rotation of figure around z axis
%d = 13; %angle of rotation of view point around y axis
numeric c, d;
c = 20; %angle of rotation of figure around z axis
d = 20; %angle of rotation of view point around y axis

numeric f, g, k;
f = 2.1 ;% scale factor
g = (sqrt(5) +1 )*f /2 ; %g = f * \tau
k = f + g;

beginfig(20);
z0= (5a , 5a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

z71 = (z31+z32)/2 + 2z1  ;
z72 = (z33+z34)/2 - 2 z1  ;
z73 = (z41+z42)/2 + z2;
z74 = (z43+z44)/2 - z2;
z75 = (z51+z52)/2 + z3;
z76 = (z53+z54)/2 - z3;
%Show the names of vertices:
%dotlabel.top(btex $11$ etex,z11);
%dotlabel.top(btex $12$ etex,z12);
%dotlabel.top(btex $13$ etex,z13);
%dotlabel.top(btex $14$ etex,z14);
%dotlabel.bot(btex $21$ etex,z21);
%dotlabel.bot(btex $22$ etex,z22);
%dotlabel.bot(btex $23$ etex,z23);
%dotlabel.bot(btex $24$ etex,z24);
%dotlabel.top(btex $31$ etex,z31);
%dotlabel.top(btex $32$ etex,z32);
%dotlabel.top(btex $33$ etex,z33);
%dotlabel.top(btex $34$ etex,z34);
%dotlabel.rt(btex $41$ etex,z41);
%dotlabel.rt(btex $42$ etex,z42);
%dotlabel.lft(btex $43$ etex,z43);
%dotlabel.lft(btex $44$ etex,z44);
%dotlabel.top(btex $51$ etex,z51);
%dotlabel.top(btex $52$ etex,z52);
%dotlabel.top(btex $53$ etex,z53);
%dotlabel.top(btex $54$ etex,z54);
%label.llft(btex $x$ etex,z71);
%label.rt(btex $y$ etex,z74);
%label.top(btex $z$ etex,z75);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z51--z11--z31--z32--z12-- cycle;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

%drawarrow z72--z71 ;
%drawarrow z73--z74  ;
%drawarrow z76--z75 ;
pickup pencircle scaled 1pt;
draw z11--z12--z13--z14-- cycle;
draw z21--z22--z23;
draw z23--z24--z21 dashed evenly;
for i = 1 upto 3:
	draw z[10+i]-- z[20+i];
endfor 
for i = 4 upto 4:
	draw z[10+i]-- z[20+i]  dashed evenly;
endfor 

endfig;

numeric c, d;
c = 20; %angle of rotation of figure around z axis
d = 20; %angle of rotation of view point around y axis

beginfig(19);
% we use the points of figure 20
z0= (5a , 5a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

%%Show the names of vertices:
%dotlabel.top(btex $11$ etex,z11);
%dotlabel.top(btex $12$ etex,z12);
%dotlabel.top(btex $13$ etex,z13);
%dotlabel.top(btex $14$ etex,z14);
%dotlabel.bot(btex $21$ etex,z21);
%dotlabel.bot(btex $22$ etex,z22);
%dotlabel.bot(btex $23$ etex,z23);
%dotlabel.bot(btex $24$ etex,z24);
%dotlabel.top(btex $31$ etex,z31);
%dotlabel.top(btex $32$ etex,z32);
%dotlabel.top(btex $33$ etex,z33);
%dotlabel.top(btex $34$ etex,z34);
%dotlabel.rt(btex $41$ etex,z41);
%dotlabel.rt(btex $42$ etex,z42);
%dotlabel.lft(btex $43$ etex,z43);
%dotlabel.lft(btex $44$ etex,z44);
%dotlabel.top(btex $51$ etex,z51);
%dotlabel.top(btex $52$ etex,z52);
%dotlabel.top(btex $53$ etex,z53);
%dotlabel.top(btex $54$ etex,z54);


%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor

draw z51--z11--z31--z32--z12-- cycle;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

z101 = (z11 + z51 + z52+ z14 + z41) /5;
z102 = (z11 + z31 + z32 + z12 + z51)/5;
z103 = (z12 + z43 + z13 + z52 + z51)/5;
z104 = (z14 + z52 + z13 + z34 + z33)/5;
z105 = (z14 + z33 + z24 + z42 + z41 )/5;
z106 = (z11 + z41 + z42 + z21 + z31 )/5;
z107 = (z32 + z31 + z21 + z53 + z22 )/5;
z108 = (z32 + z22 + z44 + z43 + z34 )/5;
z109 = (z43 + z44 + z23+ z34 + z13 )/5;
z110 = (z23 + z54 + z24+ z33 + z34 )/5;
z111 = (z21 + z42 + z24+ z54 + z53 )/5;
z112 = (z22 + z53 + z54+ z23 + z44 )/5;

pickup pencircle scaled 1pt;
for i = 2 upto 3:
	draw z101--z[100 + i] withcolor red;
endfor
for i = 6 upto 6:
	draw z101--z[100 + i] withcolor red;
endfor
for i = 2 upto 4:
	draw z112--z[105 + i] withcolor red;
endfor
for i = 6 upto 6:
	draw z112--z[105 + i] withcolor red;
endfor

for i = 2 upto 2:
	draw z[100 + i]--z[101 + i] withcolor red;
endfor
draw z106--z102 withcolor red;
for i = 2 upto 3:
	draw z[105 + i]--z[106 + i] withcolor red;
endfor
draw z111--z107 withcolor red;

for i = 1 upto 2:
	draw z[106 + i]--z[101 + i]--z[107 + i] withcolor red;
endfor
draw z[111]--z[106]--z[107] withcolor red;

%draw z106--z102;
pickup pencircle scaled 0.5pt;
for i = 4 upto 5:
	draw z101--z[100 + i] dashed evenly  withcolor red;
endfor
for i = 5 upto 5:
	draw z112--z[105 + i] dashed evenly withcolor red;
endfor
for i = 3 upto 5:
	draw z[100 + i]--z[101 + i] dashed evenly withcolor red;
endfor
for i = 4 upto 5:
	draw z[105 + i]--z[106 + i] dashed evenly withcolor red;
endfor
for i = 3 upto 4:
	draw z[106 + i]--z[101 + i]--z[107 + i]  dashed evenly withcolor red;
endfor

endfig;


numeric a;
a= 12pt;
%numeric c, d;
%c = 191; %angle of rotation of figure around z axis
%d = 13; %angle of rotation of view point around y axis
numeric c, d;
c = 20; %angle of rotation of figure around z axis
d = 15; %angle of rotation of view point around y axis


beginfig(18);
% we use the points of figure 20, 19
z0= (4a , 3.5a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

%%Show the names of vertices:
%dotlabel.top(btex $11$ etex,z11);
%dotlabel.top(btex $12$ etex,z12);
%dotlabel.top(btex $13$ etex,z13);
%dotlabel.top(btex $14$ etex,z14);
%dotlabel.bot(btex $21$ etex,z21);
%dotlabel.bot(btex $22$ etex,z22);
%dotlabel.bot(btex $23$ etex,z23);
%dotlabel.bot(btex $24$ etex,z24);
%dotlabel.top(btex $31$ etex,z31);
%dotlabel.top(btex $32$ etex,z32);
%dotlabel.top(btex $33$ etex,z33);
%dotlabel.top(btex $34$ etex,z34);
%dotlabel.rt(btex $41$ etex,z41);
%dotlabel.rt(btex $42$ etex,z42);
%dotlabel.lft(btex $43$ etex,z43);
%dotlabel.lft(btex $44$ etex,z44);
%dotlabel.top(btex $51$ etex,z51);
%dotlabel.top(btex $52$ etex,z52);
%dotlabel.top(btex $53$ etex,z53);
%dotlabel.top(btex $54$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
%pickup pencircle scaled 1pt;
%
%draw z51--z11--z31--z32--z12-- cycle;
%draw z31--z21--z53--z22--z32;
%draw z11--z41--z42--z21;
%draw z12--z43--z44--z22;
%draw z41--z14--z52;
%draw z52--z13--z43;
%draw z51--z52;
%draw z42--z24--z54 dashed evenly;
%draw z44--z23--z54 dashed evenly;
%draw z13--z34--z33--z14 dashed evenly;
%draw z24--z33 dashed evenly;
%draw z23--z34 dashed evenly;
%draw z53--z54 dashed evenly;

z101 = (z11 + z51 + z52+ z14 + z41) /5;
z102 = (z11 + z31 + z32 + z12 + z51)/5;
z103 = (z12 + z43 + z13 + z52 + z51)/5;
z104 = (z14 + z52 + z13 + z34 + z33)/5;
z105 = (z14 + z33 + z24 + z42 + z41 )/5;
z106 = (z11 + z41 + z42 + z21 + z31 )/5;
z107 = (z32 + z31 + z21 + z53 + z22 )/5;
z108 = (z32 + z22 + z44 + z43 + z34 )/5;
z109 = (z43 + z44 + z23+ z34 + z13 )/5;
z110 = (z23 + z54 + z24+ z33 + z34 )/5;
z111 = (z21 + z42 + z24+ z54 + z53 )/5;
z112 = (z22 + z53 + z54+ z23 + z44 )/5;

%dotlabel.top(btex $1$ etex,z101);
%dotlabel.top(btex $2$ etex,z102);
%dotlabel.top(btex $3$ etex,z103);
%dotlabel.top(btex $4$ etex,z104);
%dotlabel.top(btex $5$ etex,z105);
%dotlabel.top(btex $6$ etex,z106);
%dotlabel.bot(btex $7$ etex,z107);
%dotlabel.top(btex $8$ etex,z108);
%dotlabel.bot(btex $9$ etex,z109);
%dotlabel.bot(btex $10$ etex,z110);
%dotlabel.bot(btex $11$ etex,z111);
%dotlabel.bot(btex $12$ etex,z112);

z121 =( z101 + z102 +z103)/3 ;
z122 =( z101 + z102 +z106)/3 ;
z123 =( z106 + z102 +z107)/3 ;
z124 =( z102 +z107 + z108)/3 ;
z125 =(z102 + z108 + z103 )/3 ;
z126 =( z103 +z108 + z109 )/3 ;
z127 =( z103 +z109 + z104 )/3 ;
z128 =( z101 +z103 + z104 )/3 ;
z129 =( z101 +z104 + z105 )/3 ;
z130 =( z101 +z105 + z106 )/3 ;
z131 =( z106 +z107 + z111 )/3 ;
z132 =( z112 +z107 + z111 )/3 ;
z133 =( z107 + z108 + z112 )/3 ;
z134 =(  z112+ z108 + z109 )/3 ;
z135 =(  z112+ z110 + z109 )/3 ;
z136 =(  z104 + z109+ z110 )/3 ;
z137 =(  z104+ z110 + z105 )/3 ;
z138 =(  z105+ z110 + z111 )/3 ;
z139 =(  z105+ z106 + z111 )/3 ;
z140 =(  z110 + z111+ z112 )/3 ;

%dotlabel.top(btex $1$ etex,z121);
%dotlabel.top(btex $2$ etex,z122);
%dotlabel.top(btex $3$ etex,z123);
%dotlabel.top(btex $4$ etex,z124);
%dotlabel.top(btex $5$ etex,z125);
%dotlabel.top(btex $6$ etex,z126);
%dotlabel.top(btex $7$ etex,z127);
%dotlabel.top(btex $8$ etex,z128);
%dotlabel.top(btex $9$ etex,z129);
%dotlabel.top(btex $10$ etex,z130);
%dotlabel.bot(btex $11$ etex,z131);
%dotlabel.bot(btex $12$ etex,z132);
%dotlabel.bot(btex $13$ etex,z133);
%dotlabel.bot(btex $14$ etex,z134);
%dotlabel.bot(btex $15$ etex,z135);
%dotlabel.bot(btex $16$ etex,z136);
%dotlabel.bot(btex $17$ etex,z137);
%dotlabel.bot(btex $18$ etex,z138);
%dotlabel.bot(btex $19$ etex,z139);
%dotlabel.bot(btex $20$ etex,z140);

for i = 2 upto 3:
	draw z101--z[100 + i];
endfor
for i = 4 upto 5:
	draw z101--z[100 + i] dashed evenly ;
endfor
for i = 6 upto 6:
	draw z101--z[100 + i];
endfor
for i = 2 upto 4:
	draw z112--z[105 + i];
endfor
for i = 5 upto 5:
	draw z112--z[105 + i] dashed evenly;
endfor
for i = 6 upto 6:
	draw z112--z[105 + i];
endfor

for i = 2 upto 2:
	draw z[100 + i]--z[101 + i];
endfor
for i = 3 upto 5:
	draw z[100 + i]--z[101 + i] dashed evenly;
endfor
draw z106--z102;
for i = 2 upto 3:
	draw z[105 + i]--z[106 + i];
endfor
for i = 4 upto 5:
	draw z[105 + i]--z[106 + i] dashed evenly;
endfor
draw z111--z107;

for i = 1 upto 2:
	draw z[106 + i]--z[101 + i]--z[107 + i];
endfor
for i = 3 upto 4:
	draw z[106 + i]--z[101 + i]--z[107 + i]  dashed evenly;
endfor
draw z[111]--z[106]--z[107];

pickup pencircle scaled 1pt;
draw z121--z122--z123--z124--z125-- cycle withcolor red;
draw z125--z126--z127--z128--z121 withcolor red;
draw z128--z129--z130--z122 withcolor red;
draw z130--z139--z131--z123 withcolor red;
draw z131--z132--z133--z124 withcolor red;
draw z133--z134--z126  withcolor red;

pickup pencircle scaled 0.5pt;
draw z127--z136--z137--z129 dashed evenly withcolor red;
draw z137--z138--z139 dashed evenly withcolor red;
draw z136--z135--z140--z138 dashed evenly withcolor red;
draw z140--z132 dashed evenly withcolor red;
draw z134--z135 dashed evenly withcolor red;
endfig;

numeric a;
a= 10pt;%reset numeric a before figure 18

%beginfig(21);
%z0= (5a , 5a);
%z1 = a*(sind(c), -cosd(c)*sind(d));
%z2 = a*(cosd(c), sind(c)*sind(d));
%z3 = a*(0, cosd(d)); 
%
%z11 = z0 + g* z1+ g* z2 +g* z3 ;
%z12 = z0 + g* z1- g* z2 +g* z3 ;
%z13 = z0 - g* z1- g* z2 +g* z3 ;
%z14 = z0 - g* z1 + g* z2 +g* z3 ;
%z21 = z0 + g* z1+ g* z2 -g* z3 ;
%z22 = z0 + g* z1- g* z2 -g* z3 ;
%z23 = z0 - g* z1- g* z2 -g* z3 ;
%z24 = z0 - g* z1 + g* z2 -g* z3 ;
%
%z31= z0 + k* z1+ f * z2 ;
%z32= z0 + k* z1 - f * z2;
%z33= z0 - k* z1+ f * z2 ;
%z34= z0 - k* z1 - f * z2;
%z41= z0 + k* z2+ f * z3 ;
%z42= z0 + k* z2 - f * z3;
%z43= z0 - k* z2+ f * z3 ;
%z44= z0 - k* z2 - f * z3;
%z51= z0 + k* z3+ f * z1 ;
%z52= z0 + k* z3 - f * z1;
%z53= z0 - k* z3+ f * z1 ;
%z54= z0 - k* z3 - f * z1;
%z61 = (z31+z32)/2 + z1  ;
%z62 = (z33+z34)/2- z1  ;
%z63 = (z41+z42)/2 + z2;
%z64 = (z43+z44)/2 -z2;
%z65 = (z51+z52)/2 +z3;
%z66 = (z53+z54)/2 -z3;
%
%%Show the names of vertices:
%%dotlabel.top(btex $11$ etex,z11);
%%dotlabel.top(btex $12$ etex,z12);
%%dotlabel.top(btex $13$ etex,z13);
%%dotlabel.top(btex $14$ etex,z14);
%%dotlabel.bot(btex $21$ etex,z21);
%%dotlabel.bot(btex $22$ etex,z22);
%%dotlabel.bot(btex $23$ etex,z23);
%%dotlabel.bot(btex $24$ etex,z24);
%%dotlabel.top(btex $31$ etex,z31);
%%dotlabel.top(btex $32$ etex,z32);
%%dotlabel.top(btex $33$ etex,z33);
%%dotlabel.top(btex $34$ etex,z34);
%%dotlabel.rt(btex $41$ etex,z41);
%%dotlabel.rt(btex $42$ etex,z42);
%%dotlabel.lft(btex $43$ etex,z43);
%%dotlabel.lft(btex $44$ etex,z44);
%%dotlabel.top(btex $51$ etex,z51);
%%dotlabel.top(btex $52$ etex,z52);
%%dotlabel.top(btex $53$ etex,z53);
%%dotlabel.top(btex $54$ etex,z54);
%
%%for i = 3 upto 5:
%%	draw z[10i + 1]--z[10i + 2];
%%	draw z[10i + 3]--z[10i + 4];
%%endfor
%draw z51--z11--z31--z32--z12-- cycle;
%draw z31--z21--z53--z22--z32;
%draw z11--z41--z42--z21;
%draw z12--z43--z44--z22;
%draw z41--z14--z52;
%draw z52--z13--z43;
%draw z51--z52;
%draw z42--z24--z54 dashed evenly;
%draw z44--z23--z54 dashed evenly;
%draw z13--z34--z33--z14 dashed evenly;
%draw z24--z33 dashed evenly;
%draw z23--z34 dashed evenly;
%draw z53--z54 dashed evenly;
%
%pickup pencircle scaled 1pt;
%draw z11--z12--z13--z14-- cycle;
%draw z21--z22--z23;
%draw z23--z24--z21 dashed evenly;
%for i = 1 upto 3:
%	draw z[10+i]-- z[20+i];
%endfor 
%for i = 4 upto 4:
%	draw z[10+i]-- z[20+i]  dashed evenly;
%endfor 
%
%draw z61--z62 dashed evenly withcolor red ;
%draw z63--z64 dashed evenly withcolor red ;
%draw z65--z66 dashed evenly withcolor red ;
%endfig;
%
%numeric c, d;
%c = 187; %angle of rotation of figure around z axis
%d = 12; %angle of rotation of view point around y axis
%

%beginfig(22);
%z0= (5a , 5a);
%z1 = a*(sind(c), -cosd(c)*sind(d));
%z2 = a*(cosd(c), sind(c)*sind(d));
%z3 = a*(0, cosd(d)); 
%
%z11 = z0 + g* z1+ g* z2 +g* z3 ;
%z12 = z0 + g* z1- g* z2 +g* z3 ;
%z13 = z0 - g* z1- g* z2 +g* z3 ;
%z14 = z0 - g* z1 + g* z2 +g* z3 ;
%z21 = z0 + g* z1+ g* z2 -g* z3 ;
%z22 = z0 + g* z1- g* z2 -g* z3 ;
%z23 = z0 - g* z1- g* z2 -g* z3 ;
%z24 = z0 - g* z1 + g* z2 -g* z3 ;
%
%z31= z0 + k* z1+ f * z2 ;
%z32= z0 + k* z1 - f * z2;
%z33= z0 - k* z1+ f * z2 ;
%z34= z0 - k* z1 - f * z2;
%z41= z0 + k* z2+ f * z3 ;
%z42= z0 + k* z2 - f * z3;
%z43= z0 - k* z2+ f * z3 ;
%z44= z0 - k* z2 - f * z3;
%z51= z0 + k* z3+ f * z1 ;
%z52= z0 + k* z3 - f * z1;
%z53= z0 - k* z3+ f * z1 ;
%z54= z0 - k* z3 - f * z1;
%
%z61 = z11+ z1+  z2 + z3;
%z62 = z23- z1-  z2 - z3;
%z63 = z12 + z1 -  z2 + z3;
%z64 = z24 - z1 + z2 - z3;
%z65 = z13 -  z1 - z2 + z3;
%z66 = z21 + z1 + z2 - z3;
%z67 = z14 - z1 + z2 + z3;
%z68 = z22 + z1 - z2 - z3;
%%Show the names of vertices:
%dotlabel.top(btex $11$ etex,z11);
%dotlabel.top(btex $12$ etex,z12);
%dotlabel.top(btex $13$ etex,z13);
%dotlabel.top(btex $14$ etex,z14);
%dotlabel.bot(btex $21$ etex,z21);
%dotlabel.bot(btex $22$ etex,z22);
%dotlabel.bot(btex $23$ etex,z23);
%dotlabel.bot(btex $24$ etex,z24);
%dotlabel.top(btex $31$ etex,z31);
%dotlabel.top(btex $32$ etex,z32);
%dotlabel.top(btex $33$ etex,z33);
%dotlabel.top(btex $34$ etex,z34);
%dotlabel.rt(btex $41$ etex,z41);
%dotlabel.rt(btex $42$ etex,z42);
%dotlabel.lft(btex $43$ etex,z43);
%dotlabel.lft(btex $44$ etex,z44);
%dotlabel.top(btex $51$ etex,z51);
%dotlabel.top(btex $52$ etex,z52);
%dotlabel.top(btex $53$ etex,z53);
%dotlabel.top(btex $54$ etex,z54);
%
%
%%for i = 3 upto 5:
%%	draw z[10i + 1]--z[10i + 2];
%%	draw z[10i + 3]--z[10i + 4];
%%endfor
%draw z51--z11--z31--z32--z12-- cycle;
%draw z31--z21--z53--z22--z32;
%draw z11--z41--z42--z21;
%draw z12--z43--z44--z22;
%draw z41--z14--z52;
%draw z52--z13--z43;
%draw z51--z52;
%draw z42--z24--z54 dashed evenly;
%draw z44--z23--z54 dashed evenly;
%draw z13--z34--z33--z14 dashed evenly;
%draw z24--z33 dashed evenly;
%draw z23--z34 dashed evenly;
%draw z53--z54 dashed evenly;
%
%pickup pencircle scaled 1pt;
%draw z11--z12--z13--z14-- cycle;
%draw z21--z22--z23;
%draw z23--z24--z21 dashed evenly;
%for i = 1 upto 3:
%	draw z[10+i]-- z[20+i];
%endfor 
%for i = 4 upto 4:
%	draw z[10+i]-- z[20+i]  dashed evenly;
%endfor 
%
%for i = 1  step 2 until 7:
%	draw z[60 + i]--z[61 + i] dashed evenly withcolor red;
%endfor
%endfig;
%
%numeric a, b;
%a=10pt;
%
%beginfig(23)
%b=5a;
%z0=(5a,5a);
%for i = 1 upto 5 :
%	z[i]=z0 +b*(cosd(90 +72(i-1)), sind(90+72(i-1)));
%endfor
%
%for i = 1 upto 21 :
%	z[100+ i]=z0 +b*(cosd(90 +18(i-1)), sind(90+18(i-1)));
%endfor
%
%draw z1--z2--z3--z4--z5-- cycle withcolor red; 
%draw z1--z3--z5--z2--z4-- cycle;
%
%for i = 0 upto 4:
%	drawarrow 
%		for j = 1 upto 4:
%			z[100 +4i + j]..
%		endfor
%	z[100 +4i + 5];
%endfor
%		
%dotlabel(btex $ $ etex,z0);
%dotlabel.top(btex $1$ etex,z1);
%dotlabel.lft(btex $2$ etex,z2);
%dotlabel.bot(btex $3$ etex,z3);
%dotlabel.bot(btex $4$ etex,z4);
%dotlabel.rt(btex $5$ etex,z5);
%
%pickup pencircle scaled 1.5pt;
%draw z2--z5;
%draw z1--z3;
%endfig;


numeric a;
a = 8pt; %In figure 23 we use miniature of figure 22
%c = 192; %angle of rotation of figure around z axis
%d = 25; %angle of rotation of view point around y axis
numeric c, d;
c = 190; %angle of rotation of figure around z axis
d = -20; %angle of rotation of view point around y axis

beginfig(23);
z0= (5a , 5a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

z61 = z11+ z1+  z2 + z3;
z62 = z23- z1-  z2 - z3;
z63 = z12 + z1 -  z2 + z3;
z64 = z24 - z1 + z2 - z3;
z65 = z13 -  z1 - z2 + z3;
z66 = z21 + z1 + z2 - z3;
z67 = z14 - z1 + z2 + z3;
z68 = z22 + z1 - z2 - z3;

for i = 1 upto 2:
	for j = 1 upto 5:
		for k=1 upto 4:
			z[100i + 10j+ k] = (12a* i, 0) +z[10j + k];
		endfor
	endfor
endfor 

%Show the names of vertices:
%dotlabel.top(btex $11$ etex,z11);
%dotlabel.top(btex $12$ etex,z12);
%dotlabel.top(btex $13$ etex,z13);
%dotlabel.top(btex $14$ etex,z14);
%dotlabel.bot(btex $21$ etex,z21);
%dotlabel.bot(btex $22$ etex,z22);
%dotlabel.bot(btex $23$ etex,z23);
%dotlabel.bot(btex $24$ etex,z24);
%dotlabel.top(btex $31$ etex,z31);
%dotlabel.top(btex $32$ etex,z32);
%dotlabel.top(btex $33$ etex,z33);
%dotlabel.top(btex $34$ etex,z34);
%dotlabel.rt(btex $41$ etex,z41);
%dotlabel.rt(btex $42$ etex,z42);
%dotlabel.lft(btex $43$ etex,z43);
%dotlabel.lft(btex $44$ etex,z44);
%dotlabel.top(btex $51$ etex,z51);
%dotlabel.top(btex $52$ etex,z52);
%dotlabel.top(btex $53$ etex,z53);
%dotlabel.top(btex $54$ etex,z54);

%dotlabel.top(btex $11$ etex,z111);
%dotlabel.top(btex $12$ etex,z112);
%dotlabel.top(btex $13$ etex,z113);
%dotlabel.top(btex $14$ etex,z114);
%dotlabel.bot(btex $21$ etex,z121);
%dotlabel.bot(btex $22$ etex,z122);
%dotlabel.bot(btex $23$ etex,z123);
%dotlabel.bot(btex $24$ etex,z124);
%dotlabel.top(btex $31$ etex,z131);
%dotlabel.top(btex $32$ etex,z132);
%dotlabel.top(btex $33$ etex,z133);
%dotlabel.top(btex $34$ etex,z134);
%dotlabel.rt(btex $41$ etex,z141);
%dotlabel.rt(btex $42$ etex,z142);
%dotlabel.lft(btex $43$ etex,z143);
%dotlabel.lft(btex $44$ etex,z144);
%dotlabel.top(btex $51$ etex,z151);
%dotlabel.top(btex $52$ etex,z152);
%dotlabel.top(btex $53$ etex,z153);
%dotlabel.top(btex $54$ etex,z154);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
for i = 0 upto 1:
   draw z[100i +51]--z[100i +11]--z[100i +31]--z[100i +32]--z[100i +12]-- cycle withcolor red;
   draw z[100i +31]--z[100i +21]--z[100i +53]--z[100i +22]--z[100i +32];
   draw z[100i +11]--z[100i +41]--z[100i +42]--z[100i +21];
   draw z[100i +12]--z[100i +43]--z[100i +44]--z[100i +22];
   draw z[100i +41]--z[100i +14]--z[100i +52];
   draw z[100i +52]--z[100i +13]--z[100i +43];
   draw z[100i +51]--z[100i +52];
   draw z[100i +42]--z[100i +24]--z[100i +54] dashed evenly;
   draw z[100i +44]--z[100i +23]--z[100i +54] dashed evenly;
   draw z[100i +13]--z[100i +34]--z[100i +33]--z[100i +14] dashed evenly;
   draw z[100i +24]--z[100i +33] dashed evenly;
   draw z[100i +23]--z[100i +34] dashed evenly;
   draw z[100i +53]--z[100i +54] dashed evenly;
endfor

pickup pencircle scaled 1pt;

draw z11--z12--z13--z14-- cycle;
draw z21--z22--z23;
draw z23--z24--z21 dashed evenly;
for i = 1 upto 3:
	draw z[10+i]-- z[20+i];
endfor 
for i = 4 upto 4:
	draw z[10+i]-- z[20+i]  dashed evenly;
endfor 

draw z151--z131--z122--z143-- cycle;
draw z151--z114--z142--z131;
draw z154--z134--z143 dashed evenly;
draw z114--z134 dashed evenly;
draw z142--z154--z122;
endfig;


beginfig(24);
z0= (5a , 5a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

z61 = z11+ z1+  z2 + z3;
z62 = z23- z1-  z2 - z3;
z63 = z12 + z1 -  z2 + z3;
z64 = z24 - z1 + z2 - z3;
z65 = z13 -  z1 - z2 + z3;
z66 = z21 + z1 + z2 - z3;
z67 = z14 - z1 + z2 + z3;
z68 = z22 + z1 - z2 - z3;

for i = 1 upto 3:
	for j = 1 upto 5:
		for k=1 upto 4:
			z[100i + 10j+ k] = (12a* i, 0) +z[10j + k];
		endfor
	endfor
endfor 

%%Show the names of vertices:
%dotlabel.top(btex $11$ etex,z11);
%dotlabel.top(btex $12$ etex,z12);
%dotlabel.top(btex $13$ etex,z13);
%dotlabel.top(btex $14$ etex,z14);
%dotlabel.bot(btex $21$ etex,z21);
%dotlabel.bot(btex $22$ etex,z22);
%dotlabel.bot(btex $23$ etex,z23);
%dotlabel.bot(btex $24$ etex,z24);
%dotlabel.top(btex $31$ etex,z31);
%dotlabel.top(btex $32$ etex,z32);
%dotlabel.top(btex $33$ etex,z33);
%dotlabel.top(btex $34$ etex,z34);
%dotlabel.rt(btex $41$ etex,z41);
%dotlabel.rt(btex $42$ etex,z42);
%dotlabel.lft(btex $43$ etex,z43);
%dotlabel.lft(btex $44$ etex,z44);
%dotlabel.top(btex $51$ etex,z51);
%dotlabel.top(btex $52$ etex,z52);
%dotlabel.top(btex $53$ etex,z53);
%dotlabel.top(btex $54$ etex,z54);

%dotlabel.top(btex $11$ etex,z111);
%dotlabel.top(btex $12$ etex,z112);
%dotlabel.top(btex $13$ etex,z113);
%dotlabel.top(btex $14$ etex,z114);
%dotlabel.bot(btex $21$ etex,z121);
%dotlabel.bot(btex $22$ etex,z122);
%dotlabel.bot(btex $23$ etex,z123);
%dotlabel.bot(btex $24$ etex,z124);
%dotlabel.top(btex $31$ etex,z131);
%dotlabel.top(btex $32$ etex,z132);
%dotlabel.top(btex $33$ etex,z133);
%dotlabel.top(btex $34$ etex,z134);
%dotlabel.rt(btex $41$ etex,z141);
%dotlabel.rt(btex $42$ etex,z142);
%dotlabel.lft(btex $43$ etex,z143);
%dotlabel.lft(btex $44$ etex,z144);
%dotlabel.top(btex $51$ etex,z151);
%dotlabel.top(btex $52$ etex,z152);
%dotlabel.top(btex $53$ etex,z153);
%dotlabel.top(btex $54$ etex,z154);

%dotlabel.top(btex $11$ etex,z211);
%dotlabel.top(btex $12$ etex,z212);
%dotlabel.top(btex $13$ etex,z213);
%dotlabel.top(btex $14$ etex,z214);
%dotlabel.bot(btex $21$ etex,z221);
%dotlabel.bot(btex $22$ etex,z222);
%dotlabel.bot(btex $23$ etex,z223);
%dotlabel.bot(btex $24$ etex,z224);
%dotlabel.top(btex $31$ etex,z231);
%dotlabel.top(btex $32$ etex,z232);
%dotlabel.top(btex $33$ etex,z233);
%dotlabel.top(btex $34$ etex,z234);
%dotlabel.rt(btex $41$ etex,z241);
%dotlabel.rt(btex $42$ etex,z242);
%dotlabel.lft(btex $43$ etex,z243);
%dotlabel.lft(btex $44$ etex,z244);
%dotlabel.top(btex $51$ etex,z251);
%dotlabel.top(btex $52$ etex,z252);
%dotlabel.top(btex $53$ etex,z253);
%dotlabel.top(btex $54$ etex,z254);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
for i = 0 upto 2:
   draw z[100i +51]--z[100i +11]--z[100i +31]--z[100i +32]--z[100i +12]-- cycle withcolor red;
   draw z[100i +31]--z[100i +21]--z[100i +53]--z[100i +22]--z[100i +32];
   draw z[100i +11]--z[100i +41]--z[100i +42]--z[100i +21];
   draw z[100i +12]--z[100i +43]--z[100i +44]--z[100i +22];
   draw z[100i +41]--z[100i +14]--z[100i +52];
   draw z[100i +52]--z[100i +13]--z[100i +43];
   draw z[100i +51]--z[100i +52];
   draw z[100i +42]--z[100i +24]--z[100i +54] dashed evenly;
   draw z[100i +44]--z[100i +23]--z[100i +54] dashed evenly;
   draw z[100i +13]--z[100i +34]--z[100i +33]--z[100i +14] dashed evenly;
   draw z[100i +24]--z[100i +33] dashed evenly;
   draw z[100i +23]--z[100i +34] dashed evenly;
   draw z[100i +53]--z[100i +54] dashed evenly;
endfor

pickup pencircle scaled 1pt;
draw z11--z32--z43--z52-- cycle;
draw z11--z42--z53--z32;
draw z53--z23--z43;

draw z131--z112--z152--z141-- cycle;
draw z131--z153--z144--z112;
draw z144--z134--z152;

draw z232--z251--z213--z244-- cycle;
draw z251--z241--z221--z232;
draw z221--z254--z244;
endfig;

numeric a;
a = 10pt;

beginfig(25);
z0= (5a , 6a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z11);
dotlabel.lrt(btex $5$ etex,z12);
dotlabel.top(btex $4$ etex,z13);
dotlabel.top(btex $5$ etex,z14);
dotlabel.bot(btex $5$ etex,z21);
dotlabel.bot(btex $1$ etex,z22);
dotlabel.bot(btex $5$ etex,z23);
dotlabel.urt(btex $3$ etex,z24);%
dotlabel.lrt(btex $3$ etex,z31);%
dotlabel.rt(btex $4$ etex,z32);
dotlabel.top(btex $2$ etex,z33);
dotlabel.rt(btex $1$ etex,z34);
dotlabel.lft(btex $4$ etex,z41);
dotlabel.lft(btex $1$ etex,z42);
dotlabel.rt(btex $2$ etex,z43);
dotlabel.rt(btex $3$ etex,z44);
dotlabel.top(btex $1$ etex,z51);
dotlabel.top(btex $3$ etex,z52);
dotlabel.bot(btex $2$ etex,z53);
dotlabel.top(btex $4$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
z60 = z0 + (( z51 + z11 + z31 + z32 + z12 )/5 - z0 ) ;
z61 = z0 + (( z33 + z34 + z23 + z54 + z24 )/5 - z0 ) ;
z62 = z0 +  1.7(( z51 + z11 + z31 + z32 + z12 )/5 - z0 ) ;
z63 = z0 + 1.7(( z33 + z34 + z23 + z54 + z24 )/5 - z0 ) ;

draw z51--z11--z31--z32--z12-- cycle withcolor red;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

pickup pencircle scaled 1pt;
draw z62--z63 withcolor red;
dotlabel(btex   etex,z60);
dotlabel(btex   etex,z61);

%draw z11--z12--z13--z14-- cycle;
%draw z21--z22--z23;
%draw z23--z24--z21 dashed evenly;
%for i = 1 upto 3:
%	draw z[10+i]-- z[20+i];
%endfor 
%for i = 4 upto 4:
%	draw z[10+i]-- z[20+i]  dashed evenly;
%endfor 

endfig;

beginfig(26);
z0= (5a , 6a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z11);
dotlabel.lrt(btex $5$ etex,z12);
dotlabel.top(btex $4$ etex,z13);
dotlabel.top(btex $5$ etex,z14);
dotlabel.bot(btex $5$ etex,z21);
dotlabel.bot(btex $1$ etex,z22);
dotlabel.bot(btex $5$ etex,z23);
dotlabel.rt(btex $3$ etex,z24);%
dotlabel.lrt(btex $3$ etex,z31);%
dotlabel.rt(btex $4$ etex,z32);
dotlabel.top(btex $2$ etex,z33);
dotlabel.rt(btex $1$ etex,z34);
dotlabel.lft(btex $4$ etex,z41);
dotlabel.lft(btex $1$ etex,z42);
dotlabel.rt(btex $2$ etex,z43);
dotlabel.rt(btex $3$ etex,z44);
dotlabel.top(btex $1$ etex,z51);
dotlabel.top(btex $3$ etex,z52);
dotlabel.bot(btex $2$ etex,z53);
dotlabel.top(btex $4$ etex,z54);


%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z51--z11--z31--z32--z12-- cycle withcolor red;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

%pickup pencircle scaled 1pt;
%draw z11--z12--z13--z14-- cycle;
%draw z21--z22--z23;
%draw z23--z24--z21 dashed evenly;
%for i = 1 upto 3:
%	draw z[10+i]-- z[20+i];
%endfor 
%for i = 4 upto 4:
%	draw z[10+i]-- z[20+i]  dashed evenly;
%endfor 

endfig;

beginfig(27);
z0= (5a , 6a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

z61 = (z31+z32)/2 ;
z62 = (z33+z34)/2 ;
z63 = (z41+z42)/2 ;
z64 = (z43+z44)/2 ;
z65 = (z51+z52)/2 ;
z66 = (z53+z54)/2 ;

z71 = (z31+z32)/2 + z1  ;
z72 = (z33+z34)/2- z1  ;
z73 = (z41+z42)/2 + z2;
z74 = (z43+z44)/2 -z2;
z75 = (z51+z52)/2 +z3;
z76 = (z53+z54)/2 -z3;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z11);
dotlabel.lrt(btex $5$ etex,z12);%
dotlabel.top(btex $4$ etex,z13);
dotlabel.top(btex $5$ etex,z14);
dotlabel.bot(btex $5$ etex,z21);%
dotlabel.bot(btex $1$ etex,z22);
dotlabel.bot(btex $5$ etex,z23);%
dotlabel.urt(btex $3$ etex,z24);
dotlabel.lrt(btex $3$ etex,z31);
dotlabel.rt(btex $4$ etex,z32);
dotlabel.top(btex $2$ etex,z33);
dotlabel.rt(btex $1$ etex,z34);%
dotlabel.lft(btex $4$ etex,z41);
dotlabel.lft(btex $1$ etex,z42);
dotlabel.rt(btex $2$ etex,z43);
dotlabel.rt(btex $3$ etex,z44);
dotlabel.top(btex $1$ etex,z51);%
dotlabel.top(btex $3$ etex,z52);
dotlabel.bot(btex $2$ etex,z53);
dotlabel.top(btex $4$ etex,z54);

dotlabel(btex  etex,z61);
dotlabel(btex  etex,z62);
dotlabel(btex  etex,z63);
dotlabel(btex  etex,z64);
dotlabel(btex  etex,z65);
dotlabel(btex  etex,z66);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z51--z11--z31--z32--z12-- cycle;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

pickup pencircle scaled 1pt;
draw z11--z12--z13--z14-- cycle;
draw z21--z22--z23;
draw z23--z24--z21 dashed evenly;
for i = 1 upto 3:
	draw z[10+i]-- z[20+i];
endfor 
for i = 4 upto 4:
	draw z[10+i]-- z[20+i]  dashed evenly;
endfor 

draw z71--z72 dashed evenly withcolor red ;
draw z73--z74 dashed evenly withcolor red ;
draw z75--z76 dashed evenly withcolor red ;
endfig;

beginfig(28);%(22)
z0= (5a , 6a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

z61 = z11+ z1+  z2 + z3;
z62 = z23- z1-  z2 - z3;
z63 = z12 + z1 -  z2 + z3;
z64 = z24 - z1 + z2 - z3;
z65 = z13 -  z1 - z2 + z3;
z66 = z21 + z1 + z2 - z3;
z67 = z14 - z1 + z2 + z3;
z68 = z22 + z1 - z2 - z3;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z11);
dotlabel.lrt(btex $5$ etex,z12);%
dotlabel.top(btex $4$ etex,z13);
dotlabel.top(btex $5$ etex,z14);
dotlabel.bot(btex $5$ etex,z21);%
dotlabel.bot(btex $1$ etex,z22);
dotlabel.bot(btex $5$ etex,z23);%
dotlabel.urt(btex $3$ etex,z24);
dotlabel.lrt(btex $3$ etex,z31);
dotlabel.rt(btex $4$ etex,z32);
dotlabel.top(btex $2$ etex,z33);
dotlabel.rt(btex $1$ etex,z34);%
dotlabel.lft(btex $4$ etex,z41);
dotlabel.lft(btex $1$ etex,z42);
dotlabel.rt(btex $2$ etex,z43);
dotlabel.rt(btex $3$ etex,z44);
dotlabel.top(btex $1$ etex,z51);%
dotlabel.top(btex $3$ etex,z52);
dotlabel.bot(btex $2$ etex,z53);
dotlabel.top(btex $4$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z51--z11--z31--z32--z12-- cycle;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

pickup pencircle scaled 1pt;
draw z11--z12--z13--z14-- cycle;
draw z21--z22--z23;
draw z23--z24--z21 dashed evenly;
for i = 1 upto 3:
	draw z[10+i]-- z[20+i];
endfor 
for i = 4 upto 4:
	draw z[10+i]-- z[20+i]  dashed evenly;
endfor 

for i = 1  step 2 until 7:
	draw z[60 + i]--z[61 + i] dashed evenly withcolor red;
endfor

endfig;

beginfig(29);%(22) (24)
z0= (8a , 6a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

z61 = z11+ z1+  z2 + z3;
z62 = z23- z1-  z2 - z3;
z63 = z12 + z1 -  z2 + z3;
z64 = z24 - z1 + z2 - z3;
z65 = z13 -  z1 - z2 + z3;
z66 = z21 + z1 + z2 - z3;
z67 = z14 - z1 + z2 + z3;
z68 = z22 + z1 - z2 - z3;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z11);
dotlabel.lrt(btex $5$ etex,z12);%
dotlabel.top(btex $4$ etex,z13);
dotlabel.top(btex $5$ etex,z14);
dotlabel.bot(btex $5$ etex,z21);%
dotlabel.bot(btex $1$ etex,z22);
dotlabel.bot(btex $5$ etex,z23);%
dotlabel.urt(btex $3$ etex,z24);
dotlabel.lrt(btex $3$ etex,z31);
dotlabel.rt(btex $4$ etex,z32);
dotlabel.top(btex $2$ etex,z33);
dotlabel.rt(btex $1$ etex,z34);%
dotlabel.lft(btex $4$ etex,z41);
dotlabel.lft(btex $1$ etex,z42);
dotlabel.rt(btex $2$ etex,z43);
dotlabel.rt(btex $3$ etex,z44);
dotlabel.top(btex $1$ etex,z51);%
dotlabel.top(btex $3$ etex,z52);
dotlabel.bot(btex $2$ etex,z53);
dotlabel.top(btex $4$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z51--z11--z31--z32--z12-- cycle;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

pickup pencircle scaled 1pt;

draw z51--z31--z22--z43-- cycle;
draw z51--z14--z42--z31;
draw z54--z34--z43 dashed evenly;
draw z14--z34 dashed evenly;
draw z42--z54--z22;
%pickup pencircle scaled 1pt;
%draw z11--z12--z13--z14-- cycle;
%draw z21--z22--z23;
%draw z23--z24--z21 dashed evenly;
%for i = 1 upto 3:
%	draw z[10+i]-- z[20+i];
%endfor 
%for i = 4 upto 4:
%	draw z[10+i]-- z[20+i]  dashed evenly;
%endfor 
%
%for i = 1  step 2 until 7:
%	draw z[60 + i]--z[61 + i] dashed evenly withcolor red;
%endfor
%
endfig;

beginfig(30);%(22) (24)
z0= (8a , 6a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

z61 = z11+ z1+  z2 + z3;
z62 = z23- z1-  z2 - z3;
z63 = z12 + z1 -  z2 + z3;
z64 = z24 - z1 + z2 - z3;
z65 = z13 -  z1 - z2 + z3;
z66 = z21 + z1 + z2 - z3;
z67 = z14 - z1 + z2 + z3;
z68 = z22 + z1 - z2 - z3;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z11);
dotlabel.lrt(btex $5$ etex,z12);%
dotlabel.top(btex $4$ etex,z13);
dotlabel.top(btex $5$ etex,z14);
dotlabel.bot(btex $5$ etex,z21);%
dotlabel.bot(btex $1$ etex,z22);
dotlabel.bot(btex $5$ etex,z23);%
dotlabel.urt(btex $3$ etex,z24);
dotlabel.lrt(btex $3$ etex,z31);
dotlabel.rt(btex $4$ etex,z32);
dotlabel.top(btex $2$ etex,z33);
dotlabel.rt(btex $1$ etex,z34);%
dotlabel.lft(btex $4$ etex,z41);
dotlabel.lft(btex $1$ etex,z42);
dotlabel.rt(btex $2$ etex,z43);
dotlabel.rt(btex $3$ etex,z44);
dotlabel.top(btex $1$ etex,z51);%
dotlabel.top(btex $3$ etex,z52);
dotlabel.bot(btex $2$ etex,z53);
dotlabel.top(btex $4$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z51--z11--z31--z32--z12-- cycle;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

pickup pencircle scaled 1pt;

draw z32--z11--z52--z43-- cycle;
draw z11--z42--z53--z32;
draw z52--z33 dashed evenly;
draw z23--z33--z42 dashed evenly;
draw z43--z23--z53;
%pickup pencircle scaled 1pt;
%draw z11--z12--z13--z14-- cycle;
%draw z21--z22--z23;
%draw z23--z24--z21 dashed evenly;
%for i = 1 upto 3:
%	draw z[10+i]-- z[20+i];
%endfor 
%for i = 4 upto 4:
%	draw z[10+i]-- z[20+i]  dashed evenly;
%endfor 
%
%for i = 1  step 2 until 7:
%	draw z[60 + i]--z[61 + i] dashed evenly withcolor red;
%endfor
%
endfig;


beginfig(31);%(22) (24)
z0= (8a , 6a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

z61 = z11+ z1+  z2 + z3;
z62 = z23- z1-  z2 - z3;
z63 = z12 + z1 -  z2 + z3;
z64 = z24 - z1 + z2 - z3;
z65 = z13 -  z1 - z2 + z3;
z66 = z21 + z1 + z2 - z3;
z67 = z14 - z1 + z2 + z3;
z68 = z22 + z1 - z2 - z3;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z11);
dotlabel.lrt(btex $5$ etex,z12);%
dotlabel.top(btex $4$ etex,z13);
dotlabel.top(btex $5$ etex,z14);
dotlabel.bot(btex $5$ etex,z21);%
dotlabel.bot(btex $1$ etex,z22);
dotlabel.bot(btex $5$ etex,z23);%
dotlabel.urt(btex $3$ etex,z24);
dotlabel.lrt(btex $3$ etex,z31);
dotlabel.rt(btex $4$ etex,z32);
dotlabel.top(btex $2$ etex,z33);
dotlabel.rt(btex $1$ etex,z34);%
dotlabel.lft(btex $4$ etex,z41);
dotlabel.lft(btex $1$ etex,z42);
dotlabel.rt(btex $2$ etex,z43);
dotlabel.rt(btex $3$ etex,z44);
dotlabel.top(btex $1$ etex,z51);%
dotlabel.top(btex $3$ etex,z52);
dotlabel.bot(btex $2$ etex,z53);
dotlabel.top(btex $4$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z51--z11--z31--z32--z12-- cycle;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

pickup pencircle scaled 1pt;

draw z31--z12--z52--z41-- cycle;
draw z31--z53--z44--z12;
draw z44--z34--z52;
draw z34--z24 dashed evenly;
draw z41--z24--z53 dashed evenly;
%pickup pencircle scaled 1pt;
%draw z11--z12--z13--z14-- cycle;
%draw z21--z22--z23;
%draw z23--z24--z21 dashed evenly;
%for i = 1 upto 3:
%	draw z[10+i]-- z[20+i];
%endfor 
%for i = 4 upto 4:
%	draw z[10+i]-- z[20+i]  dashed evenly;
%endfor 
%
%for i = 1  step 2 until 7:
%	draw z[60 + i]--z[61 + i] dashed evenly withcolor red;
%endfor
%
endfig;

beginfig(32);%(22) (24)
z0= (8a , 6a);
z1 = a*(sind(c), -cosd(c)*sind(d));
z2 = a*(cosd(c), sind(c)*sind(d));
z3 = a*(0, cosd(d)); 

z11 = z0 + g* z1+ g* z2 +g* z3 ;
z12 = z0 + g* z1- g* z2 +g* z3 ;
z13 = z0 - g* z1- g* z2 +g* z3 ;
z14 = z0 - g* z1 + g* z2 +g* z3 ;
z21 = z0 + g* z1+ g* z2 -g* z3 ;
z22 = z0 + g* z1- g* z2 -g* z3 ;
z23 = z0 - g* z1- g* z2 -g* z3 ;
z24 = z0 - g* z1 + g* z2 -g* z3 ;

z31= z0 + k* z1+ f * z2 ;
z32= z0 + k* z1 - f * z2;
z33= z0 - k* z1+ f * z2 ;
z34= z0 - k* z1 - f * z2;
z41= z0 + k* z2+ f * z3 ;
z42= z0 + k* z2 - f * z3;
z43= z0 - k* z2+ f * z3 ;
z44= z0 - k* z2 - f * z3;
z51= z0 + k* z3+ f * z1 ;
z52= z0 + k* z3 - f * z1;
z53= z0 - k* z3+ f * z1 ;
z54= z0 - k* z3 - f * z1;

z61 = z11+ z1+  z2 + z3;
z62 = z23- z1-  z2 - z3;
z63 = z12 + z1 -  z2 + z3;
z64 = z24 - z1 + z2 - z3;
z65 = z13 -  z1 - z2 + z3;
z66 = z21 + z1 + z2 - z3;
z67 = z14 - z1 + z2 + z3;
z68 = z22 + z1 - z2 - z3;

%Show the names of vertices:
dotlabel.top(btex $2$ etex,z11);
dotlabel.lrt(btex $5$ etex,z12);%
dotlabel.top(btex $4$ etex,z13);
dotlabel.top(btex $5$ etex,z14);
dotlabel.bot(btex $5$ etex,z21);%
dotlabel.bot(btex $1$ etex,z22);
dotlabel.bot(btex $5$ etex,z23);%
dotlabel.urt(btex $3$ etex,z24);
dotlabel.lrt(btex $3$ etex,z31);
dotlabel.rt(btex $4$ etex,z32);
dotlabel.top(btex $2$ etex,z33);
dotlabel.rt(btex $1$ etex,z34);%
dotlabel.lft(btex $4$ etex,z41);
dotlabel.lft(btex $1$ etex,z42);
dotlabel.rt(btex $2$ etex,z43);
dotlabel.rt(btex $3$ etex,z44);
dotlabel.top(btex $1$ etex,z51);%
dotlabel.top(btex $3$ etex,z52);
dotlabel.bot(btex $2$ etex,z53);
dotlabel.top(btex $4$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
draw z51--z11--z31--z32--z12-- cycle;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

pickup pencircle scaled 1pt;

draw z51--z41--z21--z32-- cycle;
draw z51--z13--z44--z32;
draw z21--z54--z44;
draw z13--z33--z41 dashed evenly;
draw z54--z33 dashed evenly;
%pickup pencircle scaled 1pt;
%draw z11--z12--z13--z14-- cycle;
%draw z21--z22--z23;
%draw z23--z24--z21 dashed evenly;
%for i = 1 upto 3:
%	draw z[10+i]-- z[20+i];
%endfor 
%for i = 4 upto 4:
%	draw z[10+i]-- z[20+i]  dashed evenly;
%endfor 
%
%for i = 1  step 2 until 7:
%	draw z[60 + i]--z[61 + i] dashed evenly withcolor red;
%endfor
%
endfig;



verbatimtex
\end{document}
etex;
end