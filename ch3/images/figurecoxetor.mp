prologues := 3;
verbatimtex
%\documentclass[uplatex]{jsarticle}
% from command line 
%>upmpost -tex=uplatex figureProje2.mp
\documentclass{article} % In English mode
\usepackage{verbatim}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\begin{document}
etex;
a=10pt;
b=6pt;


numeric c, d;
c = -15;%default 30%angle of rotation of figure around z axis
d = 30;%default 30%angle of rotation of view point around y axis
beginfig(1);
z0=(3a,5a);%Origin : adjust the position of the whole figures.
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
z19 = 0.5[z15,z13];
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

%center of faces of outer cube
z31= 0.5[z21,z23];
z32 = 0.5[z25,z27];
z33= 0.5[z21,z26];
z34= 0.5[z23,z28];
z35= 0.5[z21,z28];
z36= 0.5[z23,z26];

%drawarrow z19--z31;
%drawarrow z19--z36;
%drawarrow z19--z34;

%center of faces
z41= 0.5[z11,z13];
z42 = 0.5[z15,z17];
z43= 0.5[z11,z16];
z44= 0.5[z13,z18];
z45= 0.5[z11,z18];
z46= 0.5[z13,z16];
%for i = 41, 44,  46:
%	dotlabel("",z[i]);
%endfor;

%center of edges of cube
z51= 0.5[z11,z12];
z52= 0.5[z12,z13];
z53= 0.5[z13,z14];
z54= 0.5[z14,z11];

z55 = 0.5[z11,z15];
z56 = 0.5[z12,z16];
z57 = 0.5[z13,z17];
z58 = 0.5[z14,z18];

z61= 0.5[z17,z18];
z62= 0.5[z18,z15];
z63= 0.5[z15,z16];
z64= 0.5[z16,z17];

draw z43--z44;
draw z13--z15;
draw z53--z63;



pickup pencircle scaled 1pt;
draw z12--z13--z18--z15-- cycle withcolor red;
draw z13--z14--z15--z16-- cycle withcolor green;
draw z51--z53--z61--z63-- cycle  withcolor blue;

%draw z21--z27 dashed evenly withcolor blue;
%draw z22--z28 dashed evenly withcolor blue;
%draw z23--z25 dashed evenly withcolor blue;
%draw z24--z26 dashed evenly withcolor blue;

draw z19--z44--z53-- cycle;
draw z53--z13--z19-- cycle;
draw z19--z13--z44-- cycle;
%draw z33--z34 dashed evenly withcolor red;
%draw z35--z36 dashed evenly withcolor red;

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


beginfig(2);
z0=(3a,5a);%Origin : adjust the position of the whole figures.
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
z19 = 0.5[z15,z13];
%test part
%drawarrow z15--z18;
%drawarrow z15--z16;
%drawarrow z15--z11;
%label.llft(btex $x$ etex,z18);
%label.lrt(btex $y$ etex,z16);
%label.top(btex $z$ etex,z11);

%vertices of outer cube
z21 = z0 - z1- z2 - z3 + 10z3 ;
z22 = z21 + 10z2;
z23 = z22 + 10z1;
z24 = z23 - 10z2 ;
z25 = z0- z1- z2 - z3  ;
z26 = z25+ 10z2;
z27 = z26 + 10z1;
z28 = z27 - 10z2 ;

%center of faces of outer cube
z31= 0.5[z21,z23];
z32 = 0.5[z25,z27];
z33= 0.5[z21,z26];
z34= 0.5[z23,z28];
z35= 0.5[z21,z28];
z36= 0.5[z23,z26];

%drawarrow z19--z31;
%drawarrow z19--z36;
%drawarrow z19--z34;

%center of faces
z41= 0.5[z11,z13];
z42 = 0.5[z15,z17];
z43= 0.5[z11,z16];
z44= 0.5[z13,z18];
z45= 0.5[z11,z18];
z46= 0.5[z13,z16];
%for i = 41, 44,  46:
%	dotlabel("",z[i]);
%endfor;

%center of edges of cube
z51= 0.5[z11,z12];
z52= 0.5[z12,z13];
z53= 0.5[z13,z14];
z54= 0.5[z14,z11];

z55 = 0.5[z11,z15];
z56 = 0.5[z12,z16];
z57 = 0.5[z13,z17];
z58 = 0.5[z14,z18];

