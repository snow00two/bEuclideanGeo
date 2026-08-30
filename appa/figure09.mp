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

numeric a;
a=20pt;

beginfig(1);
for i=1 upto 5:
	for j=1 upto 7:                         % 101 201 \dots 401 501
   		z[100*i+j]=(a*i,4*a-.5*a*j);      % 102 202 \dots 402 502
	endfor;                                    % \vdots
endfor;                                    % 107 207 \dots 407 507
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+7];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z107);
label.bot(btex $2$ etex,z207);
label.bot(btex $3$ etex,z307);
label.bot(btex $4$ etex,z407);
draw z102--z202;
draw z203--z303;
%draw z304--z404;
draw z104--z204;
draw z205--z305;
draw z306--z406;
label.rt(btex $=\begin{pmatrix}1&2&3&4\\2&4&1&3\end{pmatrix}$ etex,z504);
endfig;

beginfig(2);
for i=1 upto 5:
	for j=1 upto 6:
		z[100*i+j]=(a*i,3.5*a-.5*a*j);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+6];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z106);
label.bot(btex $2$ etex,z206);
label.bot(btex $3$ etex,z306);
label.bot(btex $4$ etex,z406);
draw z102--z202;
draw z203--z303;
draw z304--z404;
draw z105--z205;
label.rt(btex $= \begin{pmatrix}1&2&3&4\\ 4&2&1&3\end{pmatrix}$ etex,z504);
endfig;

beginfig(3)
for i=0 upto 5:
	for j=1 upto 13:
		z[100*i+j]=(a*i,7*a-.5*a*j);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+12];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z112);
label.bot(btex $2$ etex,z212);
label.bot(btex $3$ etex,z312);
label.bot(btex $4$ etex,z412);
draw z102--z202;
draw z203--z303;
%draw z304--z404;
draw z104--z204;
draw z205--z305;
draw z306--z406;
draw z7--z507  dashed evenly;
draw z108--z208;
draw z209--z309;
draw z310--z410;
draw z111--z211;
label.rt(btex $= \begin{pmatrix}1&2&3&4\\2&3&4&1\end{pmatrix}$ etex,z507);
endfig;

beginfig(4);
for i=1 upto 5:
	for j=1 upto 5:
		z[100*i+j]=(a*i,3*a-.5*a*j);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+5];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z105);
label.bot(btex $2$ etex,z205);
label.bot(btex $3$ etex,z305);
label.bot(btex $4$ etex,z405);
label.rt(btex $= \begin{pmatrix}1&2&3&4\\1&2&3&4\end{pmatrix}$ etex,z503);
endfig;

beginfig(5);
for i=1 upto 5:
	for j=1 upto 7:
		z[100*i+j]=(a*i,.5*a*j);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+7];
endfor;
label.bot(btex $1$ etex,z101);
label.bot(btex $2$ etex,z201);
label.bot(btex $3$ etex,z301);
label.bot(btex $4$ etex,z401);
label.top(btex $1$ etex,z107);
label.top(btex $2$ etex,z207);
label.top(btex $3$ etex,z307);
label.top(btex $4$ etex,z407);
draw z102--z202;
draw z203--z303;
%draw z304--z404;
draw z104--z204;
draw z205--z305;
draw z306--z406;
label.rt(btex $= \begin{pmatrix}2&4&1&3\\1&2&3&4\end{pmatrix}=
\begin{pmatrix}1&2&3&4\\3&1&4&2\end{pmatrix}
=\tau^{-1}$ etex,z504);
endfig;

beginfig(6)
for i=0 upto 5:
	for j=1 upto 14:
		z[100*i+j]=(a*i,7.5*a-.5*a*j);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+13];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z113);
label.bot(btex $2$ etex,z213);
label.bot(btex $3$ etex,z313);
label.bot(btex $4$ etex,z413);
draw z102--z202;
draw z203--z303;
%draw z304--z404;
draw z104--z204;
draw z205--z305;
draw z306--z406;
draw z7--z507  dashed evenly;
draw z112--z212;
draw z211--z311;
%draw z310--z410;
draw z110--z210;
draw z209--z309;
draw z308--z408;
label.rt(btex $= \begin{pmatrix}1&2&3&4\\1&2&3&4\end{pmatrix}=\varepsilon$ etex,z507);
endfig;

beginfig(7);
for i=1 upto 5:
	for j=1 upto 5:
		z[100*i+j]=(a*i,3*a-.5*a*j);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+5];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z105);
label.bot(btex $2$ etex,z205);
label.bot(btex $3$ etex,z305);
label.bot(btex $4$ etex,z405);
draw z104--z204;
draw z203--z303;
draw z302--z402;
label.rt(btex $=\begin{pmatrix}1&2&3&4\\2&3&4&1\end{pmatrix}
=:\begin{pmatrix}1&2&3&4\end{pmatrix}$ etex,z504);
endfig;

