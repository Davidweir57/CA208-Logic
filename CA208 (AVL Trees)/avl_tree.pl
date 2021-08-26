/* CA208 Assignment 2 */

empty :- nil.

/* true if N is the root of a binary tree with left subtree T1 and right subtree T2, where all the items in T1 are less than or equal to N and all the items in T2 are greater than N. */

bt(N, nil, nil) :- N \== nil.

bt(N, bt(LN, LL, RR), nil) :- 
	N \== nil,
	N >= LN,
	bt(LN,LL,LR),!.
	
bt(N, nil, bt(RN,RL,RR)):-
  N \== nil,
  N < RN,
  bt(RN,RL,RR),!.

bt(N, bt(LN,LL,LR), bt(RN,RL,RR)):-
  N \== nil,
  N >= LN,
  N < RN,
  bt(LN,LL,LR),
  bt(RN,RL,RR),!.
  
/* true if T2 is the AVL tree resulting from I being inserted into an AVL tree T1. */
	
insert(X,nil,bt(X,nil,nil)).

insert(X,bt(Y,L,R),bt(Y,L1,R)) :-
   X =< Y,
   insert(X,L,L1).
insert(X,bt(Y,L,R),bt(Y,L,R1)) :-
   insert(X,R,R1).
   
/* always true prints the AVL tree to the display. */

display(bt(X,L,R)) :-
    write(X),
    write(" "),
	(display(L);
    display(R)).

	
