p(Graph,Node):-
    member(Parent/Node,Graph), write(Parent),nl,!, true.
p(Graph,Node):- write('end').
