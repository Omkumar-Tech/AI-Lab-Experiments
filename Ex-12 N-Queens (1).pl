% N Queens Problem

safe([], _).
safe([Q|T], N) :-
    between(1, N, Q),
    safe(T, N),
    no_attack(Q, T, 1).

no_attack(_, [], _).
no_attack(Q, [H|T], D) :-
    Q =\= H,
    abs(Q-H) =\= D,
    D1 is D+1,
    no_attack(Q, T, D1).

queens(N, Q) :-
    length(Q, N),
    safe(Q, N).