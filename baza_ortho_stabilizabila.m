%% basa vectoriala ortogonala pentru spatiul stabilizabil si nestabilizabil
%%Algoritmul 5.2
%nc rang controlabil
function [Bs, Bns] = baza_ortho_stabilizabila(Ar, U, nc)
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
	Bns = Uu(:,1:nc);
	Bs = Uu(:,nc+1:nnc+nc);
end