person(ram,15,football,dog).
person(mohan,11,volleyball,cat).
person(sohan,25,card,cow).
person(mahesh,30,swimming,dog).
person(ravindra,11,football,goat).
person(rakesh,25,volleyball,cat).
person(rajeev,15,swimming,dog).
person(raju,30,swimming,dog).
person(jaichand,40,football,cow).
person(vijay,30,volleyball,cat).
displayNameAge(Name,Age):-person(Name,Age,Hobby,Pet).
displayNameHobby(Name,Hobby):-person(Name,Age,Hobby,Pet).
isChild(X):-displayNameAge(X,Age), Age <= 15.
countLessThan15(Count):- aggregate_all(count, isChild(X) , Count).
likePersons(X,Y):-person(X,Age1,Hobby,Pet1),person(Y,Age2,Hobby,Pet2),not(X=Y),not(Age1=Age2).