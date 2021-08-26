split([], [], []).

split([HP | TL], [HP | TP], N) :-
  HP >= 0, !,
  split(TL, TP, N).

split([HN | TL], P, [HN | TN]) :-
  HN < 0, !,
  split(TL, P, TN).
  
even([], []).
even([Head | Tail], Sum) :-
    not(0 is Head mod 2),
    !,
    even(Tail, Sum).
even([Head | Tail], [Head | Sum]) :-  
    even(Tail, Sum).
	
remove_even([],[]).
remove_even([El|T], NewT)   :- El mod 2 =:= 0, remove_even(T, NewT).
remove_even([H|T1], [H|T2]) :- H  mod 2 =\= 0, remove_even(T1, T2).

sumsq([], 0).
sumsq([Head | Tail], Sum) :-
    sumsq(Tail, Tail_Sum),
    Sum is Head * Head + Tail_Sum.
	
sumsqe(List, Sum) :-
    even(List, Even_List),
    sumsq(Even_List, Sum).
	
list_length(Xs,L) :- list_length(Xs,0,L) .

list_length( []     , L , L ) .
list_length( [_|Xs] , T , L ) :-
  T1 is T+1 ,
  list_length(Xs,T1,L).
  
length_1(0,[]).
length_1(L+1, [H|T]) :- length_1(L,T), L is X.


%rules
merge(A, B, X):- 
    merge(A, B, B, X).

merge([], X, _, X).
merge([Head|L1], [Head|L2], Tmp, [Head|X]) :-
    merge(L1, L2, Tmp, X),
    !.
merge(L1, [_|L2], Tmp, X) :-
    merge(L1, L2, Tmp, X),
    !.
merge([A|L1], [], Tmp, [A|X]) :-
    merge(L1, Tmp, Tmp, X),
    !.

sum([], 0).
sum([H|T], N):- sum(T, X), N is X + H. 

minimum(X, [X]).
minimum(X, [X|L]) :- minimum(Y, L), X < Y.
minimum(Y, [X|L]) :- minimum(Y, L), X =< Y.

max(X, [X]).
max(Y, [X|L]) :- max(Y, L), Y >= X.
max(X, [X|L]) :- max(Y, L), X > Y.


max_l([X],X).
max_l([X|Xs], M):- max_l(Xs, M), M >= X.
max_l([X|Xs], X):- max_l(Xs, M), X >  M.

len([], LenResult):-
    LenResult is 0.

len([X|Y], LenResult):-
    len(Y, L),
    LenResult is L + 1.