z61= 0.5[z15,z16];
z62= 0.5[z16,z17];%
z63= 0.5[z17,z18];
z64= 0.5[z18,z15];

z70 = whatever[z14,z19]=whatever[z53,z63];
z71 = whatever[z41,z19]=whatever[z13,z14];
z72 = whatever[z57,z19]=whatever[z13,z44];
z73 = whatever[z58,z19]=whatever[z14,z44];
z74 = whatever[z18,z19]=whatever[z57,z44];
z75 = whatever[z63,z19]=whatever[z17,z44];
z76 = whatever[z17,z19]=whatever[z57,z44];
z77 = whatever[z54,z19]=whatever[z14,z41];
z78 = whatever[z11,z19]=whatever[z54,z41];
z79 = whatever[z51,z19]=whatever[z12,z41];
z80 = whatever[z12,z19]=whatever[z52,z41];
z81 = whatever[z56,z19]=whatever[z12,z46];
z82 = whatever[z16,z19]=whatever[z46,z62];%
z83 = whatever[z13,z17]=whatever[z46,z45];%
z84 = whatever[z46,z17]=whatever[z62,z54];%
z86 = whatever[z52,z19]=whatever[z13,z41];

%pickup pencircle scaled 0.1pt;
%draw z18--z15--z16;
%draw z11--z15;
%
%draw z61--z63;
%draw z19--z15;
%draw z61--z19;
%draw z70--z19;
%draw z71--z42;
%draw z72--z55 ;
%draw z73--z19 ;
%draw z74--z12 ;
%draw z75--z19 ;
%draw z76--z19 ;
%draw z77--z19 ;
%draw z78--z19 ;
%draw z79--z19 ;
%draw z80--z19 ;
%draw z81--z19 ;
%draw z82--z19 ;
%draw z83--z45 ;
%draw z15--z17;
%draw z84--z19;
%draw z86--z19;
%
%draw z16--z18;
%draw z11--z18;
%draw z14--z15;
%draw z62--z64;
%draw z54--z64;
%draw z58--z55;
%draw z11--z16;
%draw z12--z15;
%draw z51--z61;
%draw z55--z56;

pickup pencircle scaled 1pt;
draw z11--z12--z13--z14--  cycle;
draw z16--z17--z18;
for i=12 upto 14:
	draw z[i]--z[i+4];
endfor;

draw z51--z53;
draw z52--z54;
draw z56--z57--z58;
draw z53--z63;
draw z52--z62;
draw z13--z11;
draw z14--z12;
draw z12--z17;
draw z13--z16;
draw z13--z18;
draw z14--z17;

draw z53--z19;%
draw z19--z13;
draw z19--z44;
draw z14--z70;
draw z41--z71;
draw z57--z72;
draw z58--z73;
draw z18--z74 ;
draw z63--z75 ;
draw z17--z76 ;
draw z77--z54;
draw z78--z11;%
draw z79--z51;
draw z80--z12;
draw z81--z56;
draw z82--z16;
draw z83--z46 ;
draw z84--z62;
draw z86--z52;
endfig;


beginfig(3);
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
z19 = 0.5[z15,z13];

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

%center of faces of outer cube
z31= 0.5[z21,z23];
z32 = 0.5[z25,z27];
z33= 0.5[z21,z26];
z34= 0.5[z23,z28];
z35= 0.5[z21,z28];
z36= 0.5[z23,z26];

%drawarrow z19--z31;
%drawarrow z19--z36;
%drawarrow z19--z34;

%center of faces
z41= 0.5[z11,z13];
z42 = 0.5[z15,z17];
z43= 0.5[z11,z16];
z44= 0.5[z13,z18];
z45= 0.5[z11,z18];
z46= 0.5[z13,z16];
%for i = 41, 44,  46:
%	dotlabel("",z[i]);
%endfor;

%center of edges of cube
z51= 0.5[z11,z12];
z52= 0.5[z12,z13];
z53= 0.5[z13,z14];
z54= 0.5[z14,z11];

z55 = 0.5[z11,z15];
z56 = 0.5[z12,z16];
z57 = 0.5[z13,z17];
z58 = 0.5[z14,z18];

