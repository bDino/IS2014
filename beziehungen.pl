% Implemtieren von Verwandschaftsbeziehungen
% Alle Teilnehmer: Erste Hierarchie
[load].
weiblich(susi).
weiblich(hannelore).
weiblich(siglinde).
maennlich(stefan).
maennlich(hans).
maennlich(olaf).

mutter(siglinde,susi).																			% Siglinde ist Susis Mutter
mutter(siglinde,stefan).																		% Siglinde ist Stefans Mutter
mutter(siglinde,johanna). 																		% Sigline ist Johanns Mutter
mutter(hannelore,siglinde).																		% Hannelore ist Siglindes Mutter
mutter(hannelore,stefi).																		% Hannelore ist Stefis Mutter
vater(olaf,susi). 																				% Olaf ist Susis Vater
vater(olaf,sabrina).																			% Olaf ist Sabrinas Vater
vater(olaf,stefan). 																			% Olaf ist Stefans Vater
vater(hans,olaf). 																				% Hans ist Olafs Vater
vater(hans,stefi).																				% Hans ist Stefis Vater	
ehemann(rolf,sabrina).																			% Rolf ist Sabrinas Mann

% Beziehungen exemplarisch

eltern(X,Y):- vater(X,Y);mutter(X,Y). 															% X ist Elternteil von Y				
opa(X,Y):- vater(X,Z),vater(Z,Y).																			% X ist Opa von Y
oma(X,Y):- mutter(X,siglinde).																	% X ist Opa von Y
geschwister(X,Y):- vater(Z,X),vater(Z,Y),mutter(Z,X),mutter(Z,Y).								% X und Y geschwister
halb_schwester(X,Y):- weiblich(X),vater(Z,X),vater(Z,Y);weiblich(X),mutter(Z,X),mutter(Z,Y).	% X ist halbschwester von				
schwester(X,Y):- weiblich(X),geschwister(X,Y).													% X ist schwester von				
tante(X,Y):- weiblich(X),geschwister(eltern(Y,Z));(geschwister(eltern(Y,Z))).					% X ist Tante von Y
onkel(X,Y):- maennlich(X),geschwister(eltern(Y,Z));(geschwister(eltern(Y,Z))).					% X ist Onkel von Y
cousin(X,Y):- geschwister(eltern(Y,Z),eltern(X,Z)). 											% X ist Cousin von Y
schwager(X,Y):- geschwister(Z,Y),ehemann(X,Z).													% X ist Schwager von Y