man:- man(X),print(X),nl,fail.
mother:- parent(X,Y), woman(X), print(X), nl, fail.
mother(X,Y):- parent(X,Y), woman(X).
brother(X,Y):- parent(Z,Y), parent(Z,X), man(X).

father(X,Y):-parent(X,Y), man(X).
father:-parent(X,Y),man(X),print(X),nl,fail.
