%% ctrl: Descompunerea de controlabilitate
function [A,B,r,v] = ctrl(A,B,C)

	[ni nj] = size(A);
	[mi mj] = size(B);
	k = 1;
	[Q, R] = reducere_qr(B);
	A= left_multiplication(A, Q');
	g = A(2:ni, 1);
	F = A(2:ni, 2:ni);
	r = 1;
	ok = true;
	while (norm(g, 2) > 0)
		[Q1, R] = reducere_qr(g);
		A(r + 1:ni, :) = left_multiplication(A(r + 1:ni, :),Q1');
		A(:, r+1:n) = right_multiplication(A(:, r+1:n), Q1);
	end
end