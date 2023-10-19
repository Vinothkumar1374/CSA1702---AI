% Define initial state of the monkey, box, banana, and location of each item.
initial_state(state(at_door, on_floor, at_window, has_not)).

% Define actions to move the monkey, push the box, and grab the banana.
% move(X, Y, S1, S2) represents moving from X to Y in state S1, resulting in state S2.
move(at_window, on_box, state(at_window, on_box, at_window, has_not), state(at_window, on_floor, at_window, has_not)).
move(at_window, on_box, state(at_window, on_floor, at_window, has_not), state(at_window, on_box, at_window, has_not)).
move(at_door, on_floor, state(at_door, on_floor, at_window, has_not), state(at_door, on_box, at_window, has_not)).
move(at_door, on_box, state(at_door, on_box, at_window, has_not), state(at_door, on_floor, at_window, has_not)).
move(Location, Location, S, S). % A no-op move.

% Define the goal state: monkey has the banana.
goal_state(state(_, _, _, has)).

% Define the predicate to check if a state is a goal state.
goal_state_reached(State) :- goal_state(State).

% Define the predicate to check if a state is legal.
legal_state(state(_, _, _, _)).

% Define the predicate to check if a move is legal.
legal_move(Move, State) :- move(Move, _, State, _), legal_state(State).

% Define the plan to achieve the goal state.
plan(State, Actions, State) :- goal_state_reached(State), Actions = [].
plan(State1, Actions, State3) :-
    legal_move(Move, State1),
    move(Move, NewLocation, State1, State2),
    plan(State2, RestOfActions, State3),
    Actions = [Move | RestOfActions].

% Example query to find the plan to achieve the goal state:
% ?- initial_state(InitialState), plan(InitialState, Actions, GoalState).
