inroom(monkey).
inroom(banana).
inroom(chair).
inroom(stick).
strong(monkey).
reachable(stick).
reachable(chair).
climbable(chair).
grabbable(stick).
high(banana).
dexterous(monkey).
grab(monkey).
canPush(X,Y) :- strong(X), inroom(Y), not(X=Y).
canGrab(X,Y) :- dexterous(X), grab(X), inroom(Y),grabbable(Y).
canClimb(X,Y) :- canPush(X,Y), dexterous(X), not(X=Y),reachable(Y),climbable(Y).
canGetBanana(X,Y) :- canClimb(X,Z),canGrab(X,W),not(Z=W),inroom(Y),not(X=Y),high(Y).