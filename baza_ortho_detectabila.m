%% basa vectoriala ortogonala pentru spatiul detectabil si nedetectabil
%%Algoritmul 5.2
%nc rang nedetectabil
function [Bd, Bnd] = baza_ortho_detectabila(Ar, U, nc)
	[nnc nnc] = size(Ar);
	[Us, Ts] = schur(Ar);
	[V, TS] = ordschur(Us, Ts, 'lhp');
	[ni nj] = size(TS);
	na = 0;
	for i = 1:ni
		if TS(i,i) < 0
			na = na + 1;
		else
			break;
		end
	end
	%Uu = [U1*V U2]
	Uu = [U(:,1:nnc)*V U(:,nnc:nc+nnc)];
	Bnd = Uu(:,1:nc);
	Bd = Uu(:,nc+1:nnc+nc);
end