:- dynamic animal/13.

animal(���,0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1).
animal(������,0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1).
animal(������,0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1).
animal(������,0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1).
animal(������,0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1).
animal(����,0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1).
animal(����,0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1).
animal(������,0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1).
animal(����,1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1).
animal(�������,0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1).
animal(����,0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1).
animal(���,0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1).
animal(����,0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1).
animal(�������,0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1).
animal(����,0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1).
animal(����,0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1).
animal(�����,0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1).
animal(�����,0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1).
animal(�������,0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1).
animal(�������,0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1).
animal(���,0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1).
animal(�������,1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1).
animal(���,1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1).
animal(�������,1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1).
animal(�����,1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1).
animal(������,1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1).
animal(��������,1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1).
animal(������,1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1).
animal(������,0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1).
animal(�������_����,0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1).

question1(X) :- write("1. ���� �� �������� � ����? (1 � ��, 0 � ���): "), read(X).
question2(X) :- write("2. �������� �� ��� ��������? (1 � ��, 0 � ���): "), read(X).
question3(X) :- write("3. ���� �� � ���� ������? (1 � ��, 0 � ���): "), read(X).
question4(X) :- write("4. ����� �� ��� ������? (1 � ��, 0 � ���): "), read(X).
question5(X) :- write("5. �������� �� ��� ��������? (1 � ��, 0 � ���): "), read(X).
question6(X) :- write("6. ���� �� � ���� ������? (1 � ��, 0 � ���): "), read(X).
question7(X) :- write("7. ��� �������������? (1 � ��, 0 � ���): "), read(X).
question8(X) :- write("8. ��� �����? (1 � ��, 0 � ���): "), read(X).
question9(X) :- write("9. ���� �� � ���� ����? (1 � ��, 0 � ���): "), read(X).
question10(X):- write("10. ��� ����������? (1 � ��, 0 � ���): "), read(X).
question11(X):- write("11. ����� �� ��������� ��� � ��������? (1 � ��, 0 � ���): "), read(X).
question12(X):- write("12. �������� ������� ����? (1 � ��, 0 � ���): "), read(X).

guess_animal :-
    question1(A1), question2(A2), question3(A3),
    question4(A4), question5(A5), question6(A6),
    question7(A7), question8(A8), question9(A9),
    question10(A10), question11(A11), question12(A12),
    animal(Name, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11),
    format("�� ��������: ~w~n", [Name]), !.

guess_animal :-
    write("�������� � ������ ���������� �� �������."), nl
