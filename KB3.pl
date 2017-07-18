parent(anthony,harry).
parent(mary,hazel).
male(anthony).
male(tom).
male(harry).
female(mary).
female(hazel).
marries(anthony,mary).
marries(hazel,tom).
married(X,Y):- marries(Y,X); marries(X,Y).
sibling(X,Y):- parent(A,X), parent(B,Y), not(X=Y), married(A,B).
father(X,Y):- parent(X,Y), male(X); married(A,X), parent(A,Y), male(X).
mother(X,Y):- parent(X,Y), female(X); married(A,X), parent(A,Y), female(X).
sister(X,Y):- sibling(X,Y), female(X).
brother(X,Y):- sibling(X,Y), male(X).
