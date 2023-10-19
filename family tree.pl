% Define individuals and their relationships.
male(john).
male(bob).
male(mike).
female(mary).
female(susan).
female(lisa).

parent(john, mary).
parent(john, mike).
parent(bob, susan).
parent(mary, lisa).

% Define rules for relationships.
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Example queries:
% To find the mother of lisa, you can run:
% mother(X, lisa).

% To find the siblings of mike, you can run:
% sibling(mike, Sibling).

% To find the grandparents of lisa, you can run:
% grandparent(Grandparent, lisa).
