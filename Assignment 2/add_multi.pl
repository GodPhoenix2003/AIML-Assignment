go:-
    write("Enter the first number:"),read(A),nl,
    write("Enter the second number:"),read(B),nl,
    add_multi(A,B).
add_multi(A,B):-
    S is A+B,
    M is A*B,
    write("Sum="),write(S),nl,
    write("Product="),write(M).
