% Define the graph's edges and costs.
edge(a, b, 2).
edge(a, c, 4).
edge(b, d, 5).
edge(b, e, 10).
edge(c, f, 3).
edge(c, g, 8).
edge(d, h, 7).
edge(e, i, 6).
edge(f, j, 9).
edge(g, k, 5).
edge(h, l, 8).
edge(i, m, 7).
edge(j, n, 4).
edge(k, o, 11).
edge(l, p, 9).
edge(m, q, 12).
edge(n, r, 3).
edge(o, s, 14).
edge(p, t, 15).
edge(q, u, 6).
edge(r, v, 13).
edge(s, w, 7).
edge(t, x, 17).
edge(u, y, 18).

% Define the heuristic values for each node.
heuristic(b, 10).
heuristic(c, 8).
heuristic(d, 7).
heuristic(e, 6).
heuristic(f, 5).
heuristic(g, 6).
heuristic(h, 5).
heuristic(i, 4).
heuristic(j, 3).
heuristic(k, 4).
heuristic(l, 3).
heuristic(m, 2).
heuristic(n, 1).
heuristic(o, 2).
heuristic(p, 1).
heuristic(q, 3).
heuristic(r, 2).
heuristic(s, 1).
heuristic(t, 2).
heuristic(u, 1).
heuristic(v, 3).
heuristic(w, 2).
heuristic(x, 1).
heuristic(y, 0).

% Define the Best First Search algorithm.
best_first_search(Start, Goal, Path) :-
    best_first_search([node(Start, 0, 0)], Goal, [Start], ReversePath),
    reverse(ReversePath, Path).

best_first_search([node(Goal, _, _)|_], Goal, Path, Path) :- !.
best_first_search([node(CurrentNode, _, _)|Open], Goal, AccPath, Path) :-
    findall(node(Child, H, F), (
        edge(CurrentNode, Child, _),
        not(member(Child, AccPath)),
        heuristic(Child, H),
        F is H
    ), Children),
    append(Children, Open, NewOpen),
    sort(NewOpen, SortedOpen),
    best_first_search(SortedOpen, Goal, [CurrentNode|AccPath], Path).

% Example query:
% To find the path from 'a' to 'y' using Best First Search, you can run:
% best_first_search(a, y, Path).
% Define the graph's edges and costs.
edge(a, b, 2).
edge(a, c, 4).
edge(b, d, 5).
edge(b, e, 10).
edge(c, f, 3).
edge(c, g, 8).
edge(d, h, 7).
edge(e, i, 6).
edge(f, j, 9).
edge(g, k, 5).
edge(h, l, 8).
edge(i, m, 7).
edge(j, n, 4).
edge(k, o, 11).
edge(l, p, 9).
edge(m, q, 12).
edge(n, r, 3).
edge(o, s, 14).
edge(p, t, 15).
edge(q, u, 6).
edge(r, v, 13).
edge(s, w, 7).
edge(t, x, 17).
edge(u, y, 18).

% Define the heuristic values for each node.
heuristic(b, 10).
heuristic(c, 8).
heuristic(d, 7).
heuristic(e, 6).
heuristic(f, 5).
heuristic(g, 6).
heuristic(h, 5).
heuristic(i, 4).
heuristic(j, 3).
heuristic(k, 4).
heuristic(l, 3).
heuristic(m, 2).
heuristic(n, 1).
heuristic(o, 2).
heuristic(p, 1).
heuristic(q, 3).
heuristic(r, 2).
heuristic(s, 1).
heuristic(t, 2).
heuristic(u, 1).
heuristic(v, 3).
heuristic(w, 2).
heuristic(x, 1).
heuristic(y, 0).

% Define the Best First Search algorithm.
best_first_search(Start, Goal, Path) :-
    best_first_search([node(Start, 0, 0)], Goal, [Start], ReversePath),
    reverse(ReversePath, Path).

best_first_search([node(Goal, _, _)|_], Goal, Path, Path) :- !.
best_first_search([node(CurrentNode, _, _)|Open], Goal, AccPath, Path) :-
    findall(node(Child, H, F), (
        edge(CurrentNode, Child, _),
        not(member(Child, AccPath)),
        heuristic(Child, H),
        F is H
    ), Children),
    append(Children, Open, NewOpen),
    sort(NewOpen, SortedOpen),
    best_first_search(SortedOpen, Goal, [CurrentNode|AccPath], Path).

% Example query:
% To find the path from 'a' to 'y' using Best First Search, you can run:
% best_first_search(a, y, Path).
% Define the graph's edges and costs.
edge(a, b, 2).
edge(a, c, 4).
edge(b, d, 5).
edge(b, e, 10).
edge(c, f, 3).
edge(c, g, 8).
edge(d, h, 7).
edge(e, i, 6).
edge(f, j, 9).
edge(g, k, 5).
edge(h, l, 8).
edge(i, m, 7).
edge(j, n, 4).
edge(k, o, 11).
edge(l, p, 9).
edge(m, q, 12).
edge(n, r, 3).
edge(o, s, 14).
edge(p, t, 15).
edge(q, u, 6).
edge(r, v, 13).
edge(s, w, 7).
edge(t, x, 17).
edge(u, y, 18).

% Define the heuristic values for each node.
heuristic(b, 10).
heuristic(c, 8).
heuristic(d, 7).
heuristic(e, 6).
heuristic(f, 5).
heuristic(g, 6).
heuristic(h, 5).
heuristic(i, 4).
heuristic(j, 3).
heuristic(k, 4).
heuristic(l, 3).
heuristic(m, 2).
heuristic(n, 1).
heuristic(o, 2).
heuristic(p, 1).
heuristic(q, 3).
heuristic(r, 2).
heuristic(s, 1).
heuristic(t, 2).
heuristic(u, 1).
heuristic(v, 3).
heuristic(w, 2).
heuristic(x, 1).
heuristic(y, 0).

% Define the Best First Search algorithm.
best_first_search(Start, Goal, Path) :-
    best_first_search([node(Start, 0, 0)], Goal, [Start], ReversePath),
    reverse(ReversePath, Path).

best_first_search([node(Goal, _, _)|_], Goal, Path, Path) :- !.
best_first_search([node(CurrentNode, _, _)|Open], Goal, AccPath, Path) :-
    findall(node(Child, H, F), (
        edge(CurrentNode, Child, _),
        not(member(Child, AccPath)),
        heuristic(Child, H),
        F is H
    ), Children),
    append(Children, Open, NewOpen),
    sort(NewOpen, SortedOpen),
    best_first_search(SortedOpen, Goal, [CurrentNode|AccPath], Path).

% Example query:
% To find the path from 'a' to 'y' using Best First Search, you can run:
% best_first_search(a, y, Path).
