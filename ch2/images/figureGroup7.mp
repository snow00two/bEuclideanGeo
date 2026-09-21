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
a=8pt;
b=6pt;

beginfig(1);
% generic lattice M_1 (P1)
z0 = (0,-a);
for i = 1 upto 7:
	for j = 1 upto 7:
		z[100i+10j ]
		=z0 + (i-1)*(2a,0) +(j-1)*(2.5a*cosd(75),2.5a*sind(75));
	endfor;
endfor;

path p;
p = z220--z420--z440--z240-- cycle ;
fill p withcolor 0.9white;

for i = 2 step 2 until 6:
	for j= 2  step 2 until  6:
		dotlabel( btex $ $ etex, z[100i+10j] );
%		drawarrow z[330]--z[100i+10j+110];
		z[100i+10j +1] = z[100i+10j ] +(2a,a);
		z[100i+10j +2] =z[100i+10j +1] +(a,0);
		z[100i+10j +3] =z[100i+10j +1] +(0,sqrt(3)*a);
		path q;
		q = z[100i+10j +1]--z[100i+10j +2]--z[100i+10j +3]-- cycle ;
		fill q withcolor 0.6white;
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

beginfig(2);
% generic lattice M2(P2)
z0 = (0,-a);
for i = 1 upto 6:
	for j = 1 upto 6:
		z[100i+10j ]
		=z0 + (i-1)*(3a,0) +(j-1)*(4a*cosd(75),4a*sind(75));
		for k = 1 upto 4:
			z[100i+10j +k] 
			= z[100i+10j ]
			+ 
			0.3a*(cosd(75+90*(k+1)),sind(75+90*(k+1)));
		endfor;
		for k = 5 upto 8:
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

for i = 2 step 2 until 4:
	draw z[100i+10]--z[100i+60] dashed evenly;
endfor;
for i = 2 step 2 until 4:
	draw z[100+10i]--z[600+10i] dashed evenly;
endfor;

%for i = 2 upto 5:
%	for j= 2 upto 5:
%		drawarrow z[100i+10j+5]..z[100i+10j+6]..z[100i+10j+7];
%	endfor;
%endfor;
%
for i = 2 step 2 until 5:
	for j= 2 step 2 until 5:
		path p, q, r;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor red;
		z[1000+100i+10j] = z[100i+10j] + (2a,a);
		z[2000+100i+10j] = z[1000+100i+10j] + (a,0);
		z[3000+100i+10j] = z[1000+100i+10j] + (0,2a);
		q = z[1000+100i+10j]--z[2000+100i+10j]--z[3000+100i+10j]-- cycle;
		fill q withcolor 0.6white;
		z[1000-100+100i+10j] = z[100i+10j] - (2a,a);
		z[2000-100+100i+10j] = z[1000-100+100i+10j] - (a,0);
		z[3000-100+100i+10j] = z[1000-100+100i+10j] - (0,2a);
		r = z[1000-100+100i+10j]--z[2000-100+100i+10j]--
			z[3000-100+100i+10j]-- cycle;
		fill r withcolor 0.6white;
	endfor;
endfor;
for i = 2 step 2 until 5:
	for j= 3 step 2 until 5:
		path p;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor green;
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j= 2 step 2 until 5:
		path p;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor (0,0.7,1);% 0.35[blue,white];
	endfor;
endfor;
for i = 3 step 2 until 5:
	for j= 3 step 2 until 5:
		path p;
		p = z[100i+10j+1]..z[100i+10j+2]..z[100i+10j+3]..z[100i+10j+4].. cycle;
		fill p withcolor black;
	endfor;
endfor;


%pickup pencircle scaled 1pt;
%drawarrow z220--z420;
%drawarrow z220--z240;
%
%label.bot(btex $\mathbf a$ etex,z321);
%label.lft(btex $\mathbf b$ etex,z234);

endfig;

beginfig(3);
z0=(0,0);
z1 = z0 + (10a,0);
z2 = z0 + 10a*(cosd(60),sind(60));
z3 = z2 +  (10a,0);
draw z0--z1--z2 -- cycle;
draw z2--z3--z1;

label.lft(btex $\mathbf p$ etex,z0);
label.top(btex $\mathbf q$ etex,z2);
label.rt(btex $\mathbf r$ etex,z1);
label.top(btex $\mathbf s=Q\mathbf p$ etex,z3);

