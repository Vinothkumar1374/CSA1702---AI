% Define the base case for summing integers from 1 to 1.
sum_integers(1, 1).

% Define a recursive rule to sum integers from 1 to N.
sum_integers(N, Sum) :-
    N > 1,
    N1 is N - 1,
    sum_integers(N1, Sum1),
    Sum is Sum1 + N.
