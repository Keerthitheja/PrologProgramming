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

classify([],[],[]).
classify([H|Tail],[H|Vowel_tail],Consonants):-
    vowels(H),
    classify(Tail, Vowel_tail, Consonants).
classify([H|Tail],Vowels,[H|Consonant_tail]):-
    \+ vowels(H),
    classify(Tail, Vowels,Consonant_tail).
vowels(a).
vowels(e).
vowels(i).
vowels(o).
vowels(u).
