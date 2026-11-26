%% Your code here

{target(X1,Y1, X2,Y2) : area(X2,Y2,A)} = 1 :- number(X1,Y1,NUM).
:- target(X1,Y1,X2,Y2), X1 != X2, Y1 != Y2.
:- target(X,Y,X,Y).

#show target/4.