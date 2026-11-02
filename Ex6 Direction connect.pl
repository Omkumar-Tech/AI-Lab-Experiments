% direct connect
road(delhi,agra).
road(agra,gwalior).
road(gwalior,bhopal).
road(delhi,jaipur).
road(jaipur,ajmer).


% route recom.
travel(X,Y):-
    road(X,Y).


% indirect route
travel(X,Y):-
    road(X,Z),
    travel(Z,Y).