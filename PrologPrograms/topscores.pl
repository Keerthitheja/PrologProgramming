% Constraint Logic Programming
:- use_module(library(dif)).	% Sound inequality
:- use_module(library(clpfd)).	% Finite domain constraints
:- use_module(library(clpb)).	% Boolean constraints
:- use_module(library(chr)).	% Constraint Handling Rules
:- use_module(library(when)).	% Coroutining
%:- use_module(library(clpq)).  % Constraints over rational numbers

% Your program goes here


/** <examples> Your example queries go here, e.g.
?- X #> 1.
*/
score(danny,fai,20).
score(danny,plpm,15).
score(toon,fai,14).
score(toon,plpm,18).
score(toon,uai,4).

topscore(Student,Subject,Score):-
    findall(Student/Score, score(Student,Subject,Score), StudentScoreList),
    findtopscore(StudentScoreList,Student,Score).

findtopscore([],X,Y):-
    score(X,_,Y).
findtopscore([Student1/Score1,Student2/Score2|Tail],Student,Score):-
    (   gt(Score1,Score2) ->
    findtopscore(Tail,Student1,Score1);
    findtopscore(Tail,Student2,Score2)).

gt(X,Y):-
    X >Y,!.
