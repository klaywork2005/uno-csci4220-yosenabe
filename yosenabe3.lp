%% Your code here

% Moves blocks into gray areas in a straight line
{target(X1,Y1, X2,Y2) : area(X2,Y2,A)} = 1 :- number(X1,Y1,NUM).
:- target(X1,Y1,X2,Y2), X1 != X2, Y1 != Y2.
:- target(X,Y,X,Y).

% Moves one block to each gray area block
isOccupied(A) :- target(X1,Y1,X2,Y2), area(X2,Y2,A).
:- area(X,Y,A), not isOccupied(A).

% rejects solution if two blocks with different starting positions pass through cell (X,Y). 

% Cells used by a horizontal move
path(X1,Y,X,Y) :- target(X1,Y,X2,Y), X = X1..X2.
path(X1,Y,X,Y) :- target(X1,Y,X2,Y), X = X2..X1.

% Cells used by a vertical move
path(X,Y1,X,Y) :- target(X,Y1,X,Y2), Y = Y1..Y2.
path(X,Y1,X,Y) :- target(X,Y1,X,Y2), Y = Y2..Y1.

% Repeating X,Y in both path atoms makes them refer to the same cell
:- path(X1,Y1,X,Y), path(X2,Y2,X,Y), (X1,Y1) != (X2,Y2).
#show target/4.