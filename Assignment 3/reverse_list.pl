reverse([], Y, R) :-
    R = Y.
reverse([H|T] , Y, R) :-
    reverse(T, [H|Y], R).


Output:-
?-reverse([1,2,3,4,5],[],R).
R = [5,4,3,2,1].