z61= 0.5[z17,z18];
z62= 0.5[z18,z15];
z63= 0.5[z15,z16];
z64= 0.5[z16,z17];

%label.bot(btex $\mathbf 0$ etex,z19);

draw z43--z44;
draw z13--z15;
draw z14--z16;

pickup pencircle scaled 1pt;
%draw z21--z27 dashed evenly withcolor blue;
%draw z22--z28 dashed evenly withcolor blue;
%draw z23--z25 dashed evenly withcolor blue;
%draw z24--z26 dashed evenly withcolor blue;

draw z12--z13--z18--z15-- cycle withcolor red;
draw z13--z14--z15--z16-- cycle withcolor blue;
draw z14--z11--z16--z17--cycle  withcolor green;

draw z19--z44--z14-- cycle;
draw z14--z13--z19-- cycle;
draw z19--z13--z44-- cycle;
%draw z33--z34 dashed evenly withcolor red;
%draw z35--z36 dashed evenly withcolor red;

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

beginfig(4);
z0=(3a,5a);%Origin : adjust the position of the whole figures.
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
z19 = 0.5[z15,z13];
%test part
%drawarrow z15--z18;
%drawarrow z15--z16;
%drawarrow z15--z11;
%label.llft(btex $x$ etex,z18);
%label.lrt(btex $y$ etex,z16);
%label.top(btex $z$ etex,z11);

%vertices of outer cube
z21 = z0 - z1- z2 - z3 + 10z3 ;
z22 = z21 + 10z2;
z23 = z22 + 10z1;
z24 = z23 - 10z2 ;
z25 = z0- z1- z2 - z3  ;
z26 = z25+ 10z2;
z27 = z26 + 10z1;
z28 = z27 - 10z2 ;

%center of faces of outer cube
z31= 0.5[z21,z23];
z32 = 0.5[z25,z27];
z33= 0.5[z21,z26];
z34= 0.5[z23,z28];
z35= 0.5[z21,z28];
z36= 0.5[z23,z26];

%drawarrow z19--z31;
%drawarrow z19--z36;
%drawarrow z19--z34;

%center of faces
z41= 0.5[z11,z13];
z42 = 0.5[z15,z17];
z43= 0.5[z11,z16];
z44= 0.5[z13,z18];
z45= 0.5[z11,z18];
z46= 0.5[z13,z16];
%for i = 41, 44,  46:
%	dotlabel("",z[i]);
%endfor;

%center of edges of cube
z51= 0.5[z11,z12];
z52= 0.5[z12,z13];
z53= 0.5[z13,z14];
z54= 0.5[z14,z11];

z55 = 0.5[z11,z15];
z56 = 0.5[z12,z16];
z57 = 0.5[z13,z17];
z58 = 0.5[z14,z18];

z61= 0.5[z15,z16];
z62= 0.5[z16,z17];%
z63= 0.5[z17,z18];
z64= 0.5[z18,z15];

z70 = whatever[z14,z19]=whatever[z53,z63];
z71 = whatever[z41,z19]=whatever[z13,z14];
z72 = whatever[z57,z19]=whatever[z13,z44];
z73 = whatever[z58,z19]=whatever[z14,z44];
z74 = whatever[z18,z19]=whatever[z14,z17];%%%
z75 = whatever[z63,z19]=whatever[z17,z44];
z76 = whatever[z17,z19]=whatever[z13,z18];%%%
z77 = whatever[z54,z19]=whatever[z14,z41];
z78 = whatever[z11,z19]=whatever[z12,z14];%
z79 = whatever[z51,z19]=whatever[z12,z41];
z80 = whatever[z12,z19]=whatever[z11,z13];%%
z81 = whatever[z56,z19]=whatever[z12,z46];
z82 = whatever[z16,z19]=whatever[z12,z17];%%
z83 = whatever[z13,z17]=whatever[z46,z45];%
z84 = whatever[z46,z17]=whatever[z62,z54];%
z86 = whatever[z52,z19]=whatever[z13,z41];

z90 =  whatever[z11,z18]=whatever[z12,z14];
z91 =  whatever[z11,z18]=whatever[z14,z17];

