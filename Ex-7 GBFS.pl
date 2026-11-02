% Graph
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(c,g).
edge(f,h).

% Heuristic values
h(a,7).
h(b,6).
h(c,4).
h(d,5).
h(e,3).
h(f,2).
h(g,3).
h(h,0).

% Greedy Best First Search
greedy(Start, Goal, Path) :-
    search(Start, Goal, [Start], Path).

search(Goal, Goal, Visited, Path) :-
    reverse(Visited, Path).

search(Node, Goal, Visited, Path) :-
    edge(Node, Next),
    \+ member(Next, Visited),
    search(Next, Goal, [Next|Visited], Path).