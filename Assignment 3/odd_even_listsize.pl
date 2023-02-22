even_length([]).
even_length([_,_|Tail]) :- even_length(Tail).

odd_length([_|Tail]) :- even_length(Tail).

is_even(List) :- even_length(List).
is_odd(List) :- odd_length(List).


Output:-
?-is_even([a,b,c,d]).
true.
?-is_odd([a,b,c,d,e)].
true.
