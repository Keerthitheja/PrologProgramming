% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

smaller(_,[],[]).

smaller(N,[Head|Tail], Tail2):-
   Head =< N, smaller(N,Tail,Tail2).

smaller(N,[Head | Tail],[Head | Tail2]):-
    Head > N, smaller(N,Tail,Tail2).

switch_first_two([H1,H2|T],[H2,H1|T]).
switch_every_two([],[]).
switch_every_two([X],[X]).
switch_every_two(L1,Result):-
    L1=[H1,H2|T],
    switch_every_two(T,Result1),
    Result=[H2,H1 | Result1].
