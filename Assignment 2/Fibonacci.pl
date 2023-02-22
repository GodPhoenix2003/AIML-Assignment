go:-
    write("Enter a number:"),read(N),nl,
    write("Fibonacci series for "),write(N),write(" elements is:"),nl,
    A is 0,
    B is 1,
    write(A),write(","),write(B),write(","),

    fibo(N,A,B).

fibo(N,A,B):-
    (

        N<2, write("Complete");

        C is A+B,
        write(C),write(","),
        D is B,
        E is C,
        N1 is N-1,
        fibo(N1,D,E)
     ).

