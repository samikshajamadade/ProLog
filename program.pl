%Facts
likes(Aditya,Payal).
likes(Atmaj,Swara).
likes(Payal,Pavan).
%Rules
Relationship(X,Y):-
    likes(X,Y);
    likes(Y,X).

