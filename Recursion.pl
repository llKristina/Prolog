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
