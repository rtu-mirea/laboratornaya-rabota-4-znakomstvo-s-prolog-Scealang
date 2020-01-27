predicates
	male(String)
	female(String)
	parent(String, String)
	ancestor(String, String)
	brother(String, String)
	sister(String, String)
	grandfather(String, String)
	grandmother(String, String)
	uncle(String, String)
	can_buy(String, String)
	likes(String, String)
	for_sale(String)
	person(String)
	dog(String)
	owner(String,String)
	haveDog(String,String)
	
clauses
	/*Task 1*/
	parent("Tan", "Alex").
	parent("Juriy", "Tan").
	parent("Tan", "Egor").
	parent("Luba", "Tan").
	parent("Juriy", "Ann").
	parent("Ann","Greg").
	parent("Ann", "Matew").
	male("Alex").
	male("Matew").
	male("Juriy").
	male("Egor").
	male("Greg").
	female("Ann").
	female("Tan").
	female("Luba").
	brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X<>Y.
	sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X<>Y.
	grandfather(X,Y):-parent(X,Z),parent(Z,Y),male(X),X<>Y.
	grandmother(X,Y):-parent(X,Z),parent(Z,Y),female(X),X<>Y.
	ancestor(X,Z):-parent(X,Z),X<>Z.
	uncle(X,Y):-parent(Z,Y),brother(X,Z),male(X),X<>Y.
	
	/*Task 2*/
	person("Alex").
	likes("Alex", "Banana").
	for_sale("Banana").
	can_buy(X, Y) :-
		likes(X, Y),
		for_sale(Y),
		person(X).
		
	/*Task 3*/
	dog("Bobik").
	owner("Alex", "Bobik").
	haveDog(X,Y):-
		dog(Y),
		owner(X, Y).
			
	goal
	%brother("Alex","Egor").
	%can_buy("Alex","Banana").
	haveDog("Alex", "Bobik").