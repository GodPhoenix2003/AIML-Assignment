female(pam).
female(liz).
female(pat).
female(ann).
male(jim).
male(bob).
male(peter).
male(tom).
male(brad).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(tom,brad).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(bob,peter).
parent(peter,jim).
mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
haschild(X):-parent(X,_).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
uncle(X,Y):-parent(Z,Y),brother(X,Z).
grandmother(X,Y):-mother(X,Z),parent(Z,Y).


Output:-
?-parent(pam,bob).
true.
?-father(tom,bob).
true.
?-haschild(pam).
true.
?-sister(liz, brad).
true.
?-brother(brad,ann).
true.
?-uncle(brad,ann).
true.
?-grandmother(pam,ann).
true.
