man:- man(X),print(X),nl,fail.
mother:- parent(X,Y), woman(X), print(X), nl, fail.
mother(X,Y):- parent(X,Y), woman(X).
brother(X,Y):- parent(Z,Y), parent(Z,X), man(X).

father(X,Y):-parent(X,Y), man(X).
father:-parent(X,Y),man(X),print(X),nl,fail.

sister(X,Y):-parent(Z,Y), parent(Z,X), woman(X),X\=Y.
sisters(X):-setof(S,sister(S,X),Sisters), print(Sisters).

grand_ma(X,Y):-woman(X),parent(X,Z),parent(Z,Y).
grand_mas(X):-setof(G,grand_ma(G,X), Grannies), print(Grannies).
