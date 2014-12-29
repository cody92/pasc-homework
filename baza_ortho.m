%% baza_ortho: Se determina o baza ortogonala a subspatiului A
%%Algoritmul 5.2
function [Bo] = baza_ortho(Ar)
	[U, T] = schur(Ar);
	%[Qo, To] = schord(Q,T,4)
	[US,TS] = ordschur(U,T,'lhp')
	[ni nj] = size(TS);
	na = 0;
	for i = 1:ni
		if TS(i,i) < 0
			na = na + 1;
		else
			break;
		end
	end
	US = US';
	Bo = US(:,1:na);
end