beginfig(8);
for i=1 upto 5:
	for j=1 upto 3:
		z[100*i+j]=(a*i,2*a-.5*a*j);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+3];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z103);
label.bot(btex $2$ etex,z203);
label.bot(btex $3$ etex,z303);
label.bot(btex $4$ etex,z403);
draw z102--z202;
label.rt(btex $=\begin{pmatrix}1&2\end{pmatrix}$ etex,z502);
endfig;

beginfig(9);
for i=0 upto 5:
	for j=1 upto 7:
		z[100*i+j]=(4*a+a*i,4*a-.5*a*j);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+7];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z107);
label.bot(btex $2$ etex,z207);
label.bot(btex $3$ etex,z307);
label.bot(btex $4$ etex,z407);
draw z106--z206;
draw z5--z505  dashed evenly;
draw z204--z304;
draw z3--z503  dashed evenly;
draw z302--z402;
label.rt(btex $=
\begin{pmatrix}1&2\end{pmatrix}
\begin{pmatrix}2&3\end{pmatrix}
\begin{pmatrix}3&4\end{pmatrix}$ etex,z504);
label.lft(btex $\begin{pmatrix}1&2&3&4\end{pmatrix}=$ etex,z004);
endfig;

beginfig(10);
for i=1 upto 5:
	for j=1 upto 7:
		z[100*i+j]=(a*i,4*a-.5*a*j);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+7];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z107);
label.bot(btex $2$ etex,z207);
label.bot(btex $3$ etex,z307);
label.bot(btex $4$ etex,z407);
draw z102--z202;
draw z203--z303;
draw z304--z404;
draw z205--z305;
draw z106--z206;
label.rt(btex $= \begin{pmatrix}1&2&3&4\\4&2&3&1\end{pmatrix}= \begin{pmatrix}1&4\end{pmatrix}$ etex,z504);
endfig;

beginfig(11);
for i=0 upto 9:
	for j=1 upto 8:
		z[100*i+j]=(a*i,4*a-.5*a*j);
	endfor;
endfor;
for i=1 upto 2:
   draw z[100*i+1]--z[100*i+8];
endfor;
for i=5 upto 7:
   draw z[100*i+1]--z[100*i+8];
endfor;
label.top(btex $i_1$ etex,z101);
label.top(btex $i_2$ etex,z201);
label.top(btex $i_{r-2}$ etex,z501);
label.top(btex $i_{r-1}$ etex,z601);
label.top(btex $i_{r}$ etex,z701);
label.bot(btex $i_1$ etex,z108);
label.bot(btex $i_2$ etex,z208);
label.bot(btex $i_{r-2}$ etex,z508);
label.bot(btex $i_{r-1}$ etex,z608);
label.bot(btex $i_{r}$ etex,z708);
draw z107--z207;
draw z206--z306;
draw z404--z504;
draw z503--z603;
draw z602--z702;
label.rt(btex $=
\begin{pmatrix}i_1&i_2\end{pmatrix}
\dots
\begin{pmatrix}i_{r-2}&i_{r-1}\end{pmatrix}
\begin{pmatrix}i_{r-1}&i_{r}\end{pmatrix}$ etex,z804);
label.rt(btex $\cdots$ etex,z305);
endfig;


beginfig(12);
for i=0 upto 5:
	for j=1 upto 7:
		z[100*i+j ] = (4*a+a*i,4*a-.5*a*j);
		z[100*i+j+ 10] = z[100*i+j ] + (0.1a, 0);
		z[100*i+j+ 90] = z[100*i+j ] + (0.9a, 0);
	endfor;
endfor;
for i=1 upto 4:
   draw z[100*i+1]--z[100*i+7];
endfor;
label.top(btex $1$ etex,z101);
label.top(btex $2$ etex,z201);
label.top(btex $3$ etex,z301);
label.top(btex $4$ etex,z401);
label.bot(btex $1$ etex,z107);
label.bot(btex $2$ etex,z207);
label.bot(btex $3$ etex,z307);
label.bot(btex $4$ etex,z407);
draw z102--z202;
draw z3--z503  dashed evenly;
draw z104--z194;
draw z214--z304;
draw z5--z505  dashed evenly;
draw z106--z196;
draw z216--z296;
draw z316--z406;
label.rt(btex $=
\begin{pmatrix}1&4\end{pmatrix}
\begin{pmatrix}1&3\end{pmatrix}
\begin{pmatrix}1&2\end{pmatrix}$ etex,z504);
label.lft(btex $\begin{pmatrix}1&2&3&4\end{pmatrix}=$ etex,z004);
endfig;


verbatimtex
\end{document}
etex;
end