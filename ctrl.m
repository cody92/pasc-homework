%% ctrl: Descompunerea de controlabilitate
function [A,B,r,v] = ctrl(A,B,C)

	[ni nj] = size(A);
	[mi mj] = size(B);
	k = 1;
	[r1 U1 H1] = reducere(B);
	r1
	A= left_multiplication(A,U1);
	A= right_multiplication(A,U1);
	U = U1;
	rv = 0;
	r = r1;
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
				[r1 U1 H1] = reducere(G);
				A( r + 1 : ni, r + 1 : ni) = left_multiplication(A( r + 1 : ni, r + 1 : ni), U1);
				A( r + 1 : ni, r + 1 : ni) = right_multiplication(A( r + 1 : ni, r + 1 : ni), U1);
				U( r + 1 : ni, r + 1 : ni) = left_multiplication(U( r + 1 : ni, r + 1 : ni), U1);
				rv = r;
				r = r + r1;
			end

		end
	end
end