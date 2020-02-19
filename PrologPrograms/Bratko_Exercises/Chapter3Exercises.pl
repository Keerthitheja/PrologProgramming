% This file contains the solutions to Chapter 3 Exercises of
% Prolog programming by Ivan Bratko
%
%
%

last(Element,[Element]).
last(X,List):-
    List=[_ | Tail],
    last(X,Tail).

del(X,[X],[]).
del(H,[H|Tail],Tail).
del(H,List,List1):-
    List=[H1|Tail],
    del(H,Tail,[H1|List1]).


% 3.3 EVEN or ODD Lists

even_length([]).
even_length([_|Rest]):-
    odd_length(Rest).

odd_length([_]).
odd_length([_|Rest]):-
    even_length(Rest).

%3.4 Reversing a List
reverse_list(Inputlist,Outputlist):-
    reverse(Inputlist,[],Outputlist).

reverse([],Outputlist,Outputlist).

reverse([Head|Tail],List1,List2):-
    reverse(Tail,[Head|List1],List2).
