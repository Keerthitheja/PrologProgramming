% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

flattens([],[]).
flattens(List,Result):-
    List=[List1,List2],
    concatenate_list(List1,List2,Result).

concatenate_list([],X,X).
concatenate_list(L1,L2,R):-
    L1=[H|T],
    concatenate_list(T,L2,R1),
    R = [H|R1].

is_list1([_|_]).
is_list1([]).
flatten1([], []).
flatten1([X|Y], List):-
	is_list1(X),  % X is a non-empty list
	flatten1(X,List1),
	flatten1(Y, List2),
	concatenate_list(List1,List2,List).
flatten1([X|Y], [X|List]):-
	not(is_list1(X)),
	flatten1(Y, List).
