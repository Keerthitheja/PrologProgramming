% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own bu
%
%
%

finall(Elem,

p(Graph,Node):-
    member(Parent/Node, Graph), write(Parent), nl, fail.
p(_Graph,_Node):-
    write('end').
