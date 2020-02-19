% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N):-
    f(X, N).