pickup pencircle scaled 1pt;
drawarrow z0--z3;

endfig;


beginfig(4);
z0=(7a,6a);
for i = 1 upto 6:
	z[i] = z0 + 7a*(cosd(60i),sind(60i));
endfor;
draw 
	for i = 1 upto 6:
		z[i]--
	endfor
cycle;

for i = 2 step 2 until  6:
	draw z[i]--z[0];
endfor;

z9 = 0.5[z4,z6];
z10 = 0.5[z4,z2];

label.bot(btex $\mathbf q$ etex,z0);
label.rt(btex $\mathbf s$ etex,z6);
label.top(btex $Q\mathbf s$ etex,z2);
label.bot(btex $\mathbf p$ etex,z4);
label.bot(btex $\mathbf r$ etex,z5);
label.bot(btex $\mathbf a$ etex,z9);
label.lft(btex $\mathbf b$ etex,z10);
pickup pencircle scaled 1pt;
drawarrow z4--z6 withcolor red ;
drawarrow z4--z2 withcolor red ;
endfig;


beginfig(5);
z0=(0,0);
z1 = z0 + (10a,0);
z2 = z1 + 10a*(cosd(120),sind(120));
z3 = z1 + 10a*(cosd(60),sind(60));
z4 = z1 + (10a,0);
z5 = z0 + (5a,10a*sind(60)/3);

z11 = z1 +(0,0.2a) ;
z12 = z2 +0.2a*(cosd(120),sind(120)) ;
z13 = z3 +0.2a*(cosd(60),sind(60));
z14 = z4 +(0.2a,0) ;
draw z0--z1--z2-- cycle;
draw z2--z3--z1;

label.bot(btex $\mathbf p$ etex,z0);
label.ulft(btex $\mathbf q$ etex,z2);
label.bot(btex $\mathbf r$ etex,z1);
label.urt(btex $\mathbf s$ etex,z3);
dotlabel.top(btex $\mathbf c $ etex,z5);

pickup pencircle scaled 1pt;
drawarrow z0--z1 withcolor blue ;
drawarrow z2--z3 withcolor red;
drawarrow z3..z2..z0 withcolor red;
drawarrow z1--z4  withcolor green ;
drawarrow z4..z13..z12  withcolor green ;

endfig;


beginfig(6);
z0=(9a,6a);
for i = 1 upto 6:
	z[i] = z0 + 7a*(cosd(60i),sind(60i));
endfor;
draw 
	for i = 1 upto 6:
		z[i]--
	endfor
cycle;

for i = 2 step 2 until  6:
	draw z[i]--z[0] dashed evenly;
endfor;
for i = 1 step 2 until  5:
	draw z[i]--z[0] dashed evenly;
endfor;
z8 = z0 + (3a,2a);
z9 = 0.5[z4,z6];
z10 = 0.5[z4,z2];

label.bot(btex $\mathbf p$ etex,z0);
%label.rt(btex $\mathbf s$ etex,z6);
label.top(btex $\mathbf q$ etex,z1);
%label.bot(btex $\mathbf p$ etex,z4);
label.rt(btex $\mathbf r$ etex,z6);
dotlabel.bot(btex $ $ etex,z8);
label.bot(btex $\mathbf a$ etex,z9);
label.lft(btex $\mathbf b$ etex,z10);

pickup pencircle scaled 1pt;
drawarrow z4--z6 withcolor red ;
drawarrow z4--z2 withcolor red ;
endfig;

numeric a;
a=16pt;
beginfig(7);
% hexagonal lattice M_3
%definitions of points
z0 = (4a,4a);
for k = 0, 1, 2:
	for m =0, 1, 2:%3,4
		if k = 2: %when k =2, 4 ..., we shift y coord -1
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + (m-1)*(0, 4*sqrt(3)*a);
		else: 
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + m*(0, 4*sqrt(3)*a);
		fi
            for j = 1 upto 4:
            		z[1000k + 200m +j] = z[1000k + 200m]+ 0.2a*(cosd(90j),sind(90j));
            endfor;
		for i = 1 upto 6:
			z[1000k + 200m +10i] = z[1000k + 200m] + 4a*(cosd(60*i),sind(60*i));
                	for j = 1 upto 4:
                		z[1000k + 200m +10i + j] 
    				= z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
                	endfor;
		endfor
 	endfor;
