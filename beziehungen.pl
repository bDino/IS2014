% Implemtieren von Verwandschaftsbeziehungen
% Alle Teilnehmer:
/*

Oma/Opa: 					Mia und Rolf
						
Eltern:      Eva und Thomas			Elsbeth und Wolfang
										
Kinder:		Klaas | Ronja			Jenzel | Ulf | Katrin | Frauke
*/

weiblich(mia).
weiblich(eva).
weiblich(elsbeth).
weiblich(katrin).
weiblich(frauke).
weiblich(ronja).
maennlich(rolf).
maennlich(thomas).
maennlich(klaas).
maennlich(wolfgang).
maennlich(jenzel).
maennlich(ulf).

% X ist von Y Beziehung (mutter(X,Y))
mutter(mia,eva).																			
mutter(mia,elsbeth).
mutter(eva,klaas).
mutter(eva,ronja).																		
mutter(elsbeth,jenzel).
mutter(elsbeth,ulf).
mutter(elsbeth,katrin).
mutter(elsbeth,frauke).
vater(rolf,eva). 																				
vater(rolf,elsbeth).																			
vater(thomas,ronja).
vater(thomas,klaas). 																			
vater(wolfgang,jenzel). 																				
vater(wolfgang,ulf).																				
vater(wolfgang,katrin).																				
vater(wolfgang,frauke).

ehe(mia,rolf).
ehe(eva,thomas).
ehe(elsbeth,wolfgang).																				
ehe(X,Y):- ehe(Y,X).

% Beziehungen exemplarisch
% X ist Elternteil von Y
eltern(X,Y):- vater(X,Y);mutter(X,Y).				
% X ist Opa von Y
opa(X,Y):- vater(X,Z),vater(Z,Y).
% X ist Opa von Y
oma(X,Y):- mutter(X,Z),mutter(Z,Y).
% X und Y geschwister
geschwister(X,Y):- vater(Z,X),vater(Z,Y),mutter(J,X),mutter(J,Y).
% X und Y sind halbgeschwister
halb_geschwister(X,Y):- vater(Z,X),vater(Z,Y),mutter(_,X),mutter(_,Y).
% X und Y sind halbgeschister
halb_geschwister(X,Y):- vater(_,X),vater(_,Y),mutter(K,X),mutter(K,Y).
% X ist schwester von
schwester(X,Y):- weiblich(X),geschwister(X,Y).																	
% X ist Tante von Y
tante(X,Y):- weiblich(X), ((eltern(Z, Y), geschwister(X, Z)) ; (eltern(Z, Y), geschwister(Z, C), ehe(X, C))), not(eltern(X,Y)).				
% X ist Onkel von Y
onkel(X,Y):- maennlich(X), eltern(Z, Y), geschwister(X, Z), not(eltern(X,Y)).
onkel(X,Y):- eltern(Z,Y),geschwister(Z, C),ehe(C,Z), not(eltern(X,Y)).	
% X ist Cousin von Y
cousin(X,Y):- eltern(Z,Y),eltern(J,X),geschwister(Z,J),not(geschwister(X,Y)).	 											
% X ist Schwager von Y
schwager(X,Y):- maennlich(X),geschwister(Z,Y),ehe(Z,X),not(ehe(X,Y)).													
