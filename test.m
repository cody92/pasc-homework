clear all;
clc;
A= [
3 3 0 2;
0 87 0 60;
6 3 -3 2;
0 -126 0 -87;
];
B= [
0 2;
3 -2;
-1 5;
4 -1;
];
%rank(A)
%A= [1 5 0; 2 6 0; 3 4 0;];
%rank(A)
%[U,S,V] = svd(A);

n = 4;

%A = rand(n,n);
%B = rand(n,n);

C = rand(n,n);

[A1,B1,r,v] = ctrl(A,B,C)
[T1,T2,T3,T4,T5] = ctrbf(A,B,C)