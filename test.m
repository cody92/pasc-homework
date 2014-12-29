clear all;
clc;
A= [
3 3 0 2 1 5;
0 87 0 60 -2 -6;
6 3 -3 2 -8 -12;
0 -126 0 -87 -1 -5;
-2 -16 52 87 5 5;
-41 -26 12 -21 50 25;
];
B= [
0 2;
3 -2;
-1 5;
4 -1;
50 -10;
-15 80;
];
%rank(A)
%A= [1 5 0; 2 6 0; 3 4 0;];
%rank(A)
%[U,S,V] = svd(A);

n = 6;

%A = rand(n,n);
%B = rand(n,n);

C = rand(n,n);

%[A1,B1,r,v] = ctrl(A,B,C)
[ABAR, BBAR, CBAR, T, K] = ctrbf(A,B,C);
[Bo] = baza_ortho(A)