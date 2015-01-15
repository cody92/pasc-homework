function [Ar, no, T] = obs_vf(A,B,C)

	[ABAR, BBAR, CBAR, T, K] = obsvf(A,B,C);
	[ni nj] = size(ABAR);
	no = sum(K);
	Ar = ABAR(1:ni-no,1:nj-no);
end