%pickup pencircle scaled 0.1pt;
%draw z18--z15--z16;
%draw z11--z15;
%
%draw z61--z63;
%draw z19--z15;
%draw z61--z19;
%draw z70--z19;
%draw z71--z42;
%draw z72--z55 ;
%draw z73--z19 ;
%draw z74--z12 ;
%draw z75--z19 ;
%draw z76--z19 ;
%draw z77--z19 ;
%draw z78--z19 ;
%draw z79--z19 ;
%draw z80--z19 ;
%draw z81--z19 ;
%draw z82--z19 ;
%draw z83--z45 ;
%draw z15--z17;
%draw z84--z19;
%draw z86--z19;
%
%draw z16--z18;
%draw z11--z18;
%draw z14--z15;
%draw z62--z64;
%draw z54--z64;
%draw z58--z55;
%draw z11--z16;
%draw z12--z15;
%draw z51--z61;
%draw z55--z56;

pickup pencircle scaled 1pt;
draw z11--z12--z13--z14--  cycle;
draw z16--z17--z18;
for i=12 upto 14:
	draw z[i]--z[i+4];
endfor;

%draw z51--z53;
%draw z52--z54;
%draw z56--z57--z58;
%draw z53--z63;
%draw z52--z62;
draw z13--z11;
draw z14--z12;
draw z12--z17;
draw z13--z16;
draw z13--z18;
draw z14--z17;

%draw z53--z19;%
draw z19--z13;
draw z19--z44;
draw z14--z19;%
draw z41--z71;
%draw z57--z72;
%draw z58--z73;
draw z18--z74 ;%%
%draw z63--z75 ;
draw z17--z76 ;%%
%draw z77--z54;
draw z78--z11;%%
%draw z79--z51;
draw z80--z12;%%
%draw z81--z56;
draw z82--z16;%%
draw z83--z46 ;
%draw z84--z62;
%draw z86--z52;

%draw z11--z90;
%draw z18--z91;
endfig;

numeric a, c, d;
a = 10pt;
c = 193; %angle of rotation of figure around z axis
d = -20; %angle of rotation of view point around y axis
numeric f, g, k;
f = 2.1 ;% scale factor
g = (sqrt(5) +1 )*f /2 ; %g = f * \tau
k = f + g;

