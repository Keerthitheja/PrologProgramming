% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

empty_set([]).
add_to_set(E,[],[E]).
add_to_set(E,[E|T],[E|T]).
add_to_set(E,List,R):-
    List=[H|T],
    not(E=H),
    add_to_set(E,T,R1),
    R=[H|R1].
member_of_set(E,[E|_]).
member_of_set(E,Set):-
    Set=[_|T],
    member_of_set(E,T).

delete_from_set(_,[],[]).
delete_from_set(E,S,SN):-
    S=[E|T],
    delete_from_set(E,T,SN).

delete_from_set(E,S,SN):-
    S=[H|T],
    not(E=H),
    delete_from_set(E,T,R1),
    SN=[H|R1].

union_set([],S,S).
union_set(X,X,X).
union_set(S1,S2,Result):-
    S1=[H|T],
    add_to_set(H,S2,Result1),
    union_set(T,Result1,Result).

intersection_set([],_,[]).
intersection_set(S1,S2,Result):-
    S1=[H|T],
    not(member_of_set(H,S2)),
    intersection_set(T,S2,Result).
intersection_set(S1,S2,Result):-
    S1=[H|T],
    member_of_set(H,S2),
    intersection_set(T,S2,Result1),
    Result=[H|Result1].



