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

%Найти количество делителей числа
% count_divisors_down(+Number, -Count)
count_divisors_down(Number, Count) :-
    count_divisors_down_acc(Number, 1, 0, Count).

count_divisors_down_acc(Number, Divisor, CurrentCount, FinalCount) :-
    Divisor =< Number, !,
    (Number mod Divisor =:= 0 -> NewCount is CurrentCount + 1 ; NewCount is CurrentCount),
    NextDivisor is Divisor + 1,
    count_divisors_down_acc(Number, NextDivisor, NewCount, FinalCount).

count_divisors_down_acc(Number, Divisor, Count, Count) :-
    Divisor > Number.


% count_divisors_up(+Number, -Count)
count_divisors_up(Number, Count) :-
    count_divisors_up_helper(Number, 1, Count).

count_divisors_up_helper(Number, Divisor, 0) :-
    Divisor > Number, !.

count_divisors_up_helper(Number, Divisor, Count) :-
    Divisor =< Number,
    (Number mod Divisor =:= 0 -> Delta = 1 ; Delta = 0),
    NextDivisor is Divisor + 1,
    count_divisors_up_helper(Number, NextDivisor, RestCount),
    Count is RestCount + Delta.

%Сдвиг влево на 3 позиции
% read_input(-List)
read_input(List) :-
    write('Введите список: '), nl,
    read(List).

% solve(+List, -Shifted)
solve(List, Shifted) :-
    append(Front, Rest, List),
    length(Front, 3),
    append(Rest, Front, Shifted).

% print_result(+List)
print_result(Result) :-
    write('Результат сдвига: '), write(Result), nl.

main_1 :-
    read_input(List),
    solve(List, Result),
    print_result(Result).


%Элементы перед первым минимальным
% read_input(-List)
read_input(List) :-
    write('Введите список: '), nl,
    read(List).

% solve(+List, -BeforeMin)
solve(List, BeforeMin) :-
    min_member(Min, List),
    append(BeforeMin, [Min|_], List).

% print_result(+Result)
print_result(BeforeMin) :-
    write('Элементы до первого минимума: '), write(BeforeMin), nl.

main_2 :-
    read_input(List),
    solve(List, Result),
    print_result(Result).


%Проверка локального максимума по индексу
% read_input(-List, -Index)
read_input(List, Index) :-
    write('Введите список: '), nl,
    read(List),
    write('Введите индекс (с 0): '), nl,
    read(Index).

% solve(+List, +Index, -IsMax)
solve(List, Index, yes) :-
    nth0(Index, List, Elem),
    Index > 0,
    PrevIndex is Index - 1,
    nth0(PrevIndex, List, Prev),
    NextIndex is Index + 1,
    nth0(NextIndex, List, Next),
    Elem > Prev,
    Elem > Next, !.

solve(_, _, no).

% print_result(+IsMax)
print_result(yes) :- write('Да, локальный максимум'), nl.
print_result(no) :- write('Нет, не максимум'), nl.

main_3 :-
    read_input(List, Index),
    solve(List, Index, Result),
    print_result(Result).
