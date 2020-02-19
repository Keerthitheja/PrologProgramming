append_1([],L,L).
   append_1(List,L2,Result)  :-
    List = [H|T],
    Result = [H|Tail_result],
    append_1(T,L2,Tail_result).
