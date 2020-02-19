% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

solution([]).

solution([c(X,Y)|Others]):-
    solution(Others),
    member(Y,[1,2,3,4,5,6,7,8]),
    nonattack(c(X,Y),Others).

nonattack(_,[]).
nonattack(c(X,Y),[c(X1,Y1)|Others]):-
    Y =\= Y1,
    Y1-Y =\= X1-X,
    Y1-Y =\= X-X1,
    nonattack(c(X,Y),Others).

member(X,[X|_]).
member(X,[_|Z]):-
    member(X,Z).
