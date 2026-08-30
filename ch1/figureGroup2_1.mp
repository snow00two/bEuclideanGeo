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

numeric c, d;
c = 30; %angle of rotation of figure around z axis
d = 10; %angle of rotation of view point around y axis
beginfig(6);
z0=(0,a);
z1 = a*(sind(c),cosd(c)*sind(d));
z2 = a*(cosd(c),-sind(c)*sind(d));
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

beginfig(7);
z0=(0,a);
z1 = a*(sind(c),cosd(c)*sind(d));
z2 = a*(cosd(c),-sind(c)*sind(d));
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
%draw z17--z21 dashed evenly withcolor red;
endfig;

beginfig(8);
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