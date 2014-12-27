function [rankS,U,H1] = reducere(B)

	r= rank(B);
	[ni nj] = size(B);
	if(r == 0) 
		display('Please provide an input matrix for "B" that have rank greather than 0');
		return;
	end
	
	%step 5.61
	[U,S,V] = svd(B);
	rankS = rank(S);
	Si = S(1:rankS, 1:rankS);
	V1 = V(1:rankS, 1:rankS);
	H1 = Si * V1;

end

