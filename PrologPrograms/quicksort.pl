% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

quicksort(List,SortedList):-
    quicksort_acc(List,[],SortedList).

quicksort_acc([],SortedList,SortedList).
quicksort_acc(List,SortedList_acc,SortedList_Result):-
    List = [H | Tail],
    split(H,Tail,Small,Big),
    quicksort_acc(Big,SortedList_acc,NewAcc),
    quicksort_acc(Small, [H|NewAcc], SortedList_Result).

split(_, [], [], []).
split(X, [Y| Tail], [Y | Small], Big):-
         X > Y, !,
	split(X, Tail, Small, Big).
split(X, [Y| Tail], Small, [Y | Big]):-
	split(X, Tail, Small, Big).
