gt(X,Y):- X > Y.
merge_1([], L, L).
merge_1(L, [], L).
merge_1([H1|T1], [H2|T2], [H1|Res]) :-
gt(H2, H1),!,
merge_1(T1, [H2|T2], Res).
merge_1([H1|T1], [H2|T2], [H2|Res]) :-
merge_1([H1|T1], T2, Res).
