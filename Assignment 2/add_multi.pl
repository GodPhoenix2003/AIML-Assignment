go:-
    write("Enter the first number:"),read(A),nl,
    write("Enter the second number:"),read(B),nl,
    add_multi(A,B).
add_multi(A,B):-
    S is A+B,
    M is A*B,
    write("Sum="),write(S),nl,
    write("Product="),write(M).


Output:-
?-go.
Enter the first number: 5
Enter the second number: 6
Sum = 11
Product = 30
true.
