% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

book(1,"The art of prolog",400).
book(23,"The mystery of Strawberries",42).
person("Statler").
person("Waldorf").
wrote("Statler",1).
wrote("Waldorf",23).
hates("Statler",1).
owns("Waldorf",23).
proud_author(X):-owns(X,_).
kitab(1,"The art of prolog",400):-book(1,"The art of prolog",400).
kitab(23,"The mystery of Strawberries",42):-book(23,"The mystery of Strawberries",42).
insaan("Statler"):-person("Statler").
insaan("Waldorf"):-person("Waldorf").
likha("Statler",1):-wrote("Statler",1).
likha("Waldorf",23):-wrote("Waldorf",23).
naphrat("Statler",1):-hates("Statler",1).
apnawaala("Waldorf",23):-owns("Waldorf",23).
