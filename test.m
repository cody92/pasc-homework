clear all;
clc;
%A= [1 5 7; 2 6 8; 3 4 8; 5 2 1; 8 4 6; 8 4 3; 5 3 8];
%rank(A)
%A= [1 5 0; 2 6 0; 3 4 0;];
%rank(A)
%[U,S,V] = svd(A);

n = 5;

A = rand(n,n);
B = rand(n,n);
C = rand(n,n);

[A1,B1] = ctrl(A,B,C)
