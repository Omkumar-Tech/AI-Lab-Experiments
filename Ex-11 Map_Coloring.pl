% Map Coloring Problem

color(red).
color(green).
color(blue).

% Adjacent regions must have different colors
different(X,Y) :-
    X \= Y.

% Map Coloring
coloring(A,B,C,D) :-
    color(A),
    color(B),
    color(C),
    color(D),

    different(A,B),
    different(A,C),
    different(B,C),
    different(B,D),
    different(C,D).