endfor;

%fundamental region
path q;
q = z[1000 +10]--z[1000 +20]--z[1000 +30]--z[1000 +40]--z[1000 +50]--z[1000+60]-- cycle;
fill q withcolor 0.8white;

%colored points, triangles and dashed lines
for k = 0, 1, 2:
	for m =0, 1, 2:
           path p;
            p= z[1000k + 200m +1]..z[1000k + 200m +2]..z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
            fill p withcolor green;	
            for i = 1 upto 6:
             	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
 		if i = 1 :
           		fill p withcolor black;
		else: if i = 2:
			fill p withcolor red;
		else: if i = 3:
			fill p withcolor black;
		else: if i = 4:
			fill p withcolor red;
		else: if i = 5:
			fill p withcolor black;	
		else: 
			fill p withcolor black;
		fi
		fi
		fi
		fi
		fi
	
		draw  z[1000k + 200m +10i ]-- z[1000k + 200m] dashed evenly;
            endfor;
            
            for i = 7 step 2 until 13:
            	z[1000k + 200m +10i] =  
			z[1000k + 200m ] + 2sqrt(3)*a*(cosd(30+ 60*i),sind(30+60*i));
%            	for j = 1 upto 4:
%            		z[1000k + 200m +10i + j] =
%				z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
%            	endfor;
%            	path p;
%            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
%            	fill p withcolor green;
            	z[1000k + 200m +10i + 5] =
			 0.8[z[1000k + 200m],z[1000k + 200m +10i]];
            	z[1000k + 200m +10i + 6] =
			 0.6[z[1000k + 200m],z[1000k + 200m + 10i]];
            	z[1000k + 200m +10i + 7] = 
			z[1000k + 200m+10i + 5] +  a*(cosd(120+ 60*i),sind(120+60*i));
            	path q;
		q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--z[1000k + 200m +10i + 7]-- cycle ;
		fill q withcolor 0.6white;
		draw q;
            endfor;
             for i = 2 upto 4:
	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)] dashed evenly;
             endfor;
            
	endfor;
endfor;
endfig;

numeric a;
a=10pt;

%%%%%
beginfig(8);
z0 = (0,0);
for i = 1 upto 3:
	for j = 1 upto 3:
		z[10i+j] = z0 + (i-1)*(5a,0) +(j-1)*(0,5a);
	endfor;
endfor;

draw z11--z31--z33--z13-- cycle;
draw z11--z33 dashed evenly;
draw z31--z13 dashed evenly;
draw z22--z21 dashed evenly;

dotlabel.top(btex $\mathbf p$ etex,z22);
dotlabel.llft(btex $\mathbf q_1$ etex,z11);
dotlabel.lrt(btex $\mathbf q_2$ etex,z31);
dotlabel.urt(btex $\mathbf q_3$ etex,z33);
dotlabel.ulft(btex $\mathbf q_4$ etex,z13);
dotlabel.urt(btex $\mathbf r$ etex,z21);
label.bot(btex $\mathbf a$ etex,z21);
label.lft(btex $\mathbf b$ etex,z12);

pickup pencircle scaled 1pt;
drawarrow z11--z31 withcolor red;
drawarrow z11--z13 withcolor red;

endfig;

beginfig(9);
z0 = (0,2a);
for i = 1 upto 3:
	for j = 1 upto 3:
		z[10i+j] = z0 + (i-1)*(5a,0) +(j-1)*(0,5a);
	endfor;
endfor;
for i = 1 upto 4:
	z[50 +i] = z22 +5a*(cosd(240+30i),sind(240+30i));
	z[60 +i] = z22 +5a*sqrt(2)*(cosd(195+30i),sind(195+30i));
endfor;

draw z22--z32--z33-- cycle;
draw z22--z21--z31--z32 dashed evenly;

drawarrow z33--z22 withcolor blue;
drawarrow z22--z11 withcolor green;
drawarrow z61..z62..z63..z64 withcolor green;
drawarrow z32--z21 withcolor red;
drawarrow z51..z52..z53..z54 withcolor red;

dotlabel.top(btex $\mathbf p$ etex,z33);
dotlabel.llft(btex $\mathbf q$ etex,z22);
dotlabel.rt(btex $\mathbf r$ etex,z32);
endfig;

beginfig(10);
%M4 (P4)

