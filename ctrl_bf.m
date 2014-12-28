function [ABAR, BBAR, CBAR, T, K] = ctrl_bf(A,B,C)

	[ABAR, BBAR, CBAR, T, K] = ctrbf(A,B,C)
	nc = sum(K);
end