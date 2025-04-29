%Найти минимальную цифру числа.
find_min_digit_down(Number, MinDigit) :-
    find_min_digit_down_acc(Number, 9, MinDigit).

find_min_digit_down_acc(0, MinDigit, MinDigit) :- !.

find_min_digit_down_acc(Number, CurrentMin, MinDigit) :-
    Digit is Number mod 10,
    NewMin is min(CurrentMin, Digit),
    NextNumber is Number // 10,
    find_min_digit_down_acc(NextNumber, NewMin, MinDigit).

% find_min_digit_up(+Number, -MinDigit)
find_min_digit_up(0, 9) :- !.

find_min_digit_up(Number, MinDigit) :-
    Digit is Number mod 10,
    NextNumber is Number // 10,
    find_min_digit_up(NextNumber, RestMin),
    MinDigit is min(Digit, RestMin).


%Найти количество цифр числа, меньших 3
% count_digits_down(+Number, -Count)
count_digits_down(Number, Count) :-
    count_digits_down_acc(Number, 0, Count).

count_digits_down_acc(0, Count, Count) :- !.

count_digits_down_acc(Number, CurrentCount, FinalCount) :-
    Digit is Number mod 10,
    (Digit < 3 -> NewCount is CurrentCount + 1 ; NewCount is CurrentCount),
    NextNumber is Number // 10,
    count_digits_down_acc(NextNumber, NewCount, FinalCount).


% count_digits_up(+Number, -Count)
count_digits_up(0, 0) :- !.

count_digits_up(Number, Count) :-
    Digit is Number mod 10,
    NextNumber is Number // 10,
    count_digits_up(NextNumber, RestCount),
    (Digit < 3 -> Count is RestCount + 1 ; Count is RestCount).

