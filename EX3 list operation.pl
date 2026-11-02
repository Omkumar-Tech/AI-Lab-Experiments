mylist([1,2,3,4,5]).
list_ht([Head|Tail],Head,Tail).
list_h([Head|_],Head).


search(N):-
    mylist(X),
    member(N,X).

length_list(X,N):-
    length(X,N).

append([],L,L).
append([H|T],L,[H|R]):-
    append(T,L,R).




reverse([],[]).
reverse([H|T],R):-
    reverse(T,R1),
    append(R1,[H],R).
    