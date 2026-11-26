%% Your code here

% Moves blocks into gray areas in a straight line
{target(X1,Y1, X2,Y2) : area(X2,Y2,A)} = 1 :- number(X1,Y1,NUM).
:- target(X1,Y1,X2,Y2), X1 != X2, Y1 != Y2.
:- target(X,Y,X,Y).

% Moves one block to each gray area block
isOccupied(A) :- target(X1,Y1,X2,Y2), area(X2,Y2,A).
:- area(X,Y,A), not isOccupied(A).

#show target/4.