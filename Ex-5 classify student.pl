% Student Marks Knowledge Base

% Facts
marks(rahul, 95).
marks(amit, 75).
marks(rohit, 45).
marks(ankit, 88).
marks(sumit, 30).

% Rules

% Topper
topper(X) :-
    marks(X, M),
    M >= 85.

% Average Performer
average(X) :-
    marks(X, M),
    M >= 50,
    M < 85.

% Failed Student
failed(X) :-
    marks(X, M),
    M < 50.