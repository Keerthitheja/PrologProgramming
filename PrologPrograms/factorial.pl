% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.
factorial(Num,Result):-
    Num = 0,
    Result = 1.
factorial(Num, Result):-
    Num > 0,
    Num1 is Num-1,
    factorial(Num1, Result1),
    Result is Result1*Num.

sumlist([],0).
sumlist(List,Result):-
        List = [H|Tail],
        number(H),
        sumlist(Tail,Result1),
        Result is Result1 + H.
