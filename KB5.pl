mem(X,[Y|T]):- X=Y; mem(X,T).
appendList([X|Y],Z,[X|W]) :- appendList(Y,Z,W).  
appendList([],X,X).