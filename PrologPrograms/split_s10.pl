split(List,L,R):-
    List = [A,B|Tail],
    split_acc([A,B|Tail],[A],[B],L,R).
split_acc(_,L,R,L,R).
split_acc([H1,H2|Tail],[H1|Left_acc],[H2|Right_acc],L,R):-
    split_acc(Tail,Left_acc,Right_acc,L,R).
