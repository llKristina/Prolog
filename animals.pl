:- dynamic animal/7.

% animal(Ќазвание, ¬одоплавающее, ƒомашнее, Ўерсть, ”меет летать, ’ищник, »меет копыта).
animal(cat,        0, 1, 1, 0, 0, 0).
animal(dog,        0, 1, 1, 0, 1, 0).
animal(horse,      0, 1, 0, 0, 0, 1).
animal(cow,        0, 1, 0, 0, 0, 1).
animal(pig,        0, 1, 0, 0, 0, 1).
animal(sheep,      0, 1, 1, 0, 0, 1).
animal(goat,       0, 1, 1, 0, 0, 1).
animal(chicken,    0, 1, 0, 0, 0, 0).
animal(duck,       1, 1, 0, 0, 0, 0).
animal(parrot,     0, 1, 1, 1, 0, 0).

animal(tiger,      0, 0, 1, 0, 1, 0).
animal(lion,       0, 0, 1, 0, 1, 0).
animal(elephant,   0, 0, 0, 0, 0, 1).
animal(bear,       0, 0, 1, 0, 1, 0).
animal(wolf,       0, 0, 1, 0, 1, 0).
animal(fox,        0, 0, 1, 0, 1, 0).
animal(zebra,      0, 0, 0, 0, 0, 1).
animal(rhino,      0, 0, 0, 0, 0, 1).
animal(giraffe,    0, 0, 0, 0, 0, 1).
animal(kangaroo,   0, 0, 1, 0, 0, 0).

animal(eagle,      0, 0, 0, 1, 1, 0).
animal(penguin,    1, 0, 0, 0, 0, 0).
animal(whale,      1, 0, 0, 0, 1, 0).
animal(dolphin,    1, 0, 0, 0, 1, 0).
animal(shark,      1, 0, 0, 0, 1, 0).
animal(seal,       1, 0, 1, 0, 1, 0).
animal(crocodile,  1, 0, 0, 0, 1, 0).
animal(swan,       1, 0, 0, 1, 0, 0).
animal(ostrich,    0, 0, 0, 0, 0, 0).
animal(bat,        0, 0, 1, 1, 1, 0).

question1(X):- write("∆ивЄт ли животное в воде? (1 Ч да, 0 Ч нет): "), read(X).
question2(X):- write("ƒомашнее ли это животное? (1 Ч да, 0 Ч нет): "), read(X).
question3(X):- write("≈сть ли у животного шерсть? (1 Ч да, 0 Ч нет): "), read(X).
question4(X):- write("”меет ли оно летать? (1 Ч да, 0 Ч нет): "), read(X).
question5(X):- write("явл€етс€ ли оно хищником? (1 Ч да, 0 Ч нет): "), read(X).
question6(X):- write("≈сть ли у него копыта? (1 Ч да, 0 Ч нет): "), read(X).

guess_animal:-
    question1(A1), question2(A2), question3(A3),
    question4(A4), question5(A5), question6(A6),
    animal(Animal, A1, A2, A3, A4, A5, A6),
    write("Ёто животное Ч "), write(Animal), nl.
