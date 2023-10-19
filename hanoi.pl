% Define the hanoi predicate with 4 arguments:
% - N: the number of disks to move
% - Source: the source peg
% - Target: the target peg
% - Spare: the spare peg

hanoi(0, _, _, _) :- !.
hanoi(N, Source, Target, Spare) :-
    N > 0,
    N1 is N - 1,
    hanoi(N1, Source, Spare, Target),     % Move N-1 disks from Source to Spare
    move_disk(Source, Target),            % Move the Nth disk from Source to Target
    hanoi(N1, Spare, Target, Source).     % Move N-1 disks from Spare to Target

% Define the move_disk predicate to print the move operation
move_disk(From, To) :-
    write('Move a disk from '), write(From), write(' to '), write(To), nl.

% Example usage:
% hanoi(3, 'A', 'C', 'B').
