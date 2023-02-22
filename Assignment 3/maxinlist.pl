max_in_list(num,List,Max) :- max_list(List,Max).


Output:-
?-max_in_list(num,[1,2,3,4,5],Max).
Max = 5
