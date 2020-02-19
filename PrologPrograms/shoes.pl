% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

:- use_module(library(clpfd)).
start:-
	Shoes = [EE,FF,PP,SS],
	Stores = [F,H,S,T],
/*	domain(Shoes, 1,4),
	domain(Stores,1,4),
*/
	Shoes ins 1..4,
	Stores ins 1..4,
	all_different(Shoes),
	all_different(Stores),
	FF #= H,
	PP +1 #\= T,
	F #= 2,
	S + 2 #= SS,
	write('Flats: '), writeln(FF),
	write('Espa: '), writeln(EE),
	write('Pumps: '), writeln(PP),
	write('Sandals: '), writeln(SS),
	write('Foot: '), writeln(F),
	write('Heels: '), writeln(H),
	write('Shoe: '), writeln(S),
	write('Tootsies: '), writeln(T).
