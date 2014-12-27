%% ctrl: Descompunerea de controlabilitate
function [A,B] = ctrl(A,B,C)

	[ni nj] = size(A);
	[mi mj] = size(B);
	k = 1;
	[r(1),U(1),H(1)] = reducere(B);
	A= left_multiplication(A,U(1));
	A= right_multiplication(A,U(1));
	U = U(1);
	rv = 0;
	r = r(1);
	ok = true;
	while (ok == true)
		v = k;
		if (r == ni) 
			ok = false;
			display('Perechea (A,B) este controlabila');
		else
			G = A(r + 1 : ni, rv + 1 : r);
			if(norm(G, 1) == 0)
				ok = false;
			else
				k = k + 1;
				[r(k),U(k),H(k)] = reducere(G);
				A( r + 1 : n, r + 1 : n) = left_multiplication(A( r + 1 : n, r + 1 : n), U(k));
				A( r + 1 : n, r + 1 : n) = right_multiplication(A( r + 1 : n, r + 1 : n), U(k));
				U( r + 1 : n, r + 1 : n) = left_multiplication(U( r + 1 : n, r + 1 : n), U(k));
				rv = r;
				r = r + r(k);
			end

		end
	end
end