beginfig(5);
z0= (6a, 6a);
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
%dotlabel.top(btex $2$ etex,z11);
%dotlabel.lrt(btex $5$ etex,z12);
%dotlabel.top(btex $4$ etex,z13);
%dotlabel.top(btex $5$ etex,z14);
%dotlabel.bot(btex $5$ etex,z21);
%dotlabel.bot(btex $1$ etex,z22);
%dotlabel.bot(btex $5$ etex,z23);
%dotlabel.urt(btex $3$ etex,z24);%
%dotlabel.lrt(btex $3$ etex,z31);%
%dotlabel.rt(btex $4$ etex,z32);
%dotlabel.top(btex $2$ etex,z33);
%dotlabel.rt(btex $1$ etex,z34);
%dotlabel.lft(btex $4$ etex,z41);
%dotlabel.lft(btex $1$ etex,z42);
%dotlabel.rt(btex $2$ etex,z43);
%dotlabel.rt(btex $3$ etex,z44);
%dotlabel.top(btex $1$ etex,z51);
%dotlabel.top(btex $3$ etex,z52);
%dotlabel.bot(btex $2$ etex,z53);
%dotlabel.top(btex $4$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
z60 = z0 + (( z51 + z11 + z31 + z32 + z12 )/5 - z0 ) ;
z61 = z0 + (( z33 + z34 + z23 + z54 + z24 )/5 - z0 ) ;
z62 = z0 +  1.7(( z51 + z11 + z31 + z32 + z12 )/5 - z0 ) ;
z63 = z0 + 1.7(( z33 + z34 + z23 + z54 + z24 )/5 - z0 ) ;
z70 = 0.5[z62,z63];
z72 =0.5[z32,z12];
z71 = z0 + ((z51+z11+z31+z32+z12)/5-z0);

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
draw z71--z72--z70-- cycle;
draw z70--z32--z71;
draw z72--z32;
%draw z62--z63 withcolor red;
%dotlabel(btex   etex,z60);
%dotlabel(btex   etex,z61);

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

beginfig(6);
z0= (6a, 6a);
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
%dotlabel.top(btex $2$ etex,z11);
%dotlabel.lrt(btex $5$ etex,z12);
%dotlabel.top(btex $4$ etex,z13);
%dotlabel.top(btex $5$ etex,z14);
%dotlabel.bot(btex $5$ etex,z21);
%dotlabel.bot(btex $1$ etex,z22);
%dotlabel.bot(btex $5$ etex,z23);
%dotlabel.urt(btex $3$ etex,z24);%
%dotlabel.lrt(btex $3$ etex,z31);%
%dotlabel.rt(btex $4$ etex,z32);
%dotlabel.top(btex $2$ etex,z33);
%dotlabel.rt(btex $1$ etex,z34);
%dotlabel.lft(btex $4$ etex,z41);
%dotlabel.lft(btex $1$ etex,z42);
%dotlabel.rt(btex $2$ etex,z43);
%dotlabel.rt(btex $3$ etex,z44);
%dotlabel.top(btex $1$ etex,z51);
%dotlabel.top(btex $3$ etex,z52);
%dotlabel.bot(btex $2$ etex,z53);
%dotlabel.top(btex $4$ etex,z54);

%for i = 3 upto 5:
%	draw z[10i + 1]--z[10i + 2];
%	draw z[10i + 3]--z[10i + 4];
%endfor
z60 = z0 + (( z51 + z11 + z31 + z32 + z12 )/5 - z0 ) ;
z61 = z0 + (( z33 + z34 + z23 + z54 + z24 )/5 - z0 ) ;
z62 = z0 +  1.7(( z51 + z11 + z31 + z32 + z12 )/5 - z0 ) ;
z63 = z0 + 1.7(( z33 + z34 + z23 + z54 + z24 )/5 - z0 ) ;

z70 = 0.5[z62,z63];
z71 = z0 + ((z51+z11+z31+z32+z12)/5-z0);
z72 = 0.5[z32,z12];
z73 = whatever[z71, z72]=whatever[z70, z12];
z74 = 0.5[z12,z51];
z75 = whatever[z71, z12]=whatever[z70, z74];
z76 = whatever[z70, z51]=whatever[z71, z74];
z77 = 0.5[z51,z11];
z78 = whatever[z70, z77]=whatever[z71, z51];
z79 = 0.5[z11,z31];
z80 = whatever[z11, z70]=whatever[z79, z71];
z81 = whatever[z79, z70]=whatever[z71,z31];
z82 = 0.5[z31,z32];
z83 = whatever[z31, z70]=whatever[z82, z71];
z84 = whatever[z82, z70]=whatever[z32, z71];

z90 = (z32+z12+z43+z44+z22-5z0)/5 +z0; 
z91= (z31+z21+z53+z22+z32-5z0)/5 +z0; 
z92 = whatever[z90, z70]=whatever[z32, z12];
z93 = whatever[z91, z70]=whatever[z32,z31];%
z94 = 0.5[z32, z22];
z95 = whatever[z94, z70]=whatever[z32,z90];

%draw z51--z11--z31--z32--z12-- cycle;
draw z31--z21--z53--z22--z32;
draw z11--z41--z42--z21;
draw z12--z43--z44--z22;
draw z41--z14--z52;
draw z52--z13--z43;
draw z51--z52 ;
draw z42--z24--z54 dashed evenly;
draw z44--z23--z54 dashed evenly;
draw z13--z34--z33--z14 dashed evenly;
draw z24--z33 dashed evenly;
draw z23--z34 dashed evenly;
draw z53--z54 dashed evenly;

pickup pencircle scaled 1pt;
draw z71--z72--z70-- cycle;
draw z70--z32--z71;
draw z32--z72;
draw z71--z12--z72;
draw z12--z73;
draw z71--z74--z12;
draw z74--z75;
draw z74--z51--z71;
draw z51--z76;
draw z51--z77--z71;
draw z77--z78;
draw z77--z11--z71;
draw z11--z79--z71;
draw z11--z80;
draw z79--z31--z71;
draw z79--z81;
draw z31--z82--z71;
draw z82--z32;
draw z31--z83;
draw z82--z84;
draw z32--z90--z72;
draw z90--z92;
draw z82--z91--z32;
draw z91--z93;
draw z90--z94--z91;
draw z94--z95;
%draw z62--z63 withcolor red;
%dotlabel(btex   etex,z60);
%dotlabel(btex   etex,z61);

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



verbatimtex
\end{document}
etex;
end
