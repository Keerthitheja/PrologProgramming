% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

split_matrix([], [], []).
split_matrix([[A|B]|C], [A|First], [B|WithoutFirst]):-
	split_matrix(C, First, WithoutFirst).

transpose([[]|_], []).
transpose(Matrix, [FirstColumn|TransposedRestMatrix]):-
        % FirstColumn will become the first row in the transposed matrix
	split_matrix(Matrix, FirstColumn, RestMatrix),
	transpose(RestMatrix, TransposedRestMatrix).