%definitions of points
z0 = (4a,4a);
for k = 0, 1, 2:
	for m =0, 1, 2:%3,4		
		z[1000k + 200m] = z0+ k*(8a, 0) +m*(0, 8a);
		for j = 1 upto 4:
            		z[1000k + 200m +j] = z[1000k + 200m]+ 0.3a*(cosd(90j),sind(90j));
		endfor;
	endfor;
endfor;

%fundamental region
path q;
q = z[0]--z[1000 + 0 ]--z[1000 + 200]--z[0+ 200]-- cycle;
fill q withcolor 0.8white;

%colored circles, triangles and dashed lines
for k = 0, 1, 2:
	for m =0, 1, 2:
		path p;
		p= z[1000k + 200m +1]..z[1000k + 200m +2]..
			z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
		fill p withcolor red;	
		for i = 1 upto 4:
 	           	z[1000k + 200m +10i] = z[1000k + 200m] + 4a*(cosd(90*i),sind(90*i));
            	for j = 1 upto 4:
            			z[1000k + 200m +10i + j] 
				= z[1000k + 200m +10i] + 0.3a*(cosd(90j),sind(90j));
            		endfor;		
            		path p;
            		p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
					z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            		fill p withcolor green;
				draw  z[1000k + 200m +10i ]-- z[1000k + 200m] dashed evenly;
			endfor;
            for i = 5 upto 8:
			z[1000k + 200m +10i] =  
				z[1000k + 200m ] + 4sqrt(2)*a*(cosd(45 + 90*i),sind(45+90*i));
				for j = 1 upto 4:
            			z[1000k + 200m +10i + j] =
						z[1000k + 200m +10i] + 0.3a*(cosd(90j),sind(90j));
            		endfor;
            		path p;
            		p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..
					z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            		fill p withcolor black;
            		z[1000k + 200m +10i + 5] =
					 0.7[z[1000k + 200m],z[1000k + 200m +10i]]
					 +0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
            		z[1000k + 200m +10i + 6] =
			 		0.4[z[1000k + 200m],z[1000k + 200m + 10i]] 
					+0.3a*(cosd(-45+ 90*i),sind(-45+90*i));
	            	z[1000k + 200m +10i + 7] = 
					z[1000k + 200m+10i + 5] + 
					 0.7a*(cosd(-45+ 90*i),sind(-45+90*i));
            		path q;
				q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--
					z[1000k + 200m +10i + 7]-- cycle ;
				fill q withcolor 0.6white;
				draw q;
            endfor;
%             for i = 2 upto 4:
%	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)] dashed evenly;
%             endfor;
	endfor;
endfor;
endfig;

beginfig(11);
z0=(0,0);
z1 = z0 + (10a,0);
z2 = z1 + 10a*(cosd(120),sind(120));

z5 = z0 + (5a,10a*sind(60)/3);
z6 = z0 + (5a,0);
z7 = z1 + 5a*(cosd(120),sind(120));
z8 = z0 +  5a*(cosd(60),sind(60));

draw z0--z1--z2-- cycle;
draw z6--z5--z2 dashed evenly;
draw z0--z5--z1 dashed evenly;

label.bot(btex $\mathbf q_1$ etex,z0);
label.top(btex $\mathbf q_3$ etex,z2);
label.bot(btex $\mathbf q_2$ etex,z1);

dotlabel.urt(btex $\mathbf p $ etex,z5);
dotlabel.bot(btex $\mathbf r$ etex,z6);
dotlabel.bot(btex $ $ etex,z7);
dotlabel.bot(btex $ $ etex,z8);
%
%pickup pencircle scaled 1pt;
%drawarrow z0--z1;
%drawarrow z2--z3 withcolor red;
%drawarrow z3..z2..z0 withcolor red;
%drawarrow z1--z4  withcolor green ;
%drawarrow z4..z13..z12  withcolor green ;

endfig;

beginfig(12);
z0=(0,-a);
z1 = z0 + (10a,0);
z2 = z1 + 10a*(cosd(120),sind(120));
z3 = z1 + 10a*(cosd(60),sind(60));
z4 = z1 + (10a,0);
z5 = z0 + (5a,10a*sind(60)/3);

