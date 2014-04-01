% Implemtieren von Verwandschaftsbeziehungen
% Alle Teilnehmer: Erste Hierarchie
[load].
weiblich(susi).
weiblich(hannelore).
weiblich(siglinde).
maennlich(stefan).
maennlich(hans).
maennlich(olaf).

% X ist von Y Beziehung (mutter(X,Y))
mutter(siglinde,susi).																			
mutter(siglinde,stefan).
mutter(siglinde,johanna).
mutter(hannelore,siglinde).																		
mutter(hannelore,stefi).																		
vater(olaf,susi). 																				
vater(olaf,sabrina).																			
vater(olaf,stefan). 																			
vater(hans,olaf). 																				
vater(hans,stefi).																				
ehemann(rolf,sabrina).																			

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
halb_geschwister(X,Y):- vater(Z,X),vater(Z,Y),mutter(K,X),mutter(G,Y).
% X und Y sind halbgeschister
halb_geschwister(X,Y):- vater(Z,X),vater(J,Y),mutter(K,X),mutter(K,Y).
% X ist schwester von
schwester(X,Y):- weiblich(X),geschwister(X,Y).																	
% X ist Tante von Y
tante(X,Y):- weiblich(X),eltern(Z,Y),geschwister(Z,X).					
% X ist Onkel von Y
onkel(X,Y):- maennlich(X),eltern(Z,Y),geschwister(Z,X).
% X ist Cousin von Y
cousin(X,Y):- eltern(Z,Y),eltern(J,X),geschwister(Z,J). 											
% X ist Schwager von Y
schwager(X,Y):- geschwister(Z,Y),ehemann(X,Z).													