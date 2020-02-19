% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,


ten_times(NumberList0, NumberList10):-
	switch_unsorted(NumberList0, NumberList1),
	switch_unsorted(NumberList1, NumberList2),
	switch_unsorted(NumberList2, NumberList3),
	switch_unsorted(NumberList3, NumberList4),
	switch_unsorted(NumberList4, NumberList5),
	switch_unsorted(NumberList5, NumberList6),
	switch_unsorted(NumberList6, NumberList7),
	switch_unsorted(NumberList7, NumberList8),
	switch_unsorted(NumberList8, NumberList9),
	switch_unsorted(NumberList9, NumberList10).

switch_unsorted([], []).
switch_unsorted([X], [X]).
switch_unsorted([X, Y|List], [Y,X|List]):-
	X > Y.
switch_unsorted([X, Y|List], [X|Rlist]):-
	X =< Y,
	switch_unsorted([Y|List],Rlist).
