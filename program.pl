%facts
likes(aditya,payal).
likes(atmaj,swara).
likes(payal,pavan).
%rules
relationship(X,Y):-
    likes(X,Y);
    likes(Y,X).

