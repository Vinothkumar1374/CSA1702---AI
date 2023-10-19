% Define facts about birds and whether they can fly.
bird(canary).
bird(penguin).
bird(sparrow).

can_fly(canary).
cannot_fly(penguin).
can_fly(sparrow).

% Define a rule to determine if a bird can fly.
can_bird_fly(Bird) :- can_fly(Bird), write(Bird), write(' can fly.'), nl.
can_bird_fly(Bird) :- cannot_fly(Bird), write(Bird), write(' cannot fly.'), nl.

% Example queries:
% To check if a canary can fly, you can run:
% can_bird_fly(canary).

% To check if a penguin can fly, you can run:
% can_bird_fly(penguin).

% To check if a sparrow can fly, you can run:
% can_bird_fly(sparrow).