z11 = z1 +(0,0.2a) ;
z12 = z2 +0.2a*(cosd(120),sind(120)) ;
z13 = z3 +0.2a*(cosd(60),sind(60));
z14 = z4 +(0.2a,0) ;
draw z0--z1--z2-- cycle;
draw z2--z3--z1;

label.bot(btex $\mathbf p$ etex,z0);
label.ulft(btex $\mathbf q$ etex,z2);
label.bot(btex $\mathbf p'$ etex,z1);
%label.urt(btex $\mathbf s$ etex,z3);
dotlabel.top(btex $\mathbf c $ etex,z5);

pickup pencircle scaled 1pt;
drawarrow z0--z1 withcolor blue ;
drawarrow z2--z3 withcolor red;
drawarrow z3..z2..z0 withcolor red;
drawarrow z1--z4  withcolor green ;
drawarrow z4..z13..z12  withcolor green ;
endfig;


numeric a;
a=18pt;

beginfig(13);
%M5 
z0 = (4a,4a);
for k = 0, 1, 2,:
	for m =0, 1, 2:%3,4
		if k = 2: %when k =2, 4 ..., we shift y coord -1
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + (m-1)*(0, 4*sqrt(3)*a);
		else: 
			z[1000k + 200m] = z0+ k*(6a, 2*sqrt(3)*a) + m*(0, 4*sqrt(3)*a);
		fi
		for j = 1 upto 4:
            		z[1000k + 200m +j] = z[1000k + 200m]+ 0.2a*(cosd(90j),sind(90j));
		endfor;
		for i = 1 upto 6:
            		z[1000k + 200m +10i] = z[1000k + 200m] + 4a*(cosd(60*i),sind(60*i));
            		for j = 1 upto 4:
            			z[1000k + 200m +10i + j] 
				= z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
            		endfor;
		endfor
 	endfor;
endfor;

%fundamental region
path q;
q = z[1000 +10]--z[1000 +20]--z[1000 +30]--z[1000 +40]--z[1000+50]--z[1000+60]-- cycle;
%q = z[2000 +10]--z[2000 +20]--z[2000 +30]--z[2000 +40]--z[2000 +50]--z[2000+60]-- cycle;
fill q withcolor 0.8white;

%colored points, triangles and dashed lines
for k = 0, 1, 2:
	for m =0, 1, 2:
            path p;
            p= z[1000k + 200m +1]..z[1000k + 200m +2]..z[1000k + 200m +3]..z[1000k + 200m +4].. cycle;
		fill p withcolor red;	
		for i = 1 upto 6:
		z[1000k + 200m +10i] = z[1000k + 200m] + 4a*(cosd(60*i),sind(60*i));
            	for j = 1 upto 4:
            		z[1000k + 200m +10i + j] 
			= z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
            	endfor;
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor  (0,0.5,1);
	
		draw  z[1000k + 200m +10i ]-- z[1000k + 200m] dashed evenly;
            endfor;
            for i = 7 upto 13:
            	z[1000k + 200m +10i] =  
			z[1000k + 200m ] + 2sqrt(3)*a*(cosd(30+ 60*i),sind(30+60*i));
            	for j = 1 upto 4:
            		z[1000k + 200m +10i + j] =
				z[1000k + 200m +10i] + 0.2a*(cosd(90j),sind(90j));
            	endfor;
            	path p;
            	p= z[1000k + 200m +10i +1]..z[1000k + 200m +10i +2]..z[1000k + 200m +10i +3]..z[1000k + 200m +10i +4].. cycle;
            	fill p withcolor green;
            	z[1000k + 200m +10i + 5] =
			 0.8[z[1000k + 200m],z[1000k + 200m +10i]];
            	z[1000k + 200m +10i + 6] =
			 0.6[z[1000k + 200m],z[1000k + 200m + 10i]];
            	z[1000k + 200m +10i + 7] = 
			z[1000k + 200m+10i + 5] +  a*(cosd(120+ 60*i),sind(120+60*i));
            	path q;
		q = z[1000k + 200m +10i + 5]--z[1000k + 200m +10i + 6]--z[1000k + 200m +10i + 7]-- cycle ;
		fill q withcolor 0.6white;
		draw q;
            endfor;
             for i = 2 upto 4:
	        	draw z[1000k + 200m +10i]--z[1000k + 200m +10(i+1)] dashed evenly;
             endfor;
            
	endfor;
endfor;
endfig;


verbatimtex
\end{document}
etex;
end