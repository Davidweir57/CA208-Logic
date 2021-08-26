/* Prolog Lab Exam A */

parent(carol, paul). 
parent(carol, jane). 
parent(harry, tom). 
parent(harry, mary). 
parent(jim, tom). 
parent(jim, mary). 
parent(ann, tom). 
parent(ann, mary). 
parent(tim, harry). 
parent(tim, carol). 
parent(george, harry). 
parent(george, carol). 
parent(jenny, harry). 
parent(jenny, carol). 
parent(david, jim). 
parent(david joan). 
parent(kate, jim). 
parent(kate joan). 
parent(susan, dominic). 
parent(susan ann). 

male(paul). 
male(tom). 
male(harry). 
male(jim). 
male(dominic).
male(tim). 
male(george). 
male(david).
 
female(jane). 
female(mary). 
female(carol). 
female(joan). 
female(ann). 
female(jenny). 
female(kate). 
female(susan). 

/* Question 1 */

father(X, Y) :- parent(X, Y), male(X), X \== Y.

brother(X, Y) :- male(X), father(Z, X), father(Z, Y), X \== Y.

uncle(X,Y) :- parent(Z,Y), brother(X,Z), Z \== X.

/* Question 2 */

cousin(X,Y) :- parent(Z,X), parent(W,Y), sibling(Z,W).

mother(X, Y) :- parent(X, Y), female(X), X \== Y.

grandmother(X, Y) :- mother(X, Z), mother(Z, Y).

/* Question 3 */

sum([], 0).
sum([H|T], N):- sum(T, X), N is X + H. 

minimum(X, [X]).
minimum(X, [X|L]) :- minimum(Y, L), X < Y.
minimum(Y, [X|L]) :- minimum(Y, L), X =< Y.





