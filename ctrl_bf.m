function [Ar, nc] = ctrl_bf(A,B,C)

	[ABAR, BBAR, CBAR, T, K] = ctrbf(A,B,C);
	ABAR
	[ni nj] = size(ABAR);
	nc = sum(K);
	Ar = ABAR(1:ni-nc,1:nj-nc);
end