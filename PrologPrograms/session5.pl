% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

advice(List):-
	calc_reaction(List,Nr),
	message(Nr,Message),
	write(Message),nl.

reacts(vinegar,salt,25).
reacts(salt,water,3).
reacts('brown soap',water,10).
reacts('pili pili', milk,7).
reacts(tonic,bailey,8).

reaction(ProdA,ProdB,N) :-
	reacts(ProdA,ProdB,N).
reaction(ProdA,ProdB,N) :-
	reacts(ProdB,ProdA,N).
reaction(ProdA,ProdB,0). % Nothing is known about reaction between ProdA and ProdB

calc_reaction([],0).
calc_reaction([H|T],N):-
	calc_reaction_2(H,T,N1),
	calc_reaction(T,N2),
	N is N1+N2.

calc_reaction_2(_,[],0).
calc_reaction_2(A,[H|T],N):-
	reaction(A,H,N1),
	calc_reaction_2(A,T,N2),
	N is N1+N2.

message(N,'This is a mixture for which no irritation is expected'):-
	N=<5.
message(N,'This mixture could cause minor irritation, be careful'):-
	N=<12,
	N>=6.
message(N,'This mixture causes minor burning wounds, do not use this!'):-
	N=<20,
	N>=13.
message(N,'Warning: this mixture causes severe burning wounds, never use this!'):-
	N=<30,
	N>=21.
message(N,'WARNING!! This is a potential lethal mixture!'):-
	N